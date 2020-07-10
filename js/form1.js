function validate()
    {
    	//alert("hello")
        var data=document.getElementById("fname").value;
        var letters=/^[A-Za-z]$/;
        if(data=="")
        {
        	alert("First Name Cannot Be Empty.")
        }
        else if(data.search(letters)==-1)
        {
        	alert("Alphabets Only In Name.");
        }
        else
        {
        	alert("data accepted");
        }
        
    }