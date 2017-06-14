<%@Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    .image2{
        float:left;
        height:50px;
        width:50px;
    }
   ul.nav { 
       margin-top:10px;	
list-style-type: none; 
padding-left:0;
margin-left:0px;
margin-right:0px;
} 
   ul.nav li{
       display:inline-block;
   }
   ul.nav a{
       border:1px;
       padding:10px 138px 10px 138px;
       font-size:20px;
       margin-left:0px;
      
   }
  </style>

</head>
<body>
    <img class="image" style="margin-left:-7px;margin-right:0px" src="Images/mybanner.jpg"/> 
   <form  runat="server">
     <div style="margin-left:-7px;margin-bottom:0px; margin-right:0px;margin-top:-5px;">
        <asp:Table runat="server" style="table-layout:fixed;background-color:#a80a0a;width:100%;height:100%">
        <asp:TableRow runat="server" style="margin-bottom:20px;">
            <asp:TableCell><a style="padding-left:0; font-size:20px;color:#efaeae;" href="FAQ.aspx">FAQ</a><p></p></asp:TableCell>
            <asp:TableCell><a style="padding-left:0;font-size:20px;color:#efaeae;" href="ContactUs.aspx">Contact Us</a><p></p></asp:TableCell>
            <asp:TableCell ><asp:LinkButton ID="ya" Text="Your Account" Font-Size="20px" OnClick="ya_Click" ForeColor="#efaeae" runat="server"></asp:LinkButton><p></p></asp:TableCell>
            <asp:TableCell ><asp:LinkButton ID="wys" Text="What You Sold" Font-Size="20px"  OnClick="wys_Click" ForeColor="#efaeae" runat="server"></asp:LinkButton><p></p></asp:TableCell>
            <asp:TableCell ID="registercell" ><a style="padding-left:0;font-size:20px;color:#efaeae;" href="RegistrationLogin.aspx">Register</a><p></p></asp:TableCell>
            <asp:TableCell ID="logincell" ><a style="padding-left:0;font-size:20px;color:#efaeae;" href="RegistrationLogin.aspx">Login</a><p></p></asp:TableCell>
            <asp:TableCell ID="logoutcell" Visible="false">
                <asp:Label  Text=""  ID="userlabel" Font-Size="20px" ForeColor="#efaeae" runat="server"></asp:Label><br />
                <asp:LinkButton Text="Log Out" Font-Size="20px" OnClick="Logout_Click" ForeColor="#efaeae" runat="server"></asp:LinkButton>
            </asp:TableCell>

         </asp:TableRow>
     </asp:Table>

   </div>
 
    <div style="margin-top:-5px;margin-left:-7px;margin-right:0px;background-color:#1e0e0e;">
        <br />
        <p style="margin-top:10px;color:#978b8b;text-align:center;font-size:30px">Want to do a quick check how much $$$$$$ you could get?</p>
           <label class="required" style="margin-top:-5px;margin-left:80px;font-size:45px;font-family:'Book Antiqua';color:#978b8b;" runat="server">Enter ISBN Number: </label>
           <asp:TextBox id="tb1" Width="25%" runat="server" />
            <asp:Button id="b1" Text="Get Quote" ValidationGroup="group1" OnClick="b1_Click" runat="server" />
            <asp:RequiredFieldValidator ID="isbnvd" ValidationGroup="group1" ForeColor="Red" Font-Size="Small"  ErrorMessage="ISBN field can't be left" runat="server" ControlToValidate="tb1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rvdisbn" ValidationGroup="group1" ForeColor="Red" Font-Size="Small"  ErrorMessage="ISBN should be in 978-9999999999 format" 
                runat="server" ControlToValidate="tb1" ValidationExpression="^978[-][0-9]{10}$"></asp:RegularExpressionValidator>
       <p style=" margin-top:-10px;color:#978b8b;">What is ISBN Number?<a style="color:#978b8b;" href="Isbn.aspx">Click Here</a></p>
    </div>
    <div style="margin-top:-23px;margin-left:-7px;margin-right:0px;background-color:#a80a0a;">
        <p style="font-size:24px;text-align:center;color:#efaeae;font-family:'Century Schoolbook'">Worry about shipping costs?We pay for your shipping.Yes!</p>
        <p style="margin-top:-20px;font-size:24px;text-align:center;color:#efaeae;font-family:'Century Schoolbook'">We have paid out millions of <span style="color:#0a0303;">$$$$$$</span></p>
    </div>
   <div style="margin-left:-7px;margin-bottom:-100px; margin-right:0px;margin-top:-24px;">
        <table style=" table-layout:fixed;background-color:#1e0e0e;width:100%;height:100%">
        <tr>
            <td><img class="image2" src="Images/check.png" /><p style="margin-top:6px;margin-left:50px;color:#978b8b;font-size:20px;text-align:left;font-family:'Times New Roman';"><span style="color:#be1717;">Best Price:</span>
                We update our prices<br /> continuously to offer the best prices<br /> online!</p></td>
            <td><img class="image2" src="Images/check.png" /><p style="margin-top:6px;margin-left:50px;color:#978b8b;font-size:20px;text-align:left;font-family:'Times New Roman';"><span style="color:#be1717;">Free shipping:</span>
                We always offer<br /> free shipping.Print a label <br />and you're done!</p></td>
            <td><img class="image2" src="Images/check.png" /><p style="margin-top:6px;margin-left:50px;color:#978b8b;font-size:20px;text-align:left;font-family:'Times New Roman';"><span style="color:#be1717;">Fast payment:</span>
                We pay fast.All payments are processed within three business days of your item arriving!</p></td>
        </tr>
    </table>
   </div>
    <div>
        <img  style="margin-top:100px;margin-left:-7px;margin-right:0px; margin-bottom:0px;width:100%" src="Images/allcards.png" />
    </div>
    <div style="width:100%; ">
       <asp:AdRotator Width="33%" ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
       <asp:XmlDataSource  ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
         <asp:AdRotator Width="33%" ID="AdRotator2" runat="server" DataSourceID="XmlDataSource2" />
       <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile2.xml"></asp:XmlDataSource>
         <asp:AdRotator Width="33%" ID="AdRotator3" runat="server" DataSourceID="XmlDataSource3" />
       <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/XMLFile3.xml"></asp:XmlDataSource>
      </div> 
   </form>
        
</body>
</html>
