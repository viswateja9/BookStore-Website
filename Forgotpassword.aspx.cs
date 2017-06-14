using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b2_Click(object sender, EventArgs e)
    {
        User aUser = new User();
        List<User> allUsersList = Application["AllUsersList"] as List<User>;
        if (allUsersList.Exists(x => x.EmailAddress ==tb1.Text))
        {
            aUser=allUsersList.Find(x=>x.EmailAddress==tb1.Text);


            String msgTo = tb1.Text;
            String msgSubject = "We have recovered your password";
            String msgBody = "Dear valued customer,\n You are recieving this email because you requested to recover your password.\nYour current password is: "+aUser.Password+"\nThank You,\nWall Street Book Stores";
            MailMessage mailObj = new MailMessage();

            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("praveen.pinterest@gmail.com", "Wall stree book stores Team");
            mailObj.To.Add(new MailAddress(msgTo));
            mailObj.Subject = msgSubject;
            mailObj.IsBodyHtml = false;
            SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
            SMTPClient.Host = "smtp.gmail.com";
            SMTPClient.Port = 587;
            SMTPClient.Credentials = new NetworkCredential("praveen.pinterest@gmail.com", "pinterest12");
            SMTPClient.EnableSsl = true;
            try { SMTPClient.Send(mailObj);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Your password has been sent to the email address in file');</script>");
            }
            catch (Exception) {}
            
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmesg", "<script language=javascript> alert('Your account email cannot be verified');</script>");
        }
    }
}