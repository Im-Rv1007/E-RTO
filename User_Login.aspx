<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="User_Login.aspx.cs" Inherits="_Default" Title="User_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table>
            <tr>
            <td rowspan="7">
        <img src="Imageicon/login1.png" alt="Image" height="210px" width="150"/>
        </td>
                    <td align="center" colspan="3">
                        <h2>
                            User Login</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        Username:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                            Font-Size="Medium" ForeColor="Red">New Registration</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User_Forgot.aspx" 
                            Font-Size="Medium" ForeColor="Red">Forgot Password</asp:HyperLink>
                    </td>
                </tr>
        </table>
    </center>
</asp:Content>
