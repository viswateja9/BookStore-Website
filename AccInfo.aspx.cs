using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class AccInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            User cuser = new User();
            cuser = (User)Session["currentuser"];
            tb1.Text = cuser.Name;
            tb1.Enabled = false;
            TextBox1.Text = cuser.AddressLine1;
            TextBox2.Text = cuser.AddressLine2;
            TextBox3.Text = cuser.City;
            TextBox4.Text = cuser.Zip;
            d1.Text = cuser.State;
            TextBox5.Text = cuser.EmailAddress;
            TextBox5.Enabled = false;
            
            TextBox6.Attributes["type"] = "password";
            TextBox6.Text = cuser.Password;
            TextBox7.Attributes["type"] = "password";
            TextBox7.Text = cuser.Password;
        }
        
     


    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void b2_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
            return;
        else
        {
            User cuser = new User();
            cuser = (User)Session["currentuser"];
            cuser.Name = tb1.Text;
            cuser.AddressLine1 = TextBox1.Text;
            cuser.AddressLine2 = TextBox2.Text;
            cuser.City = TextBox3.Text;
            cuser.Zip = TextBox4.Text;
            cuser.State = d1.Text;
            cuser.EmailAddress = TextBox5.Text;
            cuser.Password = TextBox6.Text;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Information updated');window.location.reload;</script>");
            Session["currentuser"] = cuser;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
            SqlCommand cmd = new SqlCommand("update BikkinaV_WADfl15_Userinfo set AddressLine1='"+cuser.AddressLine1+"',AddressLine2='"+cuser.AddressLine2+"',city='"+cuser.City+"',zip='"+cuser.Zip+"',state='"+cuser.State+"',password='"+cuser.Password+"' where emailAddress='"+cuser.EmailAddress+"'", conn);
            cmd.CommandType = CommandType.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
    protected void b3_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
            return;
        else
        {
            User cuser = new User();
            cuser = (User)Session["currentuser"];
            cuser.Name = tb1.Text;
            cuser.AddressLine1 = TextBox1.Text;
            cuser.AddressLine2 = TextBox2.Text;
            cuser.City = TextBox3.Text;
            cuser.Zip = TextBox4.Text;
            cuser.State = d1.Text;
            cuser.EmailAddress = TextBox5.Text;
            cuser.Password = TextBox6.Text;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Information updated');window.location.reload;</script>");
            Session["currentuser"] = cuser;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
            SqlCommand cmd = new SqlCommand("update BikkinaV_WADfl15_Userinfo set AddressLine1='" + cuser.AddressLine1 + "',AddressLine2='" + cuser.AddressLine2 + "',city='" + cuser.City + "',zip='" + cuser.Zip + "',state='" + cuser.State + "',password='" + cuser.Password + "' where emailAddress='" + cuser.EmailAddress + "'", conn);
            cmd.CommandType = CommandType.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Default.aspx");
        }
    }
}