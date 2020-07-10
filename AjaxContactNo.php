<?php
	include_once("Connection.php");
	$Phone = $_REQUEST["CNo"];
	$str = "select * from tbluser where Phone ='$Phone'";
	$rs = mysqli_query($con,$str);
	$res = mysqli_num_rows($rs);
	if($res>0)
	{
		echo"Already Exists";
	}
?>