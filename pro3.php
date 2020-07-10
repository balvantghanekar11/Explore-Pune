<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>

	<?php
		include_once("Connection.php");
		/*echo $_REQUEST['EduId'];*/
		$Select_data="Select * from tblAllEducation where type='".$_REQUEST['EduId']."'";
		$Exe_Project=mysqli_query($con,$Select_data)or die(mysqli_connect($con));
		
		while ($fe=mysqli_fetch_array($Exe_Project)) 
		{
	?>
		<div class="box1">
			<br>	
			<a target="_blank" href="img/<?php echo $fe['Image'];?>">
				<div class="img1" style="background-image: url('img/<?php echo $fe['Image'];?>');"></div>
			</a>
			<div class="content1" style=" ">
				<h1><?php echo $fe['EduName'];?></h1>
					<p style="padding: 10px;"><span ><i class="fas fa-quote-left" style="font-size: 30px;"></i></span> &nbsp;&nbsp;&nbsp;&nbsp;<?php echo $fe['Description'];?><span></span></p>
					<br>
					<span ><i class="fas fa-phone" style="font-size: 30px;color: green;"></i></span>&nbsp;&nbsp;&nbsp;
					<?php echo $fe['ContactNo'];?>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<?php echo $fe['WebsiteLink'];?>" target="_blank" style="text-decoration: none;color: white;">
					<span ><i class="fas fa-globe" style="font-size: 30px;color: blue;"></i></span>&nbsp;&nbsp;&nbsp;<?php echo $fe['WebsiteName'];?></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<?php echo $fe['LocationLink'];?>" target="_blank" class="lMapLoc" style="text-decoration: none;"><span ><i class="fas fa-map-marker-alt" style="font-size: 30px;"></i></span>&nbsp;&nbsp;&nbsp;<i style="color: white;"><?php echo $fe['Location1'];?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $fe['Location2'];?> </i></a>
 

				
				</div>
			</div>
			<br><br><br>
	<?php
			}
			
	?>
<body>

</body>
</html> 