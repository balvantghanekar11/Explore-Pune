<?php
	include_once("Connection.php");
	$Email = $_REQUEST["EID"];
	$str = "select * from tbluser where Email ='$Email'";
	$rs = mysqli_query($con,$str);
	$res = mysqli_num_rows($rs);
	if($res>0)
	{
		echo "Already Exists";
	}
?>