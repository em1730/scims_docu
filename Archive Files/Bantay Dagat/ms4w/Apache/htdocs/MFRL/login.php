<?php
	session_start();
	include("dbcon.php");

	$_SESSION['logged']='out';    
	$login = $_POST['login'];
	$logpin = $_POST['logpin'];
	$act = '';
	$mess = '';
	$ac = $_GET['ac'];
	// New code for pull down list of munitipality
	
	$q1 ="select tbluser.* from tbluser where `loginname` ='$login' ";
	$q2 ="select tbluser.* from tbluser where `pin` ='$logpin' && `loginname` ='$login'  ";
	$qry1 = mysql_query($q1,$conn);
	if ($r1 = mysql_fetch_assoc($qry1)) {
		$qry2 = mysql_query($q2,$conn);
		if ($r2 = mysql_fetch_assoc($qry2)) {
			$_SESSION['logged']='in'; 
			$_SESSION['user']=$r2['type'];;
			header("Location: index1.php?action=load");	
		}else {
		$mess = 'Log in failed!!';
		}
		
	}else if ($login=='admin' && $logpin=='999999') {
		$act = 'initialize';
		//$action ='create';	
	}
	if ($ac == 'create') {
		mysql_query("INSERT INTO `tbluser` (`uid`, `loginname`, `pin`, `organization`,`type`) VALUES ('MFRL01', 'admin', '$_POST[pin1]','LGU','admin')");
		mysql_query("INSERT INTO `tbluser` (`uid`, `loginname`, `pin`, `organization`,`type`) VALUES ('MFRL02', 'encoder', '$_POST[pin2]','LGU','encoder')");
		header("Location: login.php");	
	}

	 	      
?>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Municipal Fisheries Registration and Permit</title>
<link rel="stylesheet" href="example-print.css" TYPE="text/css" MEDIA="print" />
<link rel="stylesheet" href="MFRLstyles1.css" TYPE="text/css" MEDIA="screen" />
<!-- Load the tabber code -->
<style type="text/css">
	.entrystyle1 { 
		font-weight:bold;
		border:1px solid #45F;
		font-size:12px;
		height:18px;
		width:100px;
		text-align:left;
			
		}
	.entrystyle2 { 
		font-weight:bold;
		border:1px solid #45F;
		font-size:12px;
		height:18px;
		width:60px;
		text-align:left;
			
		}				
		</style>
<script type="text/javascript">
//***** for loading drop box
	function loadcenter($var2){						
 		document.getElementById('login').value = $var2;
		
	}
	function testit(pass) {
		var valid = "1234567890"
		var k = "y";
		var temp;
		for (var i=0; i<pass.value.length; i++) {
			temp = "" + pass.value.substring(i, i+1);
			if (valid.indexOf(temp) == "-1") {
				k = "n";
			}
		}
		if (k == "n" || pass.value.length >6) {
			alert("6 numeric password!");
			pass.focus();
			pass.select();
		}
		if(pass.value.length == 6) {
				
				pass.focus();
		}
	
	}	
</script>		
</head> 

<body  style='font: 11px arial, sans-serif;' onload="loadcenter('<? echo $login; ?>');" >
<?//echo $login . "-".$logpin. "/". $_SESSION['logged']; ?>

<form name="frmlogin" method="post" action="login.php">
    	<? if ($act == '') {?>
	<div  id='container3' style='border: 1px solid #45F;' >
    <table  width="100%" border="0" cellspacing="1" cellpadding="0">
    <tr > 
	<td width='45%' class='tabler3' align='right'  >
    	Login:
	</td>
	<td width='55%' class='tabler1'> 
		<select  id='login' name='login' style='width:80px;background-color:#EEF;'   >
		<option value='admin' >Admin</option>
		<option value='encoder' >Encoder</option>
		</select>
	</td>
	</tr>
    <tr > 
	<td class='tabler3' align='right' >
    	Password:
	</td >
	<td class='tabler1'> 
		<input class='entrystyle2' onkeyup="testit(this);" pattern="[0-9]{6}" type='text' id='logpin' name='logpin' value = '<?echo $logpin;?>' > 6 numeric
	</td>
	</tr>
    <tr > 
	<td colspan='2' align='center' >
	</td>
	</tr>
	<tr>
	<td colspan='2' style='color:#FF0000;text-align:center'> 
	<?
		echo $mess;
	?>
	</tr>
	
    <tr > 
	<td colspan='2' align='center' >
    	<button class='buttontype' style='width:50px;' formaction="login.php">login</button>
	</td>
	</tr>

	</table>
    </div>
	<?}?>

	<? if ($act == 'initialize') {?>
    <div  id='container2' style='border:1px solid #45F;height:100px;' >
    <table  width="100%" border="0" cellspacing="1" cellpadding="0">
    <tr > 
 	<td width='45%' class='tabler3' align='right'  >
     	Admin PIN:
 	</td>
 	<td width='55%'> 
		<input class='entrystyle2' onkeyup="testit(this);" pattern="[0-9]{6}" type='text' id='pin1' name='pin1'  > 6 numeric
 	</td>
 	</tr>
    <tr > 
 	<td width='45%' class='tabler3' align='right'  >
     	Encoder PIN:
 	</td>
 	<td width='55%'> 
		<input class='entrystyle2' onkeyup="testit(this);" pattern="[0-9]{6}" type='text' id='pin2' name='pin2'  > 6 numeric
 	</td>
 	</tr>
    <tr > 
	<td colspan='2' align='center' >
    	<button class='buttontype' style='width:50px;' formaction="login.php?ac=create">Create</button>
	</td>
	</tr>
  
    </table>
    </div>	
	<?}?>

</form>    


    <?if ($action == 'login' ){?>
        <div  id='container4'  >
			<iframe src="#" style='width:840px;height:535px;padding-left:1px; ' id='summary' name='introduction'></iframe>
		</div>
	<?}?>
		
</body>
</html>
