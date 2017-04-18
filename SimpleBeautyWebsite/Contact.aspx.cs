using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBeautyWebsite
{
    public partial class Contact1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("finnforschool@gmail.com", "givemeanA");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("finnforschool@gmail.com", textboxEmail.Text);
            msg.Subject = "Name: " + textboxName.Text + "Subject: " + textboxSubject.Text;
            msg.Body = textboxMsg.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                litMessage.Text = "<p>Successfully sent a message</p>";
            }
            catch (Exception ex)
            {
                litMessage.Text = "<p>Fail to send a message " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}