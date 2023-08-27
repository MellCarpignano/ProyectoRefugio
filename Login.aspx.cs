using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RefugioTPfinal;
using Dominio;
using RefugioWebApp;
using UserNegocio;



namespace RefugioWebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        
        protected void Btnlog_Click(object sender, EventArgs e)
        {
            Adoptantes adoptante;
            UsuarioNegocio negocio = new UsuarioNegocio();

            try
            {
                adoptante = new Adoptantes(TxtUser.Text, TxtPass.Text, false);
                if (negocio.Loguear(adoptante))
                {
                    Session.Add("adoptante", adoptante);
                    Response.Redirect("LoginGeneral.aspx", false);

                }
                else
                {
                    Session.Add("Error", "User o Pass incorrectos");
                    Response.Redirect("Error.aspx", false);
                }
      

            }
            catch (Exception ex)
            {
                
                Session.Add("Error", ex.ToString());
                Response.Redirect("Error.aspx");
            } 
               
            
        }
    }
}