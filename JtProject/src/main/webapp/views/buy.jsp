<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
</head>
<body>


					
<div class="body-text">Write your name in the right fields. Also write your imaginary card number. By clicking CCV field card will turn.</div>

  <form>
    <div class="form-container">
      <div class="personal-information">
        <h1>Payment Information</h1>
      </div>
       <!-- end of personal-information -->
           
   
          <input id="column" type="text"  class="fname" name="first-name" placeholder="Full Name"/>
          <input id="input-field" type="text" class="cnumber" name="number" placeholder="Card Number"/>
          <input id="column-left" type="text" class="expiry" name="expiry" placeholder="MM / YY"/>
          <input id="column-right" type="text"class="cvv" name="cvv" placeholder="CCV"/>
         
          <div class="card-wrapper"></div>
      
          <input id="input-field" type="text"class="addr" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Street Address"/>
          <input id="column-left" type="text"class="city" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>
          <input id="column-right" type="text" class="zip" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="6" placeholder="ZIP code"/>
          <input id="input-field" type="email" class="mail" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/>
         
    <input type="submit" class="btn" onclick="success()">
</form>
        
    </form>
  </div>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500);

body {
  padding: 60px 0;
  background-color: rgba(178,209,229,0.7);
  margin: 0 auto;
  width: 600px;
}
h3 {
  text-align: left;
}

.body-text {
  padding: 0 20px 30px 20px;
  font-family: "Roboto";
  font-size: 1em;
  color: #333;
  text-align: center;
  line-height: 1.2em;
}
.form-container {
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.card-wrapper {
  background-color: #6FB7E9;
  width: 100%;
  display: flex;

}
.personal-information {
  background-color: #3C8DC5;
  color: #fff;
  padding: 1px 0;
  text-align: center;
}
h1 {
  font-size: 1.3em;
  font-family: "Roboto"
}
input {
  margin: 1px 0;
  padding-left: 3%;
  font-size: 14px;
}
input[type="text"]{
  display: block;
  height: 50px;
  width: 97%;
  border: none;
}
input[type="email"]{
  display: block;
  height: 50px;
  width: 97%;
  border: none;
}
input[type="submit"]{
  display: block;
  height: 60px;
  width: 100%;
  border: none;
  background-color: #3C8DC5;
  color: #fff;
  margin-top: 2px;
  curson: pointer;
  font-size: 0.9em;
  text-transform: uppercase;
  font-weight: bold;
  cursor: pointer;
}
input[type="submit"]:hover{
  background-color: #6FB7E9;
  transition: 0.3s ease;
}
#column-left {
  width: 46.5%;
  float: left;
  margin-bottom: 2px;
}
#column-right {
  width: 46.5%;
  float: right;
}

@media only screen and (max-width: 480px){
  body {
    width: 100%;
    margin: 0 auto;
  }
  .form-container {
    margin: 0 2%;
  }
  input {
    font-size: 1em;
  }
  #input-button {
    width: 100%;
  }
  #input-field {
    width: 96.5%;
  }
  h1 {
    font-size: 1.2em;
  }
  input {
    margin: 2px 0;
  }
  input[type="submit"]{
    height: 50px;
  }
  #column-left {
    width: 96.5%;
    display: block;
    float: none;
  }
  #column-right {
    width: 96.5%;
    display: block;
    float: none;
  }
}</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
</script>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script>
$(".btn").click(function(){
	var name=$(".fname").val();
	var cardnumber=$(".cnumber").val();
	var expiry=$(".expiry").val();
	var cvv=$(".cvv").val();
	var addr=$(".addr").val();
	var city=$(".city").val();
	var zip=$(".zip").val();
	var mail=$(".mail").val();
	if(name==''||cardnumber==''||expiry==''||cvv==''||addr==''||city==''||zip==''||mail==''){
		swal({
			  title: "Fields Empty!",
			  text: "Please Check the Missing Field!",
			  icon: "warning",
			});
		
	}
	else{
		alert("Your Payment has been received Successfully")
	}
});

</script>
</body>
</html>