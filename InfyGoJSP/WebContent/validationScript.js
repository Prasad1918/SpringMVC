// Script to validate the form values

function validate(){
	
	var uid = document.form.uid.value;
	 var password = document.form.password.value;
	 var name = document.form.name.value; 
	 var city = document.form.city.value; 
	 var email = document.form.email.value;
	 var phone= document.form.phone.value;
	 var isNumber = /^\d+$/.test(phone);
	 var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email);  

if (uid.length < 4 || uid.length > 15) 
{
	alert('User ID has to be between 4-15 characters');
	return false;
}
else if (password.length < 8 || password.length > 15) 
{
	alert('Password has to be between 8 - 15 characters');
	return false;
}
if ( name.length < 4 || name.length > 25) 
{
	alert('Name has to be between 4-25 characters');
	return false;
}
else if (city.length == 0) 
{
	alert('City cannot be null');
	return false;
}
else if (email.length == 0)
{
	alert('Email ID cannot be null');
	return false;
}
else if (mailformat==false)
{
	alert('Email ID must be in the format test@test.com');
	return false;
}
else if (phone.length!=10 || isNumber==false)
{
	alert('Phone number has to be of 10 digits');
	return false;
}


}