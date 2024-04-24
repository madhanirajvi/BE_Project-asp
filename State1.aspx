<%@ Page Title="Tourism Help Desk//Login1//State1.aspx" Language="C#" MasterPageFile="~/Homemaster.master" AutoEventWireup="true" CodeFile="State1.aspx.cs" Inherits="Statem" %>

<%-- Add content controls here --%>
<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server" align="center">

<center>
<asp:Table runat="server" align="center">

       <asp:TableHeaderRow > 
      <asp:TableHeaderCell ColumnSpan="3" RowSpan="2">
       <div class="Title"><h4 class="title" 
         style="opacity: 1; font-size: xx-large; color: #003366; text-transform: uppercase; font-variant: normal; font-style: inherit; font-weight: 600; font-family: Shruti; line-height: normal; vertical-align: top; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFFFF;">Places</h4></div>
         </asp:TableHeaderCell>
         </asp:TableHeaderRow>


       <asp:TableRow>
            <asp:TableCell ColumnSpan="3">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
             </asp:TableCell>
        </asp:TableRow>
         
 <asp:TableRow>
    <asp:TableCell>
      <asp:Label ID="Label1" runat="server" Text="State">
      </asp:Label>
     </asp:TableCell>
     
       <asp:TableCell> 
        <asp:TextBox ID="TextBox2" runat="server">
         </asp:TextBox>
       </asp:TableCell>
      
       <asp:TableCell>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" placeholder="Statename" runat="server" ErrorMessage="Require Statename" ControlToValidate="TextBox2">
        </asp:RequiredFieldValidator>
       </asp:TableCell> 
  </asp:TableRow>
      
   
   <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>
  <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

   <asp:TableRow>
        <asp:TableCell ></asp:TableCell>
       
        <asp:TableCell>
          <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Submit" 
            Height="32px" Width="84px" />
        </asp:TableCell>
         <asp:TableCell></asp:TableCell>
  </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:HiddenField ID="HiddenField2" runat="server" />
                 </asp:TableCell>
            </asp:TableRow>
        
    <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>
  <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>


       </asp:Table>
       </center>

       <br />
    <asp:GridView ID="GridView1" runat="server" EnableModelValidation="True" 
         CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
    onrowdeleting="GridView1_RowDeleting" 
    onselectedindexchanging="GridView1_SelectedIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:GridView>
    </form>

</asp:Content>