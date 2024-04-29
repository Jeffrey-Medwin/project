/**
 * 
 */

 function isChecked(){
	 var checkBox = document.getElementById("formGroupExampleInput2");
	 
	 if(checkBox.type === "password") {
		 checkBox.type = "text";
		 
	 } else {
		 checkBox.type = "password";
	 }
 } 
 
