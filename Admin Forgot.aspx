<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin Forgot.aspx.cs" Inherits="Default2" Title="Admin Forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
        <td colspan="3">
        <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Imageicon/ForgotPasswordIcon.png" width="300px" Height="80px"/>
        </td>

        </tr>
        <tr>
            <td>
                Username:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Sequrity que:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>what is your favourite game?</asp:ListItem>
                    <asp:ListItem>whats is your pats name?
                    </asp:ListItem>
                    <asp:ListItem>what is your favourite author?</asp:ListItem>
                    <asp:ListItem>what is your favourite color?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Answer:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="center" colspan="2" >
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Get your answer" 
                    onclick="Button1_Click" />
            </td>

        </tr>
        <tr>
            <td colspan="2" align="center" >
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
          
        </tr>
    </table>
  </center>
</asp:Content>

