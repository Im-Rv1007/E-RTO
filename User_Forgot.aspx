<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="User_Forgot.aspx.cs" Inherits="_Default" Title="User_Forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table>
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imageicon/ForgotPasswordIcon.png"
                        Width="300px" Height="80px" />
                </td>
            </tr>
            <tr>
                <td>
                    Username:
                </td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    Security Question:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>what is your fevourite game?</asp:ListItem>
                        <asp:ListItem>what is your pets name?</asp:ListItem>
                        <asp:ListItem>what is your favourite author?</asp:ListItem>
                        <asp:ListItem>what is your favourite color?</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    Answer:
                </td>
                <td style="margin-left: 40px">
                    &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Your Answer" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
