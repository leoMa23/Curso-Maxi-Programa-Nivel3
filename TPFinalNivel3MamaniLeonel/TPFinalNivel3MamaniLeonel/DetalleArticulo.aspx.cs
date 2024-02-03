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
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //usar el metodo listar(con id) para traer el articulo y lo llamo =>
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    List<Articulos> lista = negocio.listar(Request.QueryString["id"].ToString());
                    Articulos seleccionado = lista[0];

                    Session.Add("artSeleccionado", seleccionado);

                    lblCodigo.Text = seleccionado.Codigo;
                    lblNombre.Text = seleccionado.Nombre;
                    lblDescripcion.Text = seleccionado.Descripcion;
                    imgElementoSeleccionado.ImageUrl = seleccionado.ImagenUrl;
                    lblMarca.Text = seleccionado.IdMarca.Descripcion;
                    lblCategoria.Text = seleccionado.IdCategoria.Descripcion;
                    
                }

            }
            
        }
    }
}