using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using System.Net;
using System.Net.Mail;


namespace RefugioWebApp
{
    public partial class Emails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnvia_Click(object sender, EventArgs e)
        {

            EmailService emailService = new EmailService();

            emailService.armarCorreo(TxtEmail.Text, TxtAsunto.Text, txtMensaje.Text);
            try
            {
                emailService.enviarEmail();
            }
            catch (Exception ex)
            {

                Session.Add("Error.aspx", ex);
            }

   }    }
}