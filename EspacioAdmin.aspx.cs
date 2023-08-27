using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RefugioWebApp
{
    public partial class EspacioAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["adoptante"] != null && ((Dominio.Adoptantes)Session["adoptante"]).TipoUser == Dominio.TipoUser.Admin))
            {
                Session.Add("Error", "No tienes permiso para ingresar. Necesitas ser admin");
                Response.Redirect("Error.aspx", false);
            }
          

        }
    }
}