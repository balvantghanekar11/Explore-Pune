/*function validateForm1() {
  alert("hi");
  var x = document.forms["myform"]["fname"].value;
  if (x == "" && x != /^[A-Za-z]+$/) {
    alert("Name must be filled out");
    return false;
  }!/^[a-zA-Z]*$/g.test(document.myForm.name.value)
}*/
/*if(inputtext.value.match(letters))
        {
          alert("name accepted");
          {
          	return true;
          }
          else
          {
          	alert("Alphabets Only in Fist Name");
          	return false();
          }
       	}*/

function validate()	
    {
        var letters=/^[A-Za-z]+$/;// For validating Alphabets
        var phone=/^\d{10}$/; // For validating Contact No
        var pas=document.getElementById('pwd'); // For validating Password
        var confpas=document.getElementById('confpwd');//and confirm passsword
        var eml=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;// For Validating Email
        var pas1=/^[A-Za-z]\w{7,14}$/;
        
  		
        if( document.myform.firstname.value=="" )
        {
          alert("Please Provide Your First Name");
          document.myform.firstname.focus();
          return false;
        }
        if(document.myform.firstname.value!=letters)
        {
          alert("Please Provide Only Alphabets in First Name");
          document.myform.firstname.focus();
          return false;
        }
        //----------------
        if(document.myform.lastname.value=="")
        {
          alert("Please Provide Your Last Name");
          document.myform.lastname.focus();
          return false;
        }
        if(document.myform.lastname.value!=letters)
        {
          alert("Please Provide Only Alphabets in Last Name");
          document.myform.lastname.focus();
          return false;
        }
        //-----------------
        if(document.myform.qualification.value=="")
        {
          alert("Please Provide Your Qualification");
          document.myform.qualification.focus();
          return false;
        }
        //----------------
        if(document.myform.percentage.value=="")
        {
          alert("Please Provide Your Percentage");
          document.myform.percentage.focus();
          return false;
        }
        //----------------
        if(document.myform.dob.value=="")
        {
          alert("Please Provide Your Date Of Birth");
          document.myform.dob.focus();
          return false;
        }
        //----------------
        if(document.myform.university.value=="")
        {
          alert("Please Provide Your University");
          document.myform.university.focus();
          return false;
        }
        //----------------
        if(document.myform.contact.value=="")
        {
          alert("Please Provide Your Contact No");
          document.myform.contact.focus();
          return false;
        }
        if(document.myform.contact.value!=phone)
        {
          alert("Please Provide only Digits in Your Contact No");
          document.myform.contact.focus();
          return false;
        }
        //----------------
        if(document.myform.city.value=="")
        {
          alert("Please Provide Your City");
          document.myform.city.focus();
          return false;
        }
        //----------------
        if(document.myform.state.value=="")
        {
          alert("Please Provide Your State");
          document.myform.state.focus();
          return false;
        }
        //----------------
        if(document.myform.pincode.value=="")
        {
          alert("Please Provide Your Pincode");
          document.myform.pincode.focus();
          return false;
        }
        //----------------
        if(document.myform.email.value=="")
        {
          alert("Please Provide Your Email");
          document.myform.email.focus();
          return false;
        }
        if(document.myform.email.value!=eml)
        {
          alert("Please Provide Valid Email");
          document.myform.email.focus();
          return false;
        }
        //----------------
        if(document.myform.pwd.value=="")
        {
          alert("Please Provide Your Password");
          document.myform.pwd.focus();
          return false;
        }
        if(document.myform.pwd.value!=pas1)
        {
          alert("Password Must contain 1 alphabet 1 numeric value");
          document.myform.pwd.focus();
          return false;
        }
        //----------------
        if(document.myform.confpwd.value=="")
        {
          alert("Confirm Password");
          document.myform.confpwd.focus();
          return false;
        }
        if(pas!=confpas)
        {
          alert("Password and Confirm Password Donot Match");
          document.myform.confpwd.focus();
          return false;
        }
        //----------------
        if(document.myform.source.value=="")
        {
          alert("Please Provide Your Source");
          document.myform.source.focus();
          return false;
        }
        //----------------
        if(document.myform.destn.value=="")
        {
          alert("Please Provide Your Destination");
          document.myform.destn.focus();
          return false;
        }
        //----------------
        if(document.myform.trdate.value=="")
        {
          alert("Please Provide Your Travel Date");
          document.myform.trdate.focus();
          return false;
        }
        //----------------
        if(document.myform.rtdate.value=="")
        {
          alert("Please Provide Your Return Date");
          document.myform.rtdate.focus();
          return false;
        }
        //----------------
        if(document.myform.class.value=="")
        {
          alert("Please Provide Your Class");
          document.myform.class.focus();
          return false;
        }
         
    }
