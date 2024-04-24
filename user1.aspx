<%@ Page Title="Tourism Help Desk//Login1//User1.aspx" Language="C#" MasterPageFile="~/Homemaster.master" AutoEventWireup="true" CodeFile="user1.aspx.cs" Inherits="user1" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
 
 <form id="form1" runat="server" >

  <center>
  <asp:Table runat="server" >
 
     <asp:TableHeaderRow > 
      <asp:TableHeaderCell ColumnSpan="3" RowSpan="2">
      <div class="Title"><h4 class="title" 
         style="opacity: 1; font-size: xx-large; color: #003366; text-transform: uppercase; font-variant: normal; font-style: inherit; font-weight: 600; font-family: Shruti; line-height: normal; vertical-align: top; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFFFF;">User</h4></div>
       </asp:TableHeaderCell>
       </asp:TableHeaderRow>
    
       
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
    <asp:TableCell>
      <asp:Label ID="Label1" runat="server" Text="User Name">
      </asp:Label>
     </asp:TableCell>
     
       <asp:TableCell> 
        <asp:TextBox ID="TextBox1" runat="server">
         </asp:TextBox>
       </asp:TableCell>
      
       <asp:TableCell>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Require Username" ControlToValidate="TextBox1">
        </asp:RequiredFieldValidator>
       </asp:TableCell> 
   
   </asp:TableRow>
 
 
  <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

  <asp:TableRow>
  <asp:TableCell>
<asp:Label ID="Label5" runat="server" Text="Gender">
</asp:Label>
</asp:TableCell>
      
      <asp:TableCell>
       <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="246px" align="center">
        <asp:ListItem  >Male</asp:ListItem>
             <asp:ListItem >Female</asp:ListItem>
         </asp:RadioButtonList>  
         </asp:TableCell>
         <asp:TableCell></asp:TableCell>
       </asp:TableRow> 

  <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>
  
  <asp:TableRow>
    <asp:TableCell>
       <asp:Label ID="Label3" runat="server" Text="DOB">
       </asp:Label>
       </asp:TableCell>
       
         <asp:TableCell ColumnSpan="2">
         <asp:TextBox ID="TextBox3" runat="server"
         ></asp:TextBox>  
        </asp:TableCell>
   </asp:TableRow>


        <asp:TableRow>
        <asp:TableCell ColumnSpan="3"><br />
        </asp:TableCell>
        </asp:TableRow>


<asp:TableRow>
   <asp:TableCell>
      <asp:Label ID="Label4" runat="server" Text="Mobile No.">
      </asp:Label> 
     </asp:TableCell>
       
         <asp:TableCell> 
          <asp:TextBox ID="TextBox4" runat="server">
          </asp:TextBox>
          </asp:TableCell>
         
          <asp:TableCell>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox4" ErrorMessage="Require mobile number must be 10 digit" 
    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
    </asp:TableCell>
 </asp:TableRow>

   <asp:TableRow>
   <asp:TableCell ColumnSpan="3"><br />
   </asp:TableCell>
   </asp:TableRow>

   <asp:TableRow>
    <asp:TableCell>
       <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    </asp:TableCell>
       
      <asp:TableCell>
       <asp:TextBox ID="TextBox2" runat="server">
       </asp:TextBox> 
       </asp:TableCell>

      <asp:TableCell>
       
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ControlToValidate="TextBox2" validationexpression="^[a-zA-Z0-9'@&#.\s]{7,100}$"  Errormessage="Please enter a 4 digit number" >
    </asp:RegularExpressionValidator>
    </asp:TableCell>
   </asp:TableRow>

    <asp:TableRow>
    <asp:TableCell ColumnSpan="3"><br />
    </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
       <asp:TableCell ColumnSpan="3" >
        <asp:HiddenField ID="HiddenField3" runat="server" />
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
   <asp:TableCell>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" ForeColor="#003366" Text="Submit" 
            Height="30px" Width="95px" />
    </asp:TableCell>
    </asp:TableRow>
   
   <asp:TableRow>
   <asp:TableCell ColumnSpan="3"><br />
   </asp:TableCell>
   </asp:TableRow>
  
    </asp:Table>
    </center>
  
   <br />
   <br />

    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onrowdeleting="GridView1_RowDeleting1" 
        onselectedindexchanging="GridView1_SelectedIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:GridView>
   
     </form>

</asp:Content>
