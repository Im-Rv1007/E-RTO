<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="_Default" Title="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
        <tr>
            <td align ="center" colspan="3">
                <h2>Contact_Us</h2></td>
        </tr>
        <tr>
            <td>
                Cont. Id:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Cont. Date:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Name:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage=" pls Enetr name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mobile No:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter mobile no">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter valid range" 
                    MaximumValue="9999999999" MinimumValue="1111111111">*</asp:RangeValidator>
            
                </td>
        </tr>
        <tr>
            <td>
                E mail:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage=" pls Enetr E_Mail address">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="enter valid e_mail add.." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Message:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="center" colspan="3">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" >
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    style="height: 26px" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

