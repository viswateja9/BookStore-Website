<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

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
    <div style="margin-left:-7px;margin-bottom:0px; margin-right:0px;margin-top:-5px;">
        <table style="table-layout:fixed;background-color:#a80a0a;width:100%;height:100%">
        <tr style="margin-bottom:20px;">
            <td><a style="padding-left:0; font-size:20px;color:#efaeae;" href="#">FAQ</a><p></p></td>
            <td><a style="padding-left:0;font-size:20px;color:#efaeae;" href="ContactUs.aspx">Contact Us</a><p></p></td>
            <td><a style="padding-left:0;font-size:20px;color:#efaeae;" href="#">Your Account</a><p></p></td>
            <td><a style="padding-left:0;font-size:20px;color:#efaeae;" href="#">What You Sold</a><p></p></td>
            <td><a style="padding-left:0;font-size:20px;color:#efaeae;" href="#">Register</a><p></p></td>
            <td><a style="padding-left:0;font-size:20px;color:#efaeae;" href="#">Login</a><p></p></td>
        </tr>
     </table>

   </div>
    <p style="margin-left:-7px; color:black;text-align:left;font-size:22px;font-weight:bold">FAQ</p>
    <p style="margin-left:-7px; color:black;text-align:left;font-size:18px">Below are some of our frequently asked questions.If you still cannot find and answer you are looking for please <span><a href="ContactUs.aspx">contact us!</a></span></p>
    <p style="font-size:18px;font-weight:bold"><a href="#I">ISBN's</a></p>
    <ul>
        <li><a href="#I1">What is an ISBN?</a></li>
        <li><a href="#I2">Where can I find the ISBN of my book?</a></li>
        <li><a href="#I3">What does an ISBN look like?</a></li>
    </ul>
    <p style="font-size:18px;font-weight:bold"><a href="#T">Types of Books</a></p>
    <ul>
        <li><a href="#T1">What types of books do you buy?</a></li>
        <li><a href="#T2">What type of books do you not buy? </a></li>
        <li><a href="#T3">Do you buy items marked not for resale?</a></li>
        <li><a href="#T4">Will you buy large quantities of books?</a></li>
        <li><a href="#T5">Will you buy several copies of a given book?</a></li>
    </ul>
    <p style="font-size:18px;font-weight:bold"><a href="#B">Book conditon</a></p>
    <ul>
        <li><a href="#B1">What sort of physical condition should the book be in?</a></li>
        <li><a href="#B2">Do you accept books that include CDs</a></li>
    </ul>
    <p style="font-size:18px;font-weight:bold"><a href="#G">Getting Paid</a></p>
    <ul>
        <li><a href="#G1">When and how do I get padi?</a></li>
        <li><a href="#G2">How long does it take to get paid?</a></li>
    </ul>
    <p style="font-size:18px;font-weight:bold"><a href="#S">Shipping</a></p>
    <ul>
        <li><a href="#S1">Does sell back you book pay for shipping?</a></li>
        <li><a href="#S2">What if I want to ship my books using UPS,Federal Express or the US Postal Service using First Class Mail? </a></li>
        <li><a href="#S3">Should I pay for tracking and insurance on my package of books?</a></li>
        <li><a href="#S4">What happens if I dont include some of the books on the packing slip?</a></li>
        <li><a href="#S5">What happens if you dont receive my books? </a></li>
    </ul>
    <p id="I" style="font-size:22px;font-weight:bold;font-style:italic">ISBNs</p>
    <p id="I1"><span style="font-weight:bold;">Q: What is an ISBN?</span><br />
A: ISBN is an abbreviation for “International Standard Book Number”. It's the standardized identification system for books and other media.<br /></p>
    <p id="I2"><span style="font-weight:bold;">Q: Where can I find the ISBN of my book?</span><br />
