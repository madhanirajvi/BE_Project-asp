<%@ Page Title="Tourism Help Desk//Login1//City1.aspx" Language="C#" MasterPageFile="~/Homemaster.master" AutoEventWireup="true" CodeFile="City1.aspx.cs" Inherits="Citym" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server" >
    
 <form id="form1" runat="server" align="center" enableviewstate="True">
 
  <center>
     <asp:Table ID="Table1" runat="server" align="center">

     <asp:TableHeaderRow > 
      <asp:TableHeaderCell ColumnSpan="3" RowSpan="2">
       <div class="Title"><h4 class="title" 
         style="opacity: 1; font-size: xx-large; color: #003366; text-transform: uppercase; font-variant: normal; font-style: inherit; font-weight: 600; font-family: Shruti; line-height: normal; vertical-align: top; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFFFF;">City</h4></div>
         </asp:TableHeaderCell>
         </asp:TableHeaderRow>
   
   
   <asp:TableRow>
    <asp:TableCell>
    <asp:HiddenField ID="HiddenField2" 
            runat="server" />

            </asp:TableCell>
           
  </asp:TableRow>
   
 
  
       <asp:TableRow >
       <asp:TableCell  >
       <asp:Label  ID="Label2" runat="server" Text=" City">
       </asp:Label>
       </asp:TableCell>
    
       <asp:TableCell>
        <asp:TextBox ID="TextBox2" placeholder="City name" runat="server" Height="19px" 
            style="margin-left: 0px" Width="127px" AutoPostBack="true">
            </asp:TextBox>
            </asp:TableCell>

       <asp:TableCell>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Require City Name" ControlToValidate="TextBox2">
       </asp:RequiredFieldValidator>
  </asp:TableCell>
    </asp:TableRow>

  <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

      <asp:TableRow >
      <asp:TableCell> 
      <asp:Label align="right" ID="Label4" runat="server" Text=" State"></asp:Label>
       </asp:TableCell> 
       
        <asp:TableCell>
        <div><asp:DropDownList ID="DropDownList1"  runat="server" Height="20px" 
            style="margin-left: 0px" Width="130px" AutoPostBack="True">
            

        </asp:DropDownList>
        </div>
        </asp:TableCell>

        <asp:TableCell>
        </asp:TableCell>
        </asp:TableRow>

   <asp:TableRow>
   <asp:TableCell>
   <asp:HiddenField ID="HiddenField1" runat="server" />
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
        <asp:TableCell ColumnSpan="3">
        <asp:Button ID="Button1" runat="server" ForeColor="#003366" align="right" onclick="Button1_Click1" 
            Text="Submit" Height="30px" Width="95px" />
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
   <asp:GridView ID="GridView1" runat="server" 
         CellPadding="4" 
        ForeColor="#333333" GridLines="None" onrowdeleting="GridView1_RowDeleting" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
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