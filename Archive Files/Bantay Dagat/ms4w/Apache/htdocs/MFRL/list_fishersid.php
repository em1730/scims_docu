<?php
  include("dbcon.php");	
  $town = "Tudela";
  $brgy = $_GET[brgy];  
  $selyear = $_GET[selyear];
	$sql1="Select F.*, L.* FROM `tblfishers` as F, `tbllicense` as L ";
	$sql1.=" WHERE F.`FishersID` = L.`FishersID` AND  L.`permittype` ='fisher'  ";  
	$sql1.=" AND F.`town` = '$town' AND F.`brgy` = '$brgy' AND L.foryear = '$selyear' order by F.`lastname` ";
	$rs1 = mysql_query($sql1,$conn);
	
	$line = "";
		$folder1 = "/MFRL/members/";
		$folder2 = "/MFRL/qrcodes/";
	while($R1 = mysql_fetch_assoc($rs1)){
		$fname=$R1['firstname'];
		$mname=$R1['middlename'];
		$lname=$R1['lastname'];
		$fullname1 = $lname.", ".$fname." ".$mname;
		$fullname1 = strtoupper($fullname1);
		$ddate=date_create($R1['BDate']);
		$bbdate= date_format($ddate ,"M d, Y");
		$bbrgy= strtoupper($R1['brgy']);
		$header = "fullname \t"." brgy \t". "bdate \t". "fid \t". "econtact \t"."pic \t". "qrcode\t";



		$line .= $fullname1."\t".$bbrgy."\t".$bbdate."\t".$R1['fishRid']."\t"  ;
		$line .= $R1['eName']."-".$R1['eContact']."\t". $folder1.$R1['pictureFile']."\t".$folder2.$town."_".$fullname1.".png"."\t" ;
		
		$line .= "\n";	
		$fname = "filename=".$brgy."_".$town."_".$selyear."_ids.xls";
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