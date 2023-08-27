using RefugioTPfinal;
using System;
using System.Collections.Generic;


namespace RefugioWebApp
{
    public partial class Default : System.Web.UI.Page

    {
        public List<Mascotas> ListaMasotas { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            MascotasNegocio negocio = new MascotasNegocio();
            ListaMasotas = negocio.listarconSP();


            if (!IsPostBack)
            {

                Repeater1.DataSource = ListaMasotas;
                Repeater1.DataBind();
        
     
            }


        }

        protected void BtndDetalle_Click(object sender, EventArgs e)
        {
            Response.Redirect("RefugioLista.aspx");
        }
    }
}