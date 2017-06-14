<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookDetail.aspx.cs" Inherits="BookDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WAD</title>

<style>
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
    <div>
    <img class="image" style="margin-left:-7px;margin-right:0px" src="Images/mybanner.jpg"/> 
    </div >
     
   
        <form style=" text-align:center; margin-top:-5px;margin-left:-7px;font-size:45px;font-family:'Book Antiqua';color:#efaeae;" runat="server">
           <div style="margin-top:-5px;margin-left:0px;margin-right:0px;background-color:#a80a0a;">
             ISBN Number: <asp:TextBox id="tb1" OnTextChanged="tb1_TextChanged" Width="25%" runat="server" />
            <asp:Button ID="b1" Text="Check another ISBN" EnableViewState="true" OnClick="b1_Click" runat="server" />
            </div>
            <div style="background-color:#1e0e0e">
            <asp:Image ID="ImageBook" width="20%" Height="30%" ImageAlign="Middle" runat="server"/>
            <br />
            </div>
            <div style="background-color:#a80a0a;">
           <asp:Table style="border-collapse:collapse;" runat="server" width="100%" BackColor="#a80a0a"  CellPadding="0"  CellSpacing="5">
            <asp:Tablerow>
                <asp:tablecell style="height:20px; text-align:right;"><asp:Label ID="lbl1" Text="Title:" Font-Size="Medium"  ForeColor="#efaeae" runat="server" /></asp:tablecell>
                <asp:tablecell style="text-align:left;"><asp:TextBox  ReadOnly="true" id="tb2" Width="50%" runat="server" /></asp:tablecell>
            </asp:Tablerow>
            <asp:tablerow>         
                <asp:tablecell style="height:20px; width:45%; text-align:right;"><asp:Label ID="Lbl2" Text="Author:" Font-Size="Medium"  ForeColor="#efaeae"  runat="server" /></asp:tablecell>
                <asp:tablecell style="text-align:left;"><asp:TextBox  ReadOnly="true" ID="tb3" Width="50%" runat="server" /></asp:tablecell>
            </asp:tablerow>
            <asp:tablerow>
               <asp:tablecell style="height:20px; text-align:right;"> <asp:Label ID="Lbl3" Text="Buy Price:" Font-Size="Medium"  ForeColor="#efaeae" runat="server" /></asp:tablecell>
               <asp:tablecell style="text-align:left;"><asp:TextBox ReadOnly="true" ID="tb4" width="50%" runat="server" /></asp:tablecell>
            </asp:tablerow>
            </asp:Table>
            <asp:Button id="Button2" Text="Sell This Book" OnClick="Button2_Click" runat="server" />
            <asp:Button id="Button3" Text="No Thanks" OnClick="Button3_Click" runat="server" />
        </div>
       </form>

   
</body>
</html>
