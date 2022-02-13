<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Triage.aspx.cs" Inherits="Triage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FiduciaApp</title>
	  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
   
    <link rel="stylesheet" href="style/style.css" />
</head>
<body>
    <form id="form1" runat="server">
		  <div>
			  <p>
				  <a class="btn btn-lg btn-primary" href="MainMenu.aspx" role="button">Return to homepage</a>
			  </p>
		  </div>
		<br />
		<div class="container">
      <h2 class = "bigtext">APPOINTMENTS</h2>
			<!--Set up and layout of the page -->
      <p class = text>EMAIL ADDRESS</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="email" placeholder = "E-mail" />

      <p class = text>FIRST NAME</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="name1" placeholder = "First name" />

      <p class = text>LAST NAME</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="name2" placeholder = "Last name" />

      <p class = text>PREFERRED CLINIC</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="clinic" placeholder = "Clinic name" />

      <p class = text>AGE</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="age" placeholder = "Age" />

      <div class="select-box">
        <div class="options-container">
			<!--Selection box work-->
          <div class="option">
            <input type="doctor" class="doctor" id="gp" name="category" />
            <label for="gp">GP</label>
          </div>

          <div class="option">
            <input type="doctor" class="doctor" id="primary care doctor" name="category" />
            <label for="primary care doctor">Primary Care Doctor</label>
          </div>

          <div class="option">
            <input type="doctor" class="doctor" id="specialist doctor" name="category" />
            <label for="specialist doctor">Specialist Doctor</label>
          </div>

          <div class="option">
            <input type="doctor" class="doctor" id="surgeon" name="category" />
            <label for="surgeon">Surgeon</label>
          </div>


        </div>

        <div class="selected">
          Select what type of doctor you would like
        </div>
    </div>
<!--Works to create the repeating symptoms box to 'add' symptoms to the list-->
    <p class = text>SYMPTOMS</p>
      <script type="text/javascript">
        var i=0;
        function new_btn(){    
          i++;  
          var node = document.createElement('div');        
          node.innerHTML = '<input type="text" class="symptoms" id="symptoms' + i + '" name="symptoms' + i + '" placeholder = "Symptoms"><p></p><input type="text" class="under" id="days' + i + '" name="days' + i + '" placeholder = "For how long? (Days)"><p></p><input type="text" class="under" id="severity' + i + '" name="severity' + i + '" placeholder = "Severity (1-10)">';       
          document.getElementById('mycontainer').appendChild(node);    
		}
		  

      </script>

      <div id="mycontainer">
        <input type="doctor" class="symptoms" id="symptoms" name="symptoms" placeholder = "Symptoms" />
        <button type="button" class="btn-btn-primary" onclick="new_btn()" >Add</button>
        <p></p>
        <input type="doctor" class="under" id="days" name="days" placeholder = "For how long? (Days)" />
        <p></p>
        <input type="doctor" class="under" id="severity" name="severity" placeholder = "Severity (1-10)" />
      </div>
      
      <p class = text>KEY CODES (from doctors)</p>
      <input type="doctor" class="symptoms" id="symptoms" name="symptoms" placeholder = "e.g. T1419" />

      <p class = text>EXTRA NOTES (if none put N/A)</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="notes" placeholder = "Notes" />

      <p class = text>TOP 5 PREFERENCE DAYS</p>
      <input type="doctor" class="symptoms1" id="symptoms" name="notes" placeholder = "e.g. 05/10/22" />
      <input type="doctor" class="symptoms1" id="symptoms" name="notes" placeholder = "e.g. 05/10/22" />
      <input type="doctor" class="symptoms1" id="symptoms" name="notes" placeholder = "e.g. 05/10/22" />
      <input type="doctor" class="symptoms1" id="symptoms" name="notes" placeholder = "e.g. 05/10/22" />
      <input type="doctor" class="symptoms1" id="symptoms" name="notes" placeholder = "e.g. 05/10/22" />
      <p></p>
      <script type="text/javascript">
      function fun()
      {
    document.write("THANK YOU FOR BOOKING (E-mail confirmation will be sent soon)");
      }
    </script>
   
  </div>
 <!--ASP.net used to connect to the C# in the code behind-->
        <asp:Button ID="btn_Submit" CssClass="btn-btn-primary" runat="server" Text="Submit" OnClick="btn_Submit_Click"/>
        <br />
        <p class = text>Your triage priority is: </p>
        <asp:Label ID="lb_Priority" CssClass="text" runat="server" Text=""></asp:Label>
    </div>
		<script src="script/main.js"></script>
    </form>
</body>
</html>
