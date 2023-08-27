using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using RefugioTPfinal;






namespace RefugioWebApp
{
    public partial class RefugioLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MascotasNegocio negocio = new MascotasNegocio();
            dgvMascotas.DataSource = negocio.listarconSP();
            dgvMascotas.DataBind();
         
        }

        protected void dgvMascotas_SelectedIndexChanged(object sender, EventArgs e)
        {
            MascotasNegocio negocio = new MascotasNegocio();

            string Codigo = dgvMascotas.SelectedDataKey.Value.ToString(); //capturo el valor
            Response.Redirect("Ingresantes.aspx?Codigo=" + Codigo);  //Navega a la pag llevandose el codigo x la url
           

        }

        protected void dgvMascotas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvMascotas.PageIndex = e.NewPageIndex;
            dgvMascotas.DataBind();

        }
    }
}