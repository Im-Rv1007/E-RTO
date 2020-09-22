<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 1000px;
            height: 500px;
        }
        .style3
        {
            width: 100px;
        }
        .style2
        {
            width: 698px;
            height: 274px;
        }
        .style4
        {
            width: 568px;
            height: 82px;
        }
        .style5
        {
            width: 336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  
    <table align="center" cellspacing="0" class="style1">
        <tr>
            <td class="style3" valign="top">
                &nbsp;</td>
            <td valign="top">
                <br />
                <table align="left" class="style2">
                    <tr>
                        <td valign="top">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    F_Name:
                                    <asp:Label ID="F_NameLabel" runat="server" Text='<%# Eval("F_Name") %>' />
                                    <br />
                                    L_Name:
                                    <asp:Label ID="L_NameLabel" runat="server" Text='<%# Eval("L_Name") %>' />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <table class="style4">
                                        <tr>
                                            <td class="style5">
                                                &nbsp;</td>
                                            <td valign="top">
                                                <asp:Image ID="Image1" runat="server" 
                                                    ImageUrl='<%# "~/photo/"+ Eval("photo") %>' />
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    Address:
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                    <br />
                                    City:
                                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                                    <br />
                                    Mobile:
                                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                                    <br />
                                    photo:
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
                                SelectCommand="SELECT F_Name, L_Name, Address, City, Mobile, photo FROM Registration WHERE (Reg_id=@Reg_id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Reg_id" SessionField="reg_id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
  
    </form>
</body>
</html>
