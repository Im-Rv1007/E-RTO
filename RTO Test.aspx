<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RTO Test.aspx.cs" Inherits="_Default" Title="RTO Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 20px;           
            text-align:center;
            vertical-align:middle;
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<table style="width:100%;">
        <tr>
            <td>
            
                <table border='1px'>
                    <tr>
                        <td class="style1">
                            <asp:Label  ID="lbl1" runat="server" Text="1" Height="20px" Width="30px"></asp:Label>
                                            </td>
                        <td class="style1">
                            <asp:Label ID="lbl2" runat="server" Text="2" Height="20px" Width="30px" ></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl3" runat="server" Text="3" Height="20px" Width="30px"></asp:Label></td>
                            <td class="style1">
                                <asp:Label ID="lbl4" runat="server" Text="4" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl5" runat="server" Text="5" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl6" runat="server" Text="6" Height="20px" Width="30px"></asp:Label></td>
                            <td class="style1">
                            <asp:Label ID="lbl7" runat="server" Text="7" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl8" runat="server" Text="8" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl9" runat="server" Text="9" Height="20px" Width="30px"></asp:Label></td>
                            <td class="style1">
                            <asp:Label ID="lbl10" runat="server" Text="10" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl11" runat="server" Text="11" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl12" runat="server" Text="12" Height="20px" Width="30px"></asp:Label></td>
                            <td class="style1">
                            <asp:Label ID="lbl13" runat="server" Text="13" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl14" runat="server" Text="14" Height="20px" Width="30px"></asp:Label></td>
                        <td class="style1">
                            <asp:Label ID="lbl15" runat="server" Text="15" Height="20px" Width="30px"></asp:Label></td>
                    </tr>
                </table>
            </td>
            <td rowspan="3">
                
            </td>
        </tr>
        <tr>
            <td>
                <table style="width:700px" border="0px" cellpadding="5">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Que." Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label></td>
                        <td colspan="2">
                            <asp:Label ID="lbl_que" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red" Text="The Following sign represent"></asp:Label>
                                <br />
                            <asp:Label ID="lbl_que_g" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red" Text="The Following sign represent"></asp:Label>
                        </td>
                        <td rowspan="2" style="width:130px">
                            <asp:RadioButton ID="opteng" runat="server" GroupName="lang" Text="English" 
                                Font-Bold="True" AutoPostBack="True" Checked="True" 
                                oncheckedchanged="opteng_CheckedChanged" />
                            &nbsp;<br />
                            <asp:RadioButton ID="optguj" runat="server" GroupName="lang" Text="Gujarati" 
                                Font-Bold="True" AutoPostBack="True" oncheckedchanged="optguj_CheckedChanged" />
                            <br />
                            <asp:RadioButton ID="optboth" runat="server" GroupName="lang" Text="Both" 
                                Font-Bold="True" AutoPostBack="True" 
                                oncheckedchanged="optboth_CheckedChanged" />
                                            </td>
                    </tr>
                    <tr>
                        <td style="width:100px" >
                           </td>
                        <td style="width:500px">
                            &nbsp;</td>
                        <td style="width:100px">
                            </td>
                    </tr>
                    <tr>
                        <td align="center">
                            1</td>
                        <td>
                            <asp:Label ID="lbl_ans1" runat="server" Text="stop"></asp:Label>
                            <br />
                            <asp:Label ID="lbl_ans1_g" runat="server" Text="stop"></asp:Label>
                            
                        </td>
                        <td align="center">
                            <asp:RadioButton ID="opt1" runat="server" GroupName="opt"  />
                        </td>
                        <td rowspan="3" align="center">
                            
                           <asp:Image ID="Image1" runat="server" Height="100px" 
                    ImageUrl="~/Traffic_img/1_1.png" Width="100px" /> 
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            2</td>
                        <td >
                            <asp:Label ID="lbl_ans2" runat="server" Text="No Parking"></asp:Label>
                             <br />
                            <asp:Label ID="lbl_ans2_g" runat="server" Text="stop"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:RadioButton ID="opt2" runat="server" GroupName="opt" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            3</td>
                        <td>
                            <asp:Label ID="lbl_ans3" runat="server" Text="Hospital ahead"></asp:Label>
                             <br />
                            <asp:Label ID="lbl_ans3_g" runat="server" Text="stop"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:RadioButton ID="opt3" runat="server" GroupName="opt" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                        <td align="center">
                            <asp:Label ID="lblTime" runat="server" Font-Bold="True" Font-Size="Medium" 
                                Text="40"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl_c_ans" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" align="center">
                            <asp:Button ID="Button1" runat="server" Text="Next" onclick="Button1_Click" 
                                style="height: 26px" />
                        </td>
                        <td align="center">
                            <asp:Label ID="lbl_no_of_que" runat="server" Text="0"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" align="center">
                            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="q_id" >
                                <Columns>
                                    <asp:BoundField DataField="q_id" HeaderText="q_id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="q_id" />
                                    <asp:BoundField DataField="q_name" HeaderText="q_name" 
                                        SortExpression="q_name" />
                                    <asp:BoundField DataField="opt_1" HeaderText="opt_1" SortExpression="opt_1" />
                                    <asp:BoundField DataField="opt_2" HeaderText="opt_2" SortExpression="opt_2" />
                                    <asp:BoundField DataField="opt_3" HeaderText="opt_3" SortExpression="opt_3" />
                                    <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                </Columns>
                            </asp:GridView>
                            <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox>
                            <br />
                        </td>
                    </tr>
                    
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>
    
 <script type="text/javascript">
    window.onload=function(){ 
    var counter = 40;
    var interval = setInterval(function() {
        counter--;
        $("#ctl00_ContentPlaceHolder1_lblTime").text(counter);
        if (counter == 0) {
            redirect();
            clearInterval(interval);
        }
    }, 1000);

};

function redirect() {
    document.aspnetForm.submit();
}
</script>       
</asp:Content>

