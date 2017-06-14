using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class BookDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
       if (!Page.IsPostBack)
        {
            string filename = (String)Session["isbnnum"];
            filename = filename + ".png";
            string url = "~/Images/" + filename;
            ImageBook.ImageUrl = url;
            tb1.Text = (String)Session["isbnnum"];
            tb2.Text = (String)Session["Title"];
            tb3.Text = (String)Session["Author"];
            string amount = "$" + (String)Session["Price"];
            tb4.Text = amount;

        }
       if (Session["fromLogin"] != null && (bool)Session["fromLogin"])
       {
           Button2.Enabled = true;
          
       }
       else
           Button2.Enabled = false;
      
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        string[] isbn = Application["ISBN"] as string[];
        string[] title = Application["Title"] as string[];
        string[] author = Application["Author"] as string[];
        string[] price = Application["BuyPrice"] as string[];
        int i;
        string enteredisbn = tb1.Text;
        for (i = 0; i < 10; i++)
        {
            if (String.Equals(isbn[i], enteredisbn))
                break;
        }
        if (i == 10)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Sorry.The ISBN number you entered is not found in our database.');</script>");
        }
        else
        {
            Session["Title"] = title[i];
            Session["Author"] = author[i];
            Session["Price"] = price[i];
            Session["isbnnum"] = isbn[i];
           Response.Redirect("BookDetail.aspx");
           
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Thank You for your business.\\nYour account will be updated after we recieve the book\\nA confirmation email has been sent to the email address in our file.');</script>");
        User currentuser = (User)Session["currentuser"];
         SoldBook asoldbook = new SoldBook();
        List<SoldBook> sb;
        if (currentuser.soldBooks != null)
            sb = currentuser.soldBooks.OfType<SoldBook>().ToList();
        else
            sb = new List<SoldBook>();
        if (sb.Exists(x => x.ISBNNumber == tb1.Text))
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('This book is already sold by you.');</script>");
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Thank You for your business.\\nYour account will be updated after we recieve the book\\nA confirmation email has been sent to the email address in our file.');</script>");


            asoldbook.ISBNNumber = tb1.Text;
            asoldbook.Price = tb4.Text;
            asoldbook.Title = tb2.Text;
            asoldbook.Date = DateTime.Now.ToString("dd/MM/yy");
            sb.Add(asoldbook);
            currentuser.soldBooks = sb.ToArray();
            Session["currentuser"] = currentuser;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
            SqlCommand cmd = new SqlCommand("insert into BikkinaV_WADfl15_Transactions(emailAddress,isbnNumber,dateSold) values('" + currentuser.EmailAddress + "','" + tb1.Text + "','" +asoldbook.Date+"')", conn);
            cmd.CommandType = CommandType.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void tb1_TextChanged(object sender, EventArgs e)
    {
        string test = tb1.Text;
    }
}