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


        protected void Button1_Command1(object sender, CommandEventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            // Smtp authentication
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("heysimplebeauty@gmail.com", "simplebeauty");
            client.UseDefaultCredentials = false;
            client.Credentials = userpass;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(textboxEmail.Text);
            msg.To.Add(new MailAddress("heysimplebeauty@gmail.com"));

            msg.Subject = textboxSubject.Text;
            msg.IsBodyHtml = true;
            msg.Body = string.Format("From: " + textboxName.Text + ",   Email: " + textboxEmail.Text + ",   Message: " + textboxMsg.Text);

            try
            {
                client.Send(msg);
                litMessage.Text = "Your message has been successfully sent.";
            }
            catch (Exception ex)
            {
                litMessage.Text = "Error occured while sending your message." + ex.Message;
            }
            textboxName.Text = "";
            textboxEmail.Text = "";
            textboxSubject.Text = "";
            textboxMsg.Text = "";
        }
    }
    }

    






