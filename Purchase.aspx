<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        
        .container{
    background-color: white;
	height:1000px;
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
	width:61%;
	background-color: #6adb78;
	color:white;
	padding-left:39%;
	padding-top:40px;
	font-size:30pt;
 	font-family:AR DESTINE; 
	
}

	.body-content{
	position:absolute;
	margin-top:130px;
	}

	.textbox{
		width: 60%;
    	padding: 12px 20px;
    	margin: 0 3px;
    	display: inline-block;
    	border: 1px solid #ccc;
    	border-radius: 4px;
    	box-sizing: border-box;
			}

	.textbox1{
		width: 20%;
    	padding: 12px 20px;
    	margin: 0 3px;
    	display: inline-block;
    	border: 1px solid #ccc;
    	border-radius: 4px;
    	box-sizing: border-box;
			}

    .button{
	width: 15%;
    background-color: #6adb78;
    color: white;
    padding: 10px 10px 10px 10px;
    margin: 10px 35px;
    border: none;
    cursor: pointer;
    font-family: "Verdana";
    font-size:11pt;	
}
    .button:hover{
	 background-color:#00ae57;
}

       .button1{
	width: 15%;
    background-color: #6adb78;
    color: white;
    padding: 10px 10px 28px 10px;
    margin: 10px 35px;
    border: none;
    cursor: pointer;
    font-family: "Verdana";
    font-size:11pt;	
}
    .button1:hover{
	 background-color:#00ae57;
}

    .ddl{
        width:35%;
        border: 1px solid #ccc;
    	border-radius: 4px;
        padding: 5px;
        text-overflow: '';
        background: transparent;
        font-size: 16px;
        line-height: 1;
        height: 34px;
       top:100%;
    }

        .auto-style1 {
            width: 100%;
            
            height: 386px;
            padding-left:300px;
        }
        .auto-style2 {
            color: #6adb78;
            margin: 5px 13px;
            font-family: Sans-serif;
            width: 295px;
            text-align: right;
        }

        .auto-style5 {
            color: #6adb78;
			margin: 5px 13px;
			font-family: Sans-serif;
            width: 295px;
            text-align: right;
            height: 28px;
        }
        .auto-style6 {
            height: 28px;
        }
        .auto-style8 {
            width: 295px;
            text-align: right;
            height: 55px;
        }
        .auto-style12 {
            width: 825px;
        }
        #GridView1{
            background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;
        }

        #GridView1 td {
      padding: 2px;
      border: solid 1px #c1c1c1; }
      #GridView1 th  {
      padding : 4px 2px;
      color: #fff;
      background: #6adb78;
      border-left: solid 1px #525252;
      font-size: 0.9em; }



        .auto-style14 {
            width: 825px;
            height: 104px;
        }
        .auto-style16 {
            color: #6adb78;
            margin: 5px 13px;
            font-family: Sans-serif;
            width: 295px;
            text-align: right;
            height: 50px;
        }
        .auto-style17 {
            height: 50px;
        }



        .auto-style18 {
            width: 295px;
        }



        .auto-style19 {
            width: 295px;
            height: 36px;
        }
        .auto-style20 {
            height: 36px;
        }
        


        .auto-style21 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #6adb78;
            color: white;
            padding: 10px 10px 10px 10px;
            margin: 10px 35px 10px 3px;
            cursor: pointer;
            font-family: "Verdana";
            font-size: 11pt;
        }
        


        .auto-style22 {
            height: 55px;
        }
                


        .auto-style24 {
            color: #6adb78;
            margin: 5px 13px;
            font-family: Sans-serif;
            width: 295px;
            text-align: right;
            height: 104px;
        }
        .auto-style25 {
            height: 104px;
        }
        


        .auto-style26 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #6adb78;
            color: white;
            cursor: pointer;
            font-family: "Verdana";
            font-size: 11pt;
            margin-left: 75px;
        }
        


        .auto-style28 {
            padding: 12px 20px;
            margin: 0 3px 0 39px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        


        .auto-style29 {
            color: #6adb78;
            margin: 5px 13px;
            font-family: Sans-serif;
            width: 295px;
            text-align: right;
            height: 57px;
        }
        .auto-style30 {
            height: 57px;
        }
        


        .auto-style31 {
            color: #6adb78;
            margin: 5px 13px;
            font-family: Sans-serif;
            width: 295px;
            text-align: right;
            height: 38px;
        }
        .auto-style32 {
            height: 38px;
        }
        


    </style>
</head>
<body>
    <div class="container">
         <div class="header">
            PURCHASE FRUITS
          </div>
        <div class="body-content">
    <form id="form1" runat="server">
    
    
    
    <!-- ----------------------------------------------FIRST TABLE ---------------------------------------------------------------->
        <table class="auto-style1">
            <tr>
                <td class="auto-style16"><strong>Name:</strong></td>
                <td class="auto-style17">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="textbox" ID="Name" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Username is required" style="text-align: left" ValidationGroup="register"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Mobile No:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="Mobile" runat="server" CssClass="auto-style28" Width="179px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Mobile" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" controltovalidate="Mobile" onservervalidate="checkMobile" errormessage="Not a valid number"></asp:CustomValidator>
                </td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style32">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" ForeColor="#6adb78" Text="*Enter mobile no. in the format ########## (Eg: 2105689412)"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Email:</strong></td>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="textbox" ID="Email" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Enter email address" ValidationGroup="register"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" 
                runat="server" ErrorMessage="Please Enter Valid Email ID"
                    ValidationGroup="register" ControlToValidate="Email" 
                    
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Address:</strong></td>
                <td >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="textbox" ID="Address" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Address" ErrorMessage="Address required" ValidationGroup="register"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>ZipCode:</strong></td>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="textbox" ID="ZipCode" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ZipCode" ErrorMessage="Enter ZipCode" ValidationGroup="register"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revZip" runat="server" ControlToValidate="ZipCode" ErrorMessage="Please Enter Valid ZipCode" ValidationGroup="register"
                        ValidationExpression="^\d{5}(?:(?:[-\s])?(?:[-\s])?(?:[-\s])?\d{4})?$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button CssClass="auto-style21" ID="Button2" runat="server" Text="Get Address" OnClick="GetAddress" Height="44px" /></td>
            </tr>
            <tr>
                <td id="City_State_label" class="auto-style29"><strong>City &amp; State:</strong> </td>
                <td style="margin-left: 40px" class="auto-style30" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox CssClass="textbox1" ID="txtcity" runat="server" visible="false"></asp:TextBox>
                    <asp:TextBox CssClass="textbox1" ID="txtstate" runat="server" visible="false"></asp:TextBox>
                    
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcity"></asp:RequiredFieldValidator>
                     &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtstate" ></asp:RequiredFieldValidator>
                    
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Select Fruit:</strong></td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:DropDownList CssClass="ddl" ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" DataTextField="Fruit and Variety" DataValueField="Fruit and Variety" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                    <asp:ListItem Text="-------Select Fruit-------"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/DataBase/fruits.mdb" SelectCommand="SELECT FruitName AS [Fruit and Variety], Color, Price, UnitOfSale, Quantity FROM fruits"></asp:AccessDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="quantity" runat="server" ForeColor="#6ADB78" Font-Size="Large" ></asp:Label>
                </td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
     
        <tr>
            <td class="auto-style24"><strong>Enter quantity:</strong></td>
            <td class="auto-style14">
    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox CssClass="textbox" ID="sql_string" runat="server" Width="180px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="sql_string" ErrorMessage="Quantity not available" ValidationGroup="register"></asp:RequiredFieldValidator>
    
            &nbsp;&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" controltovalidate="sql_string" onservervalidate="checkQuantity" errormessage="Cannot exceed the quantity available"></asp:CustomValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style12">
    
                <asp:Button CssClass="auto-style26" ID="order_fruit" runat="server" OnClick="order_fruit_Click" Text="Order" Height="36px" Width="124px" />
    
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
    
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </div>
        </div>
</body>
</html>
