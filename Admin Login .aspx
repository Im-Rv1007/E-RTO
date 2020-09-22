<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin Login .aspx.cs" Inherits="_Default" Title="Admin Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    

    <style type="text/css">
        .style1
        {
            width: 63px;
        }
    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
        <td rowspan="7" class="style1">
        <img src="Made Img/images.jpg" alt="Image" height="210px" width="150"/>
        </td>
            <td colspan="3" align="center">
                <h2>Admin Login</h2></td>
                
                 <%--<h2><img src="images/login.png" />  Admin Login</h2>--%>
        </tr>
        <tr>
            <td>
                Username:</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password:</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" style="margin-left: 80px">
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
            </td>
            
        </tr>
        <tr>
        <td colspan="3">
            &nbsp;</td>
        
        </tr>
        <tr>
        <td colspan="3">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin Forgot.aspx">Forgot 
            Password</asp:HyperLink>        
        </td>
        
        </tr>
        
    </table>
</center>    
</asp:Content>

