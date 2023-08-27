using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RefugioTPfinal;
using RefugioWebApp;
using Dominio;
using UserNegocio;

namespace RefugioWebApp
{       
    
    public partial class Ingresantes : System.Web.UI.Page
    {
        public bool ConfirmaEliminacion { get; set; }
        public string urlImgen { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            AccesoDatos datos = new AccesoDatos();

          
            if (Request.QueryString["Codigo"] != null && !IsPostBack)
            {
              
                MascotasNegocio negocio = new MascotasNegocio();

                List<Mascotas> lista = negocio.FiltrarPorCodigo(Request.QueryString["Codigo"].ToString());
                Mascotas seleccionada = lista[0];

                txtCodigo.Text = seleccionada.Codigo.ToString();
                txtNombre.Text = seleccionada.Nombre;
                txtTipo.Text = seleccionada.Mascota;
                TxtRaza.Text = seleccionada.Raza;
                txtSexo.Text = seleccionada.Sexo;
                txtEdad.Text = seleccionada.Edad;
                txtInfo.Text = seleccionada.InformacionRelevante;
                txtFoto.Text = seleccionada.Foto;
                txtFoto_TextChanged(sender, e);



            }
            ConfirmaEliminacion = false;

        }


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Mascotas nuevaMascota = new Mascotas();
            MascotasNegocio negocio = new MascotasNegocio();


            try
            {
                if (nuevaMascota == null)
                    nuevaMascota = new Mascotas();

                nuevaMascota.Codigo = int.Parse(txtCodigo.Text);
                nuevaMascota.Nombre = txtNombre.Text;
                nuevaMascota.Mascota = txtTipo.Text;
                nuevaMascota.Raza = TxtRaza.Text;
                nuevaMascota.Sexo = txtSexo.Text;
                nuevaMascota.Edad = txtEdad.Text;
                nuevaMascota.castrado = CheqCastrado.Checked.ToString();
                nuevaMascota.vacunado = CheqVacunado.Checked.ToString();
                nuevaMascota.InformacionRelevante = txtInfo.Text;
                nuevaMascota.Foto = txtFoto.Text;


                

                negocio.agregarConSP(nuevaMascota);

                Response.Redirect("RefugioLista.aspx");



            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnAgregar_Click1(object sender, EventArgs e)
        {
            urlImgen = txtFoto.Text;
        }

        protected void Image1_Load(object sender, EventArgs e)
        {
          
        }

        protected void txtFoto_Load(object sender, EventArgs e)
        {
         
        }

        protected void txtFoto_TextChanged(object sender, EventArgs e)
        {
            imgMascota.ImageUrl = txtFoto.Text;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ConfirmaEliminacion = true;
        }

        protected void btnConfirmaEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (chequedEliminar.Checked)
                {
                 
                    MascotasNegocio negocio = new MascotasNegocio();

                    negocio.eliminarMascota(int.Parse(txtCodigo.Text));

                }




            }
            catch ( Exception ex)
            {

              Session.Add("Erros", ex);
            }
        }
    }
}