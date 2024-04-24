<%@ Page Title="" Language="C#" MasterPageFile="~/Homemaster.master" AutoEventWireup="true" CodeFile="imageupload.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
  <form runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Label ID="Label2" runat="server" Text="Historical Name"></asp:Label>

<asp:DropDownList ID="DropDownList1" runat="server" Height="19px" 
                 style="margin-left: 0px" Width="127px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
               </asp:DropDownList>

  <asp:Label ID="Label1" runat="server" Text="Description"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  
<asp:Button ID="Upload" runat="server" Text="Upload" onclick="Upload_Click" 
        style="height: 26px"  />
        </form>
      </asp:Content>