<?php
  include("dbcon.php");	
  $town = $_GET[town];
  $brgy = $_GET[brgy];  
  $selyear = $_GET[selyear];
//	$sql1="Select F.* FROM `tblfishers` as F ";
//	$sql1.=" WHERE F.`town` = '$town' AND F.`brgy` = '$brgy'  order by `Gender`, F.`lastname` ";

	
	// columns for part time status
	if ($brgy!='All'){
		$q1 = " SELECT  `tblfishers`.* , `tbllicense`.*	FROM `tblfishers` ";
		$q1.= "LEFT  JOIN  `tbllicense`  ON `tblfishers`.FishersID=`tbllicense`.FishersID   AND `tbllicense`.foryear='$selyear' AND `tbllicense`.permittype='fisher'";
		$q1.= " WHERE `tblfishers`.town='$town' AND `tblfishers`.brgy='$brgy'  ";
		$q1.= " order by `tblfishers`.lastname, `tblfishers`.Gender,  `tblfishers`.FishersID ";

		$q2="SELECT F.*, V.fishersID, count(V.fishersID) as violate "; 
		$q2.=" FROM `tblfishers` as F, `tblviolation` as V "; 
		$q2.=" WHERE `town`='$town' AND F.FishersID=V.fishersID and brgy='$brgy' "; 
		$q2.=" group by V.fishersID order by F.lastname, F.Gender, F.FishersID   ";	
	}else{
		$q1 = " SELECT  `tblfishers`.* , `tbllicense`.*	FROM `tblfishers` ";
		$q1.= "LEFT  JOIN  `tbllicense`  ON `tblfishers`.FishersID=`tbllicense`.FishersID   AND `tbllicense`.foryear='$selyear' AND `tbllicense`.permittype='fisher'";
		$q1.= " WHERE `tblfishers`.town='$town'  ";
		$q1.= " order by `tblfishers`.brgy, `tblfishers`.lastname, `tblfishers`.Gender,  `tblfishers`.FishersID ";

		$q2="SELECT F.*, V.fishersID, count(V.fishersID) as violate "; 
		$q2.=" FROM `tblfishers` as F, `tblviolation` as V "; 
		$q2.=" WHERE `town`='$town' AND F.FishersID=V.fishersID"; 
		$q2.=" group by V.fishersID order by brgy, F.lastname, F.Gender, F.FishersID   ";	

	}
	$rs1 = mysql_query($q1,$conn);	
	$line = "";

		$rs2 = mysql_query($q2,$conn);
		//$count = mysql_num_rows($rs2);
		$R2 = mysql_fetch_assoc($rs2); 	// Violation list

	while($R1 = mysql_fetch_assoc($rs1)){
		$fname=$R1['firstname'];
		$mname=$R1['middlename'];
		$lname=$R1['lastname'];
		$fullname1 = $lname.", ".$fname." ".$mname;
		$header = "Fisher ID \t"." Fishers Name \t". "Barangay \t". "town \t". "Sex \t". "Status \t"."Issued Date \t"."Expiry Date \t"."Amount Paid \t". "PCIC \t";
		$header .= "Renewed YEAR \t"."Violation \t";

		$line .= $R1['fishRid']."\t".$fullname1."\t". $R1['brgy']."\t".$R1['town']."\t".$R1['Gender']."\t".$R1['fstatus']."\t".$R1['issuedate']."\t".$R1['expirydate']."\t".$R1['amountpaid'] ;
		$line .= "\t".$R1['pcic']."\t".$R1['foryear']."\t" ;
		
		if($R2['fishersID']==$R1['FishersID']){
			$line .= $R2['violate']."\t";
			$R2 = mysql_fetch_assoc($rs2);
		}
		
		$line .= "\n";	
		$fname = "filename=fishers_".$brgy."_".$town."_".$selyear.".xls";
	}
		
		$fname = str_replace (" " ,"", $fname);
	//$header = $numrows;	
	
	
		

  $data .= $line."\n";

# this line is needed because returns embedded in the data have "\r"
# and this looks like a "box character" in Excel
  $data = str_replace("\r", "", $data);


# Nice to let someone know that the search came up empty.
# Otherwise only the column name headers will be output to Excel.
if ($data == "") {
  $data = "\nno matching records found\n";
}

# This line will stream the file to the user rather than spray it across the screen
header("Content-type: application/octet-stream");

# replace excelfile.xls with whatever you want the filename to default to
header("Content-Disposition: attachment; ". $fname);
header("Pragma: no-cache");
header("Expires: 0");

echo $header."\n".$data;
?> 