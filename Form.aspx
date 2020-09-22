<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Default2" Title="Download Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
        Font-Size="Medium" NavigateUrl="~/Eng_Form.aspx">Download Eng Form</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
        Font-Size="Medium" NavigateUrl="~/Guj_Form.aspx">Download Guj Form</asp:HyperLink>
</center>


</asp:Content>

