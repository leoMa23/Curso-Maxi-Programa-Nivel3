using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalNivel3MamaniLeonel
{
    public partial class Favoritos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session != null && Session["Favoritos"] != null)
                {
                    cargarArticulosFavoritos();
                }

                return;
            }
        }

        protected void btnQuitar_Click(object sender, CommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "QuitarFavorito")
                {
                    // Obtén el ID del Pokémon seleccionado
                    int idArticulo = Convert.ToInt32(e.CommandArgument);

                    // Obtén la lista de favoritos de la sesión
                    List<int> listaFavoritos = (List<int>)Session["Favoritos"];

                    // Quítalo de la lista de favoritos
                    listaFavoritos.Remove(idArticulo);

                    // Actualiza la lista de Pokémon favoritos en la sesión
                    Session["Favoritos"] = listaFavoritos;

                    // Vuelve a cargar la lista de Pokémon favoritos
                    cargarArticulosFavoritos();
                    repRepetidor.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void cargarArticulosFavoritos()
        {
            try
            {
                // Verifica si la sesión de favoritos existe y contiene elementos
                if (Session["Favoritos"] != null && ((List<int>)Session["Favoritos"]).Count > 0)
                {
                    // Obtén la lista de IDs de Pokémon favoritos de la sesión
                    List<int> listaFavoritos = (List<int>)Session["Favoritos"];

                    // Lógica para obtener detalles de los Pokémon favoritos y enlazar al Repeater
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    List<Articulos> articulosFavoritos = new List<Articulos>();

                    foreach (int idArticulo in listaFavoritos)
                    {
                        Articulos articulo = negocio.detallar(idArticulo);
                        if (articulo != null)
                        {
                            articulosFavoritos.Add(articulo);
                        }
                    }

                    repRepetidor.DataSource = articulosFavoritos;
                    repRepetidor.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }

    

}