A: Publishers typically puts the ISBN on the back cover of the book, usually above or near the barcode. They are also shown on the copyright information page within the first few pages of the book. If the item is a single volume and part of a set, this would be a good place to look, as it shows the ISBN of each volume.<br /></p>
    <p id="I3"><span style="font-weight:bold;">Q: What does an ISBN look like?</span><br />
A: Usually the letters ISBN will be printed followed by a number with sections separated by hyphens, e.g. ISBN 0-89123-145-2
</p>
    <p id="T" style="font-size:22px;font-weight:bold;font-style:italic">Types of books<br /></p>
    <p id="T1"><span style="font-weight:bold;">Q:What types of books do you buy?</span><br />A: We buy books that meet our condition standards, are available for resale and have at least a little market value. Our pricing page will tell you whether we are buying a specific book once you've entered the ISBN. Items that we typically do not buy are: Older books, books without ISBNs, encyclopedia sets, magazines, music books, comic books, books that are marked as “not for resale,” books that are in poor condition, outdated text books, etc.<br /></p>
    <p id="T2"><span style="font-weight:bold;">Q:What types of books do you NOT buy?</span><br />
        We do not buy
        <ul>
            <li>International Edition Textbooks</li>
            <li>Instructor Edition Textbooks</li>
            <li>Examination copies</li>
            <li>Teacher's Edition</li>
            <li>Advanced Readers Copy (ARC)</li>
            <li>Items without an ISBN printed on the book</li>
            <li>Items that are sexually explicit and/or offensive</li>
            <li>Non book items such as Calendars and board games (even though they may have an ISBN)</li>
            <li>Encyclopedia Sets</li>
        </ul>
    </p>
    <p id="T3"><span style="font-weight:bold;">Q: Do you buy items marked Not for Resale?</span><br />
A: No we do not buy any items marked not for resale, for example, but not limited to advanced readers copies, international editions, instructors editions, and examination copies. This information is often hidden by heavy use of tape and stickers, so be cautious. They will be rejected upon arrival.<br /></p>
    <p id="T4"><span style="font-weight:bold;">Q:Will you buy large quantities of books?</span><br />
A: We do buy books in bulk. Please contact us about letting us know the books that you have and amount you are interested in selling. Include the ISBN of each title and quantity of each title - if you could put the information into a table such as Microsoft Excel (MS Excel 2007 or earlier) that would be appreciated. We will let you know if we are willing to buy the items and how many.<br /></p>
    <p id="T5"><span style="font-weight:bold;">Q:Will you buy several copies of a given book?</span><br />
A: We do buy multiple copies of the same book. How many depends on the demands of our buyers. If you have more than one copy of any book, please email us to see if we are buying them and how many. Include in the email the title, the ISBN and the quantity of each title. Also, if you already have an order number created, include that as well.<br /></p>

     <p id="B" style="font-size:22px;font-weight:bold;font-style:italic">Book Condition<br /></p>
    <p id="B1"><span style="font-weight:bold;">Q: What sort of physical condition should the books be in?</span><br />A: Books must be in very good condition which means that books must meet the following criteria:
        <ul>
            <li>No tears and minimal wear to the cover, or pages.</li>
            <li>Corners of covers should not be bent, dented or frayed</li>
            <li>Minimal wear to the binding - pages should be firmly attached to the binding - bindings cannot be broken</li>
            <li>A small amount of writing, underlining or highlighting of pages is okay, as long as it is on fewer than 30% of the book's pages. However, workbooks and study guides must be clean and unwritten in (no answers filled in already)</li>
            <li>No missing pages</li>
            <li>No liquid damage – warped, wavy pages are a sign of liquid damage</li>
            <li>No fire or smoke damage</li>
            <li>No strong odor of any kind (including musty or cigarette odor, for example)</li>
            <li>If book originally came with a CD-Rom, the original CD-Rom must accompany the book when shipped to us. The CD must be in working condition</li>
            <li>No advance reading copies, uncorrected proofs, and/or promotional or screener copies of books</li>
            <li>No partial sets (ie, only sending volume 1 of a 2 volume set). Please make sure you use the correct ISBN if it is a single volume and/or full set! This is a common error!</li>
            <li>No items with the access code exposed. This includes standalone items (for example an item that is an access code for online class like Mathlab) as well as items which include a supplementary access code (for example a textbook packaged with an associated access code for an accompanying online class).</li>
        </ul>
        Items we receive that do not meet these requirements are not eligible for payment. The quote will be deducted from the total amount - so please make good judgment when assessing your items and please pack your books carefully. 
