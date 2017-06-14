<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpassword.aspx.cs" Inherits="Forgotpassword" %>

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
    <form id="form1" runat="server">
    <div>
    <img class="image" style="margin-left:-7px;margin-right:0px" src="Images/mybanner.jpg"/> 
    </div >
           <div style="margin-left:-7px;margin-top:-25px;width:100%;background-color:#1e0e0e;">
            <p style="font-size:25px;color:#978b8b;text-align:left;">Personal information</p>
               <label style="color:#978b8b;width:100px;display:inline-block;">Email Address</label>
               <asp:TextBox ID="tb1"  Width="25%" runat="server" />
                <asp:Button ID="b2" Text="Recover Password" OnClick="b2_Click" runat="server" /><br />
               <a style="padding-left:10em; font-size:20px;color:#efaeae;" href="Default.aspx">Go Back to Main Page</a>
               </div>
    </form>
</body>
</html>
