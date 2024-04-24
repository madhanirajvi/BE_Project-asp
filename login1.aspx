<%@ Page Title="Tourism Help Desk//Login1.aspx" Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server" align="center">
 <div class="Title"><h4 class="title" 
         style="opacity: 1; font-size: xx-large; color: #003366; text-transform: uppercase; font-variant: normal; font-style: inherit; font-weight: 600; font-family: Shruti; line-height: normal; vertical-align: top; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFFFF;">Login</h4></div><br />
		<div class="Login">
			                     
			                    User Name :&nbsp;&nbsp;&nbsp;
			                     
			                    <asp:TextBox ID="TextBox4"  class="text" placeholder="Username" value="" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Require Username." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                    Password&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" class="text" placeholder="Password" value="" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Require Password." ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                    <br />
								 
								 	<br /><br />
                                <span>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                                    Width="84px"  />
                                <br />
                                <br />
                                <div class="clear">
                                </div>
								</div>
		</form>

  

</asp:Content>