<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
background-color : #f2f9ff;
}
.head{
	margin: 0 0 0 0;
}

.container{
	background-color: white;
	height:700px;
	width: 97%;
	margin-top:25px;
	margin-left:25px;
	border: none;
	border-radius: 6px;
	box-shadow: 1px 1px 8px #c0c0c0;
	position:relative;
}

.header{
	height:37px;
	position:absolute;
	width:65%;
	background-color: #6adb78;
	color:white;
	padding-left:35%;
	padding-top:40px;
	font-size:30pt;
 	font-family:AR DESTINE; 
	/* box-shadow: 0 0 2px #888888; */
}

/* .heading{
	margin-bottom:20px;
	margin-left:650px;
	color:white;
	font-size:16pt;
} */

.welcome-matter{
	position:absolute;
	background-color: #6adb78;
	color:white;
	font-family: Century Gothic;
	font-style:italic;
	font-size: 13pt;
	height:370px;
	width:450px;
	padding-left:25px;
	padding-top:20px;
 	margin-top:250px;
	margin-left: 50px; 
	border: none;
	border-radius: 6px;
/* 	box-shadow: 0 0 5px #888888;
 */	
}
 .button{
 position:absolute;
 	width: 140px;
 	height:30px;
    background-color: #6adb78;
    color: white;
    margin-top: 610px;
    margin-left: 670px;
    padding: 7px 17px 14px 15px;
    border: none;
    border-radius:6px;
    cursor: pointer;
    font-family: Century Gothic;
    
    font-size:11pt;
 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="container">

 <div class="header">
 

WELCOME TO FRUIT KICK 

 
 </div>



<div class="welcome-matter">
<strong>
"We are eating too much of the wrong thing, and not enough of the right thing" <sub>-David Wolfe</sub>
<br/><br/>
"Remember when your body is hungry, it wants nutrients, not calories"
<br/><br/>
"I really regret eating healthy today"<br/><sub> - Said no One Ever</sub>
</strong>
</div>
<!--<input class="button" type="button" value="Buy Now ">-->
    <asp:Button CssClass="button" runat="server" OnClick="navigate" Text="Buy Now" />


</div>
    </form>
</body>
</html>
