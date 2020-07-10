<html>
<head>
	<title>Explore Pune</title>
	<link rel="stylesheet" type="text/css" href="css/ProHeader.css">
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' >
	<link rel="stylesheet" type="text/css" href="css/ProEducational.css">

	<?php
		include_once("Connection.php");
		/*function load_Edu()
		{
			$o='';
			$sql="select * from tblEducation";
			$res=mysqli_query($con,$sql) or die(mysqli_error($con));

			while ($row=mysqli_fetch_array($res)) {
				$o .='<option value="'.$row["EduId"].'">'.$row["Name"].'</option>';
			}
			return  $o;
		}*/
	?>
</head>
<body>
	<div class="Menu">
  <a href="Index.html">Home</a>
  <a href="ProTouristSpots.html">Tourist Spots</a>
  <a href="ProEducational.php">Educational Institutes</a>
  <a href="ProCommerce.html">Commercial Zones</a>
  <a href="ProTrends.html">Trends And Development</a>
  <a href="ProFoodCorner.html">Food Corners</a>
  <a href="ProResidential.html">Residential Areas</a>
</div>
	
	<div class="img">
		<div class="firsthead">
			<b>Visit Pune's Top COLLEGES & SCHOOLS</b>
		</div>
		<center>
			<!-- <div class="topdes">
				<b>FOR GETTING NEW WAYS TO VISIT PUNE'S TOP RANK COLLEGES.</b>
			</div>
			<button style="height:30px; width:100px; border-radius:10px;">
				<font size=4>click here</font>
			</button> -->
		</center>
	</div>
	
	<center>
	
	<div class="first">
		<br>
		<div style="background-color:white; height:40px; width:250px; opacity:0.5; border-radius:3px;">
			<font size="6" face="Agency FB"><b>TO VISITE TOP RANKED </b></font>
		</div>
		
		
		<select name="edu" id="edu" onchange="getState(this.value)">
			<option value="">select</option>
				<option value="1">College</option>
				<option value="2">School</option>
		</select>

		<br>
		<br><br><br><br><br><br>
		
		
	
		
		
		
		<div id="ed">
			 
		</div>
	</div>
	
</center>
</body>
</html>
<script>

function getState(eduId) 
		  {
		      var xhttp = new XMLHttpRequest();      
		      var strURL="Pro3.php?EduId="+eduId;       
		      //alert(strURL);
		      xhttp.onreadystatechange = function() 
		      {      
		      if (this.readyState == 4 && this.status == 200) 
		      {
		       //alert(this.responseText);
		       document.getElementById("ed").innerHTML = this.responseText;
		      }
		    };
		    xhttp.open("GET", strURL, true);
		    xhttp.send();
		  }
</script>