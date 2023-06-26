<?php
  include("dbcon.php");	
  $town = $_GET[town];
  $brgy = $_GET[brgy];  
  $selyear = $_GET[selyear];
	
	if ($brgy != 'All'){
		$sql1  =" select F.*,G.*   ";
		$sql1 .=" from tblfishers as F, tblgears as G ";
		$sql1 .=" where  F.FishersID = G.fisherid   ";
		$sql1 .=" AND G.year='$selyear' AND F.town='$town' AND F.brgy='$brgy'"; 
		$sql1 .=" GROUP BY G.fisherid  order by F.lastname";
	}else{
		$sql1  =" select F.*,G.*   ";
		$sql1 .=" from tblfishers as F, tblgears as G ";
		$sql1 .=" where  F.FishersID = G.fisherid   ";
		$sql1 .=" AND G.year='$selyear' AND F.town='$town' "; 
		$sql1 .=" GROUP BY G.fisherid order by F.brgy,F.lastname  ";
	}
	
	$rs1 = mysql_query($sql1,$conn);	
	
	$line = "";

	while($R1 = mysql_fetch_assoc($rs1)){

		$fname=$R1['firstname'];
		$mname=$R1['middlename'];
		$lname=$R1['lastname'];
		$fullname1 = $fname." ".$mname." ".$lname;
		$header = "Fisher ID \t"." Fishers Name \t". "Barangay \t". "town \t". "Sex \t". "YEAR \t";
		$header.= "Gill Nets \t"."Hook & Line\t";
		$header.= "Seine\t"."Lift Nets\t";
		$header.= "Trawl\t"."Scoop Nets\t";
		$header.= "Culture\t"."Others\t";
		$header.= "Total Amount \t";

//		$line .= $R1['fishRid']."\t".$fullname1."\t". $R1['brgy']."\t".$R1['town']."\t".$R1['Gender']."\t".$R1['year']."\t";
		$line .= $R1['fisherid']."\t".$fullname1."\t". $R1['brgy']."\t".$R1['town']."\t".$R1['Gender']."\t".$R1['year']."\t";

		$tot=0;
		$fid = $R1['fisherid'];
		
		$sql2  =" select G.geartype, G.year, G.detail1 as D1, G.detail2 as D2, G.detail3 as D3, G.detail4 as D4, G.detail5 as D5 , sum(G.fee) as fee   ";
		$sql2 .=" from tblgears as G ";
		$sql2 .=" where  G.fisherid ='$fid'  ";
		$sql2 .=" AND G.year='$selyear' "; 
		$sql2 .=" GROUP by G.geartype  ";
		
		$rs2 = mysql_query($sql2,$conn);	
		$R2 = mysql_fetch_assoc($rs2);
		for ($c=1;$c<=8;$c++) {
 			 if (substr($R2['geartype'],0,1) == $c){
		 		$line .= number_format($R2['fee'],0)."\t";
				$tot += $R2['fee'];
			 	$R2 = mysql_fetch_assoc($rs2);

		 	}else{
		 		$line .= "x"."\t";
			}
		}
		$line .= number_format($tot,1)."\t" ;
		$line .= "\n";	
	}
	$fname = "filename=gears_".$brgy."_".$town."_".$selyear.".xls";
		
		$fname = str_replace (" " ,"", $fname);
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