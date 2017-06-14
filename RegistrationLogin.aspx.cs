using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class RegistrationLogin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void b4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgotpassword.aspx");
    }
    protected void b2_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) 
            return;
        else
        {
            User aUser = new User();
            List<User> allUsersList = Application["AllUsersList"] as List<User>;
            if(allUsersList.Exists(x=>x.EmailAddress==TextBox5.Text))
            {
               // Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Your email address is already registered in our database!\\nPlease Login');</script>");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowStatus", "javascript:alert('Email id exists');", true);

            }
            //else
          //      ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowStatus", "javascript:alert('Record is not updated');", true);
           else
            {
                
                aUser.Name = tb1.Text;
                aUser.AddressLine1 = TextBox1.Text;
                aUser.AddressLine2 = TextBox2.Text;
                aUser.City = TextBox3.Text;
                aUser.Zip = TextBox4.Text;
                aUser.State = d1.Text;
                aUser.EmailAddress = TextBox5.Text;
                aUser.Password = TextBox6.Text;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Thank you for registering. Please login');window.location.reload;</script>");
                
                allUsersList.Add(aUser);
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
                SqlCommand cmd = new SqlCommand("insert into BikkinaV_WADfl15_Userinfo(emailAddress,Name,AddressLine1,AddressLine2,City,Zip,State,Password) values('" + TextBox5.Text + "','" + tb1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + d1.Text + "','" +TextBox6.Text +"')", conn);
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                int a= allUsersList.Count;
            }
           
        }
    }
    protected void b3_Click(object sender, EventArgs e)
    {
        User aUser = new User();
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        if (allUsersList.Exists(x => x.EmailAddress == TextBox8.Text))
        {
           
           int index=allUsersList.FindIndex(x=>x.EmailAddress==TextBox8.Text);
           aUser = allUsersList[index];
           if (aUser.Password != TextBox9.Text)
           {
               Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Wrong Password.Try again');</script>");
     
           }
           else
           {
               Session["currentuser"] = aUser;
               Session["fromLogin"] = true;
               Response.Redirect("Default.aspx");
           }
          
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Sorry.You are not a registered User.Please register.');</script>");
        }
    }
}