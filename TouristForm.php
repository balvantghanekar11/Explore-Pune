<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/ProForm.css">
<link rel="stylesheet" type="text/css" href="css/ProHeader.css">
<script type="text/javascript" src="js/form.jss"></script>
<script type="text/javascript">
  function EmailCheck(EmailIDs)
  {
      var xhttp = new XMLHttpRequest();
      var Url = "AjaxEmail.php?EID="+EmailIDs;
      //alert(Url);
      xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("lblEmail").innerHTML = this.responseText;
    }
  }; 
  xhttp.open("GET", Url, true);
  xhttp.send();

 
  }
  function ContactNo(Contact)
  {
     var xhttp = new XMLHttpRequest();
      var Url = "AjaxContactNo.php?CNo="+Contact;
      //alert(Url);
      xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("lblCNo").innerHTML = this.responseText;
    }
  }; 
  xhttp.open("GET", Url, true);
  xhttp.send();
  }

</script>
<?php
  if(isset($_REQUEST['btnSubmit']))
  {
    $Email=$_REQUEST['email'];
              $Subject="Email Verification";
        $Code2=rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $from="Pune Explore";

        mail($Email,$Subject,$Code2,$from); 

        $_SESSION['Code']=$Code2;
       // echo $_SESSION['Code'];
        header("location:OTP.php");
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

<h1><center>Enter The Details</center></h1>
<p><center>Please Enter Your Details And Let Us Help You With What You Are Looking For..</center></p>

<div class="container"  >
  <form action="" onsubmit="return validate();" method="post" name="myform">

    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Your name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">
      </div>
    </div>
    
    
    <div class="row">
      <div class="col-25">
        <label for="dob">DateOfBirth </label>
      </div>
      <div class="col-75">
        <input type="date" id="dob" name="dob" placeholder="Your Birth Date(dd/mm/yyyy)..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="contact">Contact No</label>
      </div>
      <div class="col-75">
        <input type="text" id="contact" name="contact" placeholder="Your Contact Number.." onblur="ContactNo(this.value);">
        <label id="lblCNo" style="color: red; margin-left: 180px;font-size: 20px;"></label>
      </div>
    </div>
      
    <div class="row">
      <div class="col-25">
        <label for="email">Email Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="email" name="email" placeholder="Your email address .." onblur="EmailCheck(this.value);">
        <label id="lblEmail" style="color: red;margin-left: 180px;font-size: 20px;"></label>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="pwd">Password</label>
      </div>
      <div class="col-75">
        <input type="text" id="pwd" name="pwd" placeholder="Your password..">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="confpwd">Confirm Password</label>
      </div>
      <div class="col-75">
        <input type="text" id="confpwd" name="confpwd" placeholder="Confirm Password..">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="source">Source</label>
      </div>
      <div class="col-75">
        <input type="text" id="source" name="source" placeholder="From Source..">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="destn">Destination</label>
      </div>
      <div class="col-75">
        <input type="text" id="destn" name="destn" placeholder="To destination..">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="trdate">Travel Date</label>
      </div>
      <div class="col-75">
        <input type="date" id="trdate" name="trdate" placeholder="Travelling date..">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="rtdate">Return Date</label>
      </div>
      <div class="col-75">
        <input type="date" id="rtdate" name="rtdate" placeholder="Returning Date..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="class">Class</label>
      </div>
      <div class="col-75">
        <input type="text" id="class" name="class" placeholder="Economy/Premium/Business..">
      </div>
    </div>
    
    <div class="row">
      <input type="submit" value="Submit" name="btnSubmit">
    </div>
  </form>
</div>

</body>
</html>
