using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace Presentacion
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Apoderados ap = new Apoderados();

            int id = 14;
            //int agenteId = 1;
            string username = tbxUsername.Text;
            string password = tbxPassword.Text;
            string email = tbxEmail.Text;
            string nombre = tbxNombre.Text;
            string apellidoP = tbxApellidoP.Text;
            string apellidoM = tbxApellidoM.Text;
            string telefono = tbxTelefono.Text;
            string celular = tbxCelular.Text;

            string tipo = ddlTipoUsuario.SelectedItem.ToString();


            ap.InsertarApoderado(id, username, email, apellidoP, apellidoM, nombre, telefono, celular, password);
            lblMensaje.Text = "Agregado con exito";
            lblMensaje.Visible = true;



        }
    }
}