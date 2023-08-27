using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace RefugioWebApp
{
    public partial class LoginGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adoptante"] == null)
            {
                Session.Add("Error", "Debes loguearte para ingresar");
                Response.Redirect("Error.aspx", false);

            }
        }

        protected void btnUsuario_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("EspacioUsuario.aspx");
        }

        protected void BtnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("EspacioAdmin.aspx");
        }
    }
}