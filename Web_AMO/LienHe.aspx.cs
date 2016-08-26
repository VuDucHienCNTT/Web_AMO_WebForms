using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
namespace Web_AMO
{
    public partial class LienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    if (txtNames.Text != "" || txtEmail.Text != "" || txtPassword.Text != "" || txtComments.Text != "")
                    {
                        MailMessage mailMessage = new MailMessage();
                        //người nhận mail
                        mailMessage.From = new MailAddress("sangvu2210@gmail.com");
                        mailMessage.To.Add("sangvu2210@gmail.com");

                        // thân email
                        mailMessage.Subject = "Contact website";
                        mailMessage.Body = "<b>Họ tên : </b>" + txtNames.Text + "<br/>"
                            + "<b>Mail người gửi : </b>" + txtEmail.Text + "<br/>"
                            + "<b>Nội dung mail: </b>" + txtComments.Text;
                        mailMessage.IsBodyHtml = true;

                        if (upfile.HasFile)
                        {
                            string FileName = Path.GetFileName(upfile.PostedFile.FileName);
                            mailMessage.Attachments.Add(new Attachment(upfile.PostedFile.InputStream, FileName));
                        }
                        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                        smtpClient.EnableSsl = true;
                        smtpClient.Credentials = new
                            // người gửi mail
                        System.Net.NetworkCredential("" + txtEmail.Text + "", "" + txtPassword.Text + "");
                        smtpClient.Send(mailMessage);

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Thư đã được gửi đi');</script>");
                    }
                }
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Vui lòng bật quyền truy cập để gửi Liên hệ');window.location.href='https://www.google.com/settings/security/lesssecureapps';</script>");
            }
        }
    }
}