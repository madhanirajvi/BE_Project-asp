<%@ Page Title="Tourism Help Desk//Login1//HistoricalPlaces1.aspx" Language="C#" MasterPageFile="~/Homemaster.master" AutoEventWireup="true" CodeFile="HistoricalPlaces1.aspx.cs" Inherits="HistoricalPlaces1" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server" align="center">
<center>
<asp:Table runat="server">

<asp:TableHeaderRow>
    <asp:TableHeaderCell ColumnSpan="3">
    <div class="Title"><h4 class="title" 
         style="opacity: 1; font-size: xx-large; color: #003366; text-transform: uppercase; font-variant: normal; font-style: inherit; font-weight: 600; font-family: Shruti; line-height: normal; vertical-align: top; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; letter-spacing: normal; background-color: #FFFFFF;">Places</h4></div>

     </asp:TableHeaderCell>
</asp:TableHeaderRow>
   
     
     <asp:TableRow>
        <asp:TableCell ColumnSpan="3" > 
             <asp:HiddenField ID="HiddenField1" runat="server" />
         </asp:TableCell>
     </asp:TableRow> 
   
    
       <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Historical Name"></asp:Label>
            </asp:TableCell>
      
            <asp:TableCell>
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:TableCell>
               
             <asp:TableCell>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Require name." ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
             </asp:TableCell> 
      </asp:TableRow> 
    
      <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

       <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="State" /></asp:Label>
            </asp:TableCell>
          
            <asp:TableCell>
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" 
                 style="margin-left: 0px" Width="127px" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
               </asp:DropDownList>
            </asp:TableCell>
       </asp:TableRow>

       <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

      <asp:TableRow>
            <asp:TableCell>
                  <asp:Label ID="Label6" runat="server" Text="City" /></asp:Label>
            </asp:TableCell>
        
             <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" 
                    style="margin-left: 0px" Width="127px" AutoPostBack="True">  
                    </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell></asp:TableCell>
      </asp:TableRow>

      <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
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
            <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Longitude"></asp:Label>
            </asp:TableCell>
    
            <asp:TableCell>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
             <asp:TableCell>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Require Longitude." ControlToValidate="TextBox1"></asp:RequiredFieldValidator> --%> 
            </asp:TableCell>
     </asp:TableRow>

     <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>
   
    <asp:TableRow>
        <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Latitude"></asp:Label>
       </asp:TableCell>
       
       <asp:TableCell>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
       </asp:TableCell>

        <asp:TableCell>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Require Latitude." ControlToValidate="TextBox3"></asp:RequiredFieldValidator> --%> 
        </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell>
              <asp:Label ID="Label7" runat="server" Text="To Show"/> </asp:Label>
        </asp:TableCell>
     
         <asp:TableCell>
       <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="246px" align="center">
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
            <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
      </asp:TableCell>
      
       <asp:TableCell>    
         <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </asp:TableCell>  
        <asp:TableCell></asp:TableCell>
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


  <asp:TableRow>
  <asp:TableCell ColumnSpan="3"><br />
  </asp:TableCell>
  </asp:TableRow>

    </asp:Table>
    </center>
     

     <br />
    <asp:GridView ID="GridView1" runat="server" 
         CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
    onrowdeleting="GridView1_RowDeleting" 
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