<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccInfo.aspx.cs" Inherits="AccInfo" %>

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
        <div style="margin-left:-7px;margin-bottom:0px; margin-right:0px;margin-top:-25px;height:30px; background-color:#a80a0a";>
        <p style="font-size:20px";>
            Your Account Information
        </p>
        </div>
             
        <div style="margin-left:-7px;margin-top:-25px;width:100%;background-color:#1e0e0e;">
            <p style="font-size:25px;color:#978b8b;">Personal information</p>
             <p style="font-size:18px;color:#978b8b;">If you wish, you can update the account information and then click 'Update' or 'Update and Goto Main Page' button below </p>
             <label class="required" style="color:#978b8b;width:110px;display:inline-block;">Your Name</label>
             <asp:TextBox ID="tb1" ValidationGroup="Group1" Width="25%" runat="server" />
            <br /><br />
            <label class="required" style="color:#978b8b;width:110px;display:inline-block;">Address Line 1</label>
            <asp:TextBox ID="TextBox1" ValidationGroup="Group1" Width="50%" runat="server" />
            <asp:RequiredFieldValidator ID="addrvd" ValidationGroup="Group1" ForeColor="Red" Font-Size="Small"  ErrorMessage="Address is required" runat="server" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br /><br />
          <label  style="color:#978b8b;width:110px;display:inline-block;">Address Line 2</label>
             <asp:TextBox ID="TextBox2"  Width="50%" runat="server" />
            <br /><br />
            <label class="required" style="color:#978b8b;width:110px;display:inline-block;">City</label>
            <asp:TextBox ID="TextBox3" ValidationGroup="Group1" Width="25%" runat="server" />
            <asp:RequiredFieldValidator ID="cityvd"  ValidationGroup="Group1" ForeColor="Red" Font-Size="Small"  ErrorMessage="City is required" runat="server" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <br /><br />
            <label class="required" style="color:#978b8b;width:110px;display:inline-block;">Zip</label>
             <asp:TextBox ID="TextBox4" ValidationGroup="Group1" Width="15%" runat="server" />
             <asp:RequiredFieldValidator ID="zipvd" ValidationGroup="Group1" ForeColor="Red" Font-Size="Small"  ErrorMessage="Zip is required" runat="server" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="ziprvd" ValidationGroup="Group1"  ForeColor="Red" Font-Size="Small"  ErrorMessage="Zip should be in XXXXX format" 
                runat="server" ControlToValidate="TextBox4" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
            <br /><br />
            <label  style="color:#978b8b;width:110px;display:inline-block;">State</label>
             <asp:DropDownList ID="d1" style="width:50px;" runat="server">
                 <asp:ListItem Value="AL"></asp:ListItem>
                 <asp:ListItem Value="AK"></asp:ListItem>
                 <asp:ListItem Value="AZ"></asp:ListItem>
                 <asp:ListItem Value="AR"></asp:ListItem>
                 <asp:ListItem Value="CA"></asp:ListItem>
                 <asp:ListItem Value="CO"></asp:ListItem>
                 <asp:ListItem Value="CT"></asp:ListItem>
                 <asp:ListItem Value="DE"></asp:ListItem>
                 <asp:ListItem Value="FL"></asp:ListItem>
                 <asp:ListItem Value="GA"></asp:ListItem>
                 <asp:ListItem Value="HI"></asp:ListItem>
                 <asp:ListItem Value="ID"></asp:ListItem>
                 <asp:ListItem Value="IL"></asp:ListItem>
                 <asp:ListItem Value="IN"></asp:ListItem>
                 <asp:ListItem Value="IA"></asp:ListItem>
                 <asp:ListItem Value="KS"></asp:ListItem>
                 <asp:ListItem Value="KY"></asp:ListItem>
                 <asp:ListItem Value="ME"></asp:ListItem>
                 <asp:ListItem Value="MD"></asp:ListItem>
                 <asp:ListItem Value="MA"></asp:ListItem>
                 <asp:ListItem Value="MI"></asp:ListItem>
                 <asp:ListItem Value="MN"></asp:ListItem>
                 <asp:ListItem Value="MS"></asp:ListItem>
                 <asp:ListItem Value="MO"></asp:ListItem>
                 <asp:ListItem Value="MT"></asp:ListItem>
                 <asp:ListItem Value="NE"></asp:ListItem>
                 <asp:ListItem Value="NV"></asp:ListItem>
                 <asp:ListItem Value="NH"></asp:ListItem>
                 <asp:ListItem Value="NJ"></asp:ListItem>
                 <asp:ListItem Value="NM"></asp:ListItem>
                 <asp:ListItem Value="NY"></asp:ListItem>
                 <asp:ListItem Value="NC"></asp:ListItem>
                 <asp:ListItem Value="OH"></asp:ListItem>
                 <asp:ListItem Value="OK"></asp:ListItem>
                 <asp:ListItem Value="OR"></asp:ListItem>
                 <asp:ListItem Value="PA"></asp:ListItem>
                 <asp:ListItem Value="RI"></asp:ListItem>
                 <asp:ListItem Value="SC"></asp:ListItem>
                 <asp:ListItem Value="SD"></asp:ListItem>
                 <asp:ListItem Value="TN"></asp:ListItem>
                 <asp:ListItem Value="TX"></asp:ListItem>
                 <asp:ListItem Value="UT"></asp:ListItem>
                 <asp:ListItem Value="VT"></asp:ListItem>
                 <asp:ListItem Value="VA"></asp:ListItem>
                 <asp:ListItem Value="WA"></asp:ListItem>
                 <asp:ListItem Value="WV"></asp:ListItem>
                 <asp:ListItem Value="WI"></asp:ListItem>
                 <asp:ListItem Value="WY"></asp:ListItem>
                 <asp:ListItem Value="VI"></asp:ListItem>
                 <asp:ListItem Value="PR"></asp:ListItem>

             </asp:DropDownList>
            <br /><br />
               <p style="font-size:25px;color:#978b8b;">Login information</p>
            <label class="required" style="color:#978b8b;width:130px;display:inline-block;">Email Address</label>
             <asp:TextBox ID="TextBox5" ValidationGroup="Group1" Width="25%" runat="server" />
            <asp:RequiredFieldValidator ValidationGroup="Group1" ID="emailvd" ForeColor="Red" Font-Size="Small"  ErrorMessage="Email is required" runat="server" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
          <%-- <asp:RegularExpressionValidator ID="emailrvd" ForeColor="Red" Font-Size="Small"  ErrorMessage="Email should be in correct format" 
                runat="server" ControlToValidate="TextBox5" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
           --%>
            <br /><br /> 
            <label class="required" style="color:#978b8b;width:130px;display:inline-block;">Password</label>
             <asp:TextBox ID="TextBox6"  ValidationGroup="Group1"   Width="25%" runat="server" />
            <asp:RequiredFieldValidator  ValidationGroup="Group1" ID="passvd" ForeColor="Red" Font-Size="Small"  ErrorMessage="Password is required" runat="server" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="passrvd" ForeColor="Red" Font-Size="Small"  ErrorMessage="Password should be in correct format" 
                runat="server" ControlToValidate="TextBox6" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,10}$"></asp:RegularExpressionValidator>
          
            <br /><br />  
            <label style="color:#978b8b;width:130px;display:inline-block;">Confirm Password</label>
             <asp:TextBox ID="TextBox7" ValidationGroup="Group1"   Width="25%" runat="server" />
            <asp:RequiredFieldValidator  ValidationGroup="Group1" ID="confirmpassvd" ForeColor="Red" Font-Size="Small"  ErrorMessage="Confirmation required" runat="server" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="comparevd" ValidationGroup="Group1" ForeColor="Red" Font-Size="Small"  ErrorMessage="Passwords does not match" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7"></asp:CompareValidator>
             <br /><br />  
            <p style="font-size:25px;color:#978b8b;">Pay me by</p>
            <asp:RadioButton ID="rb1" runat="server" GroupName="payment"/>
            <label style="color:#978b8b;width:100px;display:inline-block;">Check</label>
            <asp:RadioButton ID="rb2" runat="server" GroupName="payment" />
            <label style="color:#978b8b;width:100px;display:inline-block;">Paypal</label>
            <br /><br />
            <asp:Button ID="b1" Text="Goto Main Page" OnClick="b1_Click" runat="server" />
            <asp:Button ID="b2" ValidationGroup="Group1" onclick="b2_Click" Text="Update" runat="server" />
            <asp:Button ID="b3" ValidationGroup="Group1" onclick="b3_Click" Text="Update and Goto Main Page" runat="server" />

         </div>
      
    </form>
</body>
</html>
