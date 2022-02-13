<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainMenu.aspx.cs" Inherits="MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>FiduciaApp</title>
	  <link rel="stylesheet" href="style/style.css" />
</head>
<body>
	<form id="form1" runat="server">
     <style>
        .menubutton
        {
            background-color:#8FBECA !important;
        }
        .MyHeader {
            background-color: #77C89D;
            font-size:30px;
            width:100%;
            height:60px;
            color:#ECE7E2;
            vertical-align:middle;
            text-align:center;
        }
		.about_us {
			background-color:#D0F7D0;
			font-size:30px;
			color:#1B3F34;
			vertical-align:middle;
			text-align:left;
		}
		.contact_us {
			background-color:#56A1A4;
			font-size:30px;
			color:#1B3F34;
			vertical-align:middle;
			text-align:left;
		}
		.future {
			background-color:#5E9DB2;
			font-size:30px;
			color:#1B3F34;
			vertical-align:middle;
			text-align:left;
		}
		.doctor_who {
			background-color:#9AE9A1;
			font-size:30px;
			color:#1B3F34;
			vertical-align:middle;
			text-align:left;
		}
    </style>
    <div class="container">
        <div class="MyHeader">Fiducia</div>
        <br />
        <!-- Static navbar -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#Doctor Who?">Fiducia Healthcare</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active menubutton"><a href="#">Home</a></li>
                        <li class="menubutton"><a href="Triage.aspx">Appointments</a></li>
                        <li class="menubutton"><a href="Reminder">Medication</a></li>
						<li class="menubutton"><a href="Forum">Forum</a></li>
						<li class="menubutton"><a href="#">Settings</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">... <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#About Us">About Us</a></li>
                                <li><a href="#Contact Us">Contact Us</a></li>
                                <li><a href="#Look to the Future">Look to the Future</a></li>
								<li><a href="#Doctor Who?">Fiducia Healthcare?</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Accounts</li>
                                <li><a href="#">Sign-up</a></li>
                                <li><a href="#">Sign-in</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
                        <li><a href="../navbar-static-top/">Static top</a></li>
                        <li><a href="../navbar-fixed-top/">Fixed top</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
        </nav>

        <!-- Main component for a primary marketing message or call to action -->
        <div class="jumbotron about_us" id="About Us">
            <h1>About Us</h1>
            <p>Fiducia, in Latin, stands for confidence, trust, assurance, faith, reliance and security. We made this project as a show of all of these qualities, to help and aid those in need. Find out more about our organisation below.</p>
            <p>
                <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">Discover Fiducia &raquo;</a>
            </p>
        </div>
		<br />
		<div class="jumbotron contact_us" id="Contact Us">
            <h1>Contact Us</h1>
            <p>This website is a long labour of love - but that doesn't mean it's perfect! If you have any questions, complaints or suggestions, please contact us at these email adresses.</p>
			<p>We can be reached at : fiducia@gmail.com</p>
			<p>Alternatively, you can leave your comment on our webiste and we'll do our best to create the best website for your use. Feel free to also leave any book recommendations there - we're always looking for a good read.</p>
            <p>
                <a class="btn btn-lg btn-primary" href="fiducia@gmail.com" role="button">Reach Us &raquo;</a>
            </p>
        </div>
		<br />
		<div class="jumbotron future" id="Look to the Future">
		    <h1>Look to the Future</h1>
			<p>Every time we receve an email notifying us of some new bug or some new idea to improve our work, we add it to the list and crack on with our work. But websites aren't built overnight. We're working round the clock but it may still be some time before we get to everything. However, we have some new updates coming that we think you might like!</p>
			<p>We're planning to shuffle some framing around in our website to create the smoothest navigational system possible and improve the coding on our appointment booking section to create a more efficient way of determining the urgency of your ailment. You can find out about all of our other planned updates on our website down below.</p>
			<p>Exciting news! Five more hospitals are opening their doors - or rather, their firewalls - to us and adding themselves onto our booking system so, no matter where you live, you can use our platform to find your treatment today. Find the full list of hospitals utilising our website below.</p>
		 <p>
            <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">Our planned updates &raquo;</a>
         </p>
		 <p>
		    <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">All available hospitals &raquo;</a>
		 </p>
		</div>
		<br />
		<div class="jumbotron doctor_who" id="Doctor Who?" />
		    <h1>Fiducia Healthcare?</h1>
			<p>Fiducia Healthcare has been our passion project for the last while and it's finally ready to show all of you. This, for us at Fiducia has been a lifetime in the making. Doctor Who is a website designed specifically to help those in need of medical attention and treatment and is designed in every way to make things easier for all of you.</p>
			<p>We have several sections including Appointments, where you can book an appointment in your local hospitals from your own laptop, and the website will rate your symptoms and illness to decide if you need a priority booking or not. We have the Medication tab, which you can use to input your medication schedule and recieve email reminders to take your medication at the right time.</p>
			<p>We also have our forum, which contains several pages of information by real doctors about various illnesses and diseases for your information. It also contains our live chats, which will allow you to remotely talk with doctors, and other people suffering from the same ailment as you. Of course, we also have our settings, which is designed to make our website as accessible as possible, with options for text-to-speech and larger font sizes if they are required.</p>
			<p>Fiducia Healthcare was created to be good for you. If you are not satisfied with our interface, then please let us know. All our contact information is above.</p>
		 <p>
            <a class="btn btn-lg btn-primary" href="#Contact Us" role="button">Contact Us &raquo;</a>
         </p>
		</div>

    
		</form>
</body>
</html>
