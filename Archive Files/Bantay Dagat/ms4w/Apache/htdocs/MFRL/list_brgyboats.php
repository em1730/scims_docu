<?php
  include("dbcon.php");	
  $town = $_GET[town];
  $brgy = $_GET[brgy];  
  $selyear = $_GET[selyear];

  	if ($brgy !='All' ){		
		$q2 = " SELECT F.*, B.*, L.*  FROM tblfishers as F, tblboat as B ";
		$q2.= " LEFT  JOIN  `tbllicense` as L  ON B.boatID=L.FishersID ";
		$q2.= " WHERE F.FishersID = B.fishersID   ";
		$q2.= " AND F.town='$town' AND F.brgy='$brgy' ";
		$q1.= " Order by firstname ";
	}else {
		$q2 = " SELECT F.*, B.*, L.*  FROM tblfishers as F, tblboat as B ";
		$q2.= " LEFT  JOIN  `tbllicense` as L  ON B.boatID=L.FishersID ";
		$q2.= " WHERE F.FishersID = B.fishersID   ";
		$q2.= " AND F.town='$town' ";
		$q1.= " Order by brgy,  lastname ";
	
	}	
	

	$rs2 = mysql_query($q2,$conn);

	$line = "";

	while($R2 = mysql_fetch_assoc($rs2)){
		$fname=$R2['firstname'];
		$mname=$R2['middlename'];
		$lname=$R2['lastname'];	
		$fullname1 = $fname." ".$mname." ".$lname;		
		$header = " Owner Name \t". "Town \t". "Barangay \t". "MFVR \t". "Boat Name \t"."Registered \t"."Boat Type \t". "Boat Make \t";
		$header .= "Engine 1(HP) \t"."Length(M) \t"."Breadth(M) \t"."Depth(M) \t"."Tonnage \t"."Amount Paid \t";
		
		$line .= $fullname1."\t". $R2['town']."\t".$R2['brgy']."\t".$R2['mfvrno']."\t".$R2['boatname']."\t".$R2['foryear']."\t".$R2['boattype']."\t".$R2['make'] ;
		$line .= "\t".$R2['enginebrand1']."-(".$R2['enginehp1']." hp)\t".$R2['tonlength']."\t".$R2['tonbreadth']."\t".$R2['tondepth']."\t".$R2['tonnage']."\t".$R2['amountpaid']."\t" ;
	
		
		$line .= "\n";	
		
	}		

		$fname = "filename=boats_".$brgy."_".$town."_".$selyear.".xls";
	
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