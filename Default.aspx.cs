using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fromLogin"] != null && (bool)Session["fromLogin"])
        {
            User aUser = new User();
            logoutcell.Visible = true;
            logincell.Visible = false;
            registercell.Visible = false;
            aUser = (User)Session["currentuser"];
            userlabel.Text = aUser.Name + " logged in";
            ya.Enabled = true;
            wys.Enabled = true;


        }
        else
        {
            ya.Enabled = false;
            wys.Enabled = false;
        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        /*char[][] isbn = new char[10][];
        char[][] title = new char[10][];
        char[][] author = new char[10][];*/
        if (!Page.IsValid) return;
        string[] isbn = Application["ISBN"] as string[];
        string[] title = Application["Title"] as string[];
        string[] author = Application["Author"] as string[];
        string[] price = Application["BuyPrice"] as string[];
      
        int i;
        string enteredisbn = tb1.Text;
        Session["isbnnum"] = enteredisbn;
        
        for(i=0;i<10;i++)
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
            Response.Redirect("BookDetail.aspx");
        }
        

    }


    protected void Logout_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void ya_Click(object sender, EventArgs e)
    {
        Response.Redirect("AccInfo.aspx");
    }
    protected void wys_Click(object sender, EventArgs e)
    {
        Response.Redirect("YourSellings.aspx");
    }
}