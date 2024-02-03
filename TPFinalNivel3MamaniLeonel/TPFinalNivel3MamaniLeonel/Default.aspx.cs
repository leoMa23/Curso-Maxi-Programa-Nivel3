using negocio;
using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalNivel3MamaniLeonel
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulos> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.listarConSp();
            if(!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulos;
                repRepetidor.DataBind();
            }
        }

        protected void btnFavorito_Click(object sender, EventArgs e)
        {
            if (Session["Favoritos"] == null)
            {
                // Si la sesión de favoritos aún no existe, créala como una nueva lista
                List<int> favoritos = new List<int>();
                Session["Favoritos"] = favoritos;
            }
            //Atrapar el id que me envia el boton
            int idArticulo = Convert.ToInt32(((Button)sender).CommandArgument);
            List<int> listaFavoritos = (List<int>)Session["Favoritos"];
            listaFavoritos.Add(idArticulo);
        }
    }
}