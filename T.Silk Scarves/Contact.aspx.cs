using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace T.Silk_Scarves
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsend_Click(object sender, EventArgs e)
        {
            //sends email using a mail server that requires login credentials and a secure connection, e.g.gmail
            //create mail client and message with to and from address,and set message subject and body
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("mardhiyahs72@gmail.com", "mardhiyahs72@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtbody.Text;

            //setting specific to the mail service e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("mardhiyahs72@gmail.com", "mardhiyahsufriyan402");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("mardhiyahs72@gmail.com", "mardhiyahs72@gmail.com");

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p> Success mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p> send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }

        }
       
    }
}