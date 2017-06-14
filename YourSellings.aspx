<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YourSellings.aspx.cs" Inherits="YourSellings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WAD</title>
    <style>
        .required:after { content:" *";
                          color:red;
        }
     #body {
width: 100%;
height: 100%;
}
    .image{
        margin-top:-10px;
        width:100%;
    }
</style>
</head>
<body>
    <form id="form1" style="text-align:center;" runat="server">
     <div>
    <img class="image" style="margin-left:-7px;margin-right:0px" src="Images/mybanner.jpg"/> 
    </div >
        <div style="margin-left:-7px;margin-bottom:0px; margin-right:0px;margin-top:-25px;height:30px; background-color:#a80a0a";>
        <p style=" font-size:20px";>
            User Name:
            &nbsp;&nbsp;<asp:TextBox ID="TextBox1"  runat="server" Font-Size="Medium" ForeColor="#ffcccc" BackColor="#A80A0A" BorderColor="#A80A0A" BorderStyle="None"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;
            User email:&nbsp;&nbsp;<asp:TextBox ID="TextBox2"  runat="server" Font-Size="Medium" ForeColor="#ffcccc" BackColor="#A80A0A" BorderColor="#A80A0A" BorderStyle="None"></asp:TextBox>
        </p>
           
        </div>

        <div>
            <asp:Table id="table1" runat="server" style="margin-left:-7px;color:#978b8b; table-layout:fixed;background-color:#1e0e0e;width:100%;height:100%"></asp:Table>
            <br />
            <asp:Button ID="main" runat="server" Text="Goto Main Page" OnClick="main_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="sell" runat="server" Text="Sell Another Book" OnClick="sell_Click" />
            </div>
       
   </form>
</body>
</html>