<br /></p>
    <p id="B2"><span style="font-weight:bold;">Q: What happens if you do not accept one or more of my books?</span><br />A:We will inform you immediately of any issues via email. Issues will put your payment on hold until they are resolved by your response. We will either recycle the item and deduct the quote from the total, or send the item(s) back for a return processing fee of $3.99. This fee can be deducted directly from your total quote, or sent via PayPal.
        <br /> To ensure that books are not damaged please follow these guidelines:
        <ul>
            <li>Use a sturdy box. Thin boxes (e.g., cereal boxes) may not protect your books in shipment.</li>
            <li>Do not use packing peanuts for packing material. Packing peanuts shift during transit, damage pages and often become crushed by the weight of the books during shipment! A large amount of shipments we've received using packing peanuts result in several damaged books.</li>
            <li>Choose the right size of box. Huge boxes of books nearly always result in damaged books</li>
            <li>Keep the weight of each box and books under 35lbs. Heavy boxes nearly always result in damaged books</li>
            <li>Use wadded up newspaper to fill gaps. Newspaper can be wadded up tightly and provide protection</li>
        </ul>
<br /></p>

    <p id="G" style="font-size:22px;font-weight:bold;font-style:italic">Getting Paid<br /></p>
    <p id="G1"><span style="font-weight:bold;">Q: When and how do I get paid?</span><br />A: When we receive the box of books and confirm its contents against the order, we process your payment in our next PayPal or check run (usually within 2 business days after the order is processed<br /></p>
    <p id="G2"><span style="font-weight:bold;">Q: How long does it take to get paid?</span><br />A: Since we are unable to pay you until we receive your items, the real variable in the amount of time to get paid is the transit times. If you choose to ship using our FedEx Service we will receive your items in 2-5 days. If you choose the USPS media mail option we will receive your items in 7-21 days. We attempt to check in all books within two business days of arrival, although this may take longer depending on the number of orders we receive at any given time. For quickest payment use PayPal! <br /></p>

    
    <p id="S" style="font-size:22px;font-weight:bold;font-style:italic">Shipping<br /></p>
    <p id="S1"><span style="font-weight:bold;">Q: Who pays for Shipping?</span><br />A: Shipping is always 100% free when you use one the shipping label provided after checkout!<br /></p>
    <p id="S2"><span style="font-weight:bold;">Q: What if I want to ship my items through a different carrier?</span><br />A: We will gladly accept your packages no matter how you decide to ship them to us. However if you decide not to use our free shipping label, you will be responsible for the shipping costs.<br /></p>
    <p id="S3"><span style="font-weight:bold;">Q: Should I pay for insurance on my package of books?</span><br />A: Insurance is included with our pre-paid shipping label up to $100 dollars.<br /></p>
    <p id="S4"><span style="font-weight:bold;">Q: What happens if I don't include some of the books on the packing slip?</span><br />A: We'll contact you via email to confirm that the books were not shipped. If you purchased insurance and your package is missing books we will work with you to recover the cost of the books from the postal service. Only the sender of items (in this case, you) can recover the cost from the postal service. We will help you by providing an accurate accounting of the value.<br /></p>
    <p id="S5"><span style="font-weight:bold;">Q: What happens if you don't receive my books?</span><br />A: If we can verify that you shipped out the items and you used our Free label - we will file a claim on your behalf with the shipping carrier. <br /></p>


</body>
</html>
