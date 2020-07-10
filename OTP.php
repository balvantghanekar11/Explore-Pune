
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/ProForm.css">
<link rel="stylesheet" type="text/css" href="css/ProHeader.css">
<script type="text/javascript" src="js/form.js"></script>
<?php
      include_once("Connection.php");
			if(isset($_REQUEST['btnSubmit']))
			{
				$OTP=$_REQUEST["txtotp"];
        $verify=$_SESSION['Code'];
				if($OTP!=$verify)
				{
					header("Location:index.html");
				}
				else
				{
          $_SESSION['Code']=0;
          echo "<script>alert('Please Enter Correct OTP');</script>";

				}
				
			}
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

<h1><center>Enter The OTP</center></h1>
<h2><center>Please Enter Your OTP for verify your Email.</center></h2>
<center><h4>1We have send OTP to your Email Address</h4></center>


<div class="container"  >
  <form action="" method="post" name="myform">

    <div class="row">
      <div class="col-25">
        <label for="fname">Enter OTP</label>
      </div>
      <div class="col-75">

        <input type="text" id="otp" name="txtotp" placeholder="Enter OTP">
      </div>
    </div>
    
    <div class="row">
      <input type="submit" value="Verify" name="btnSubmit">
    </div>
  </form>
</div>

</body>
</html>
