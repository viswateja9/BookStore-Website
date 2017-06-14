<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Isbn.aspx.cs" Inherits="Isbn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WAD</title>
    <style>

   .image{
        margin-top:-10px;
        width:100%;
    }
    </style>
</head>
<body>
     <img class="image" style="margin-left:-7px;margin-right:0px" src="Images/mybanner.jpg"/> 
    <p style="text-align:center;font-size:25px">How do I find my book's ISBN?</p>
    <p style="text-align:center">Your books ISBN number can usually be found on the back of the book above the barcode</p>
    <img style="display:block;margin-left:auto;margin-right:auto;height:250px;width:500px;" src="Images/barcode.jpg" />
    <p style="margin:auto;padding:10px;width:45%;">An ISBN can be a 10 or 13 digit number and wallstreet pricing tool accepts both.If your book does not have a barcode 
        or a sticker is covering the barcode,you can finally find the ISBN inside of the front title page where you would find publisher information.
        Books published before 1970 do not have ISBN numbers and we cannot buy them.
    </p>
     <div style="text-align:center">
        <br />
        <button onclick="location.href='Default.aspx'" style="height:40px;width:200px;" type="button">Back to Main Page</button>
    </div>
</body>
</html>
