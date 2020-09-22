<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result_Form.aspx.cs" Inherits="Default3" Title="Result_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
<center>
    <form id="form1" runat="server">
      <asp:DataList ID="DataList1" runat="server" DataKeyField="Reg_id" 
        DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" 
          BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
          GridLines="Both">
          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <ItemTemplate>
            <br />
            
            <table style="width:100%;">
                <tr>
                    <td>
                        Name :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("f_name") %>' />
                        </a>&nbsp;<a href="#"><asp:Label ID="Expr2Label" runat="server" 
                            Text='<%# Eval("l_name") %>' />
                        </a>
                    </td>
                    <td rowspan="6">
                        <asp:Image ID="Image1" ImageUrl='<%# "~/photo/"+ Eval("photo") %>' runat="server" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;Address :
                    </td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr3Label" runat="server" Text='<%# Eval("address") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        City :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr4Label" runat="server" Text='<%# Eval("city") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mobile :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr5Label" runat="server" Text='<%# Eval("mobile") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr6Label" runat="server" Text='<%# Eval("e_mail") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
          <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
          <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
        SelectCommand="SELECT F_Name, L_Name, Address, City, Mobile, E_mail, photo, Reg_id FROM Registration WHERE (Reg_id = @id)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>



                        <asp:Label ID="lblScore" runat="server" Font-Bold="False" 
        ForeColor="Black">lblScore</asp:Label>
            

    
    </form>
    </center>
</body>
</html>
