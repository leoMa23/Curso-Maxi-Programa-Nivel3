using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace TPFinalNivel3MamaniLeonel
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario User = new Usuario();
                UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
                EmailService emailService = new EmailService();

                User.Email = txtEmail.Text;
                User.Pass = txtPassword.Text;
                User.Id = usuarioNegocio.insertarNuevo(User);
                Session.Add("usuario", User);

                emailService.armarCorreo(User.Email, "Bienvenido!!!", "Hola te damos la bienvenida a la web app...");
                emailService.enviarEmail();
                Response.Redirect("Default.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }
    }
}