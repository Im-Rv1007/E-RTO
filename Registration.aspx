<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Default2" Title="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 203px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table>
         <tr>
            <td colspan="3" align="center">
                <h2>Registration </h2></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <%--Reg. Id :--%></td>
            <td class="style1">
                <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Username :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter username.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password :
                </td>
            <td style="margin-left: 40px" class="style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>First Name :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter First Name.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Last Name.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Address.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>City :</td>
            <td >
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter City.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile :</td>
            <td >
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter Mobile No..">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Plz Enter Valid Mobile no." 
                    MaximumValue="9999999999" MinimumValue="0000000000">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>E mail :</td>
            <td >
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter E-mail Address.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Plz.Enter Valid E-mail Address." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Security question :</td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>What is your Favourite author?</asp:ListItem>
                    <asp:ListItem>What is your favourite color?</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Security answer :</td>
            <td >
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter Sequrity Answer">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Status :</td>
            <td >
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >Document :</td>
            <td >
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td >Upload Photo :</td>
            <td >
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td ></td>
            <td >
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td >
                </td>
        </tr>
        <tr>
            <td colspan="3"; align="center" style="margin-left: 40px">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />    
                &nbsp;    
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3"; align="center" style="margin-left: 40px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

