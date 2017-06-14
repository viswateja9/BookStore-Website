<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WAD</title>
    <style>
        .image{
          
        margin-top:-10px;
        margin-left:auto;
        margin-right:auto;
        width:60%;
    }
        </style>
    

</head>
<body>
    <img style="display:block;margin-left:auto;margin-right:auto;width:65%;" src="Images/mybanner.jpg"/>
    <div>
    <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("GET", "contactUs.xml", false);
        xmlhttp.send();
        xmlDoc = xmlhttp.responseXML;
        var x = xmlDoc.getElementsByTagName('info');
        var x1 = x[0].getAttribute('contact-phone');
        var x2 = x[0].getAttribute('contact-email');
        var x3 = x[0].getAttribute('address-street');
        var x4 = x[0].getAttribute('address-city');
        var x5 = x[0].getAttribute('address-state');
        var x6 = x[0].getAttribute('address-zip');
     
        document.write("<table align='center'><tr><td width=150>Contact Phone</td>");
        document.write("<td width=150>" + x1 + "</td></tr>");
        document.write("<tr><td>Contact Email</td><td>" + x2 + "</td></tr>");
        document.write("<tr><td>Mailing Address</td><td>" + x3 + "<br/>" + x4 + ", " + x5 + " " + x6 + "</td></tr></table>");
        //document.write("<input type='button' align='center' value='main'");
     </script>
    </div>
    <div style="text-align:center">
        <br />
        <form action="Default.aspx" method="get">
        <button onclick="location.href='Default.aspx'" style="height:40px;width:200px;" type="button">Back to Main Page</button>
        </form>
    </div>
    
</body>
</html>
