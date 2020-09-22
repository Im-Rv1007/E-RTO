<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_Result.aspx.cs" Inherits="Test_Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Result</title>
</head>
<body >
    <form id="form1" runat="server" >
  
  <center>
        <asp:Image  ID="Image1" runat="server" ImageUrl="~/images/loser.png" />
    <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Lable"></asp:Label>
  
    <br />
  
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        onclick="Button1_Click" Text="Back" />
</center>  
  
    </form>
</body>
</html>
