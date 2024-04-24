<%@ Page Title="Tourism Help Desk//Login1//Feedback.aspx" Language="C#" MasterPageFile="~/Homemaster.master" AutoEventWireup="true" CodeFile="feedback1.aspx.cs" Inherits="feedback" %>

<%-- Add content controls here --%>



<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" >
  <center>
  <asp:Table ID="Table1" runat="server" >
 
     <asp:TableHeaderRow > 
      <asp:TableHeaderCell ColumnSpan="3" RowSpan="2">
      <div class="Title"><h4 class="title" 
         style="opacity: 1; font-size: xx-large; color: #003366; text-transform: uppercase; font-variant: normal; font-style: inherit; font-weight: 600; font-family: Shruti; line-height: normal; vertical-align: top; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFFFF;">Feedback</h4></div>
       </asp:TableHeaderCell>
       </asp:TableHeaderRow>

       <asp:TableRow><asp:TableCell>
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       </asp:TableCell>
       <asp:TableCell>
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       </asp:TableCell></asp:TableRow>

    </asp:Table>
  </center>
    
    <asp:GridView ID="GridView1" runat="server" EnableModelValidation="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
        ForeColor="#333333" GridLines="None" onrowdeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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