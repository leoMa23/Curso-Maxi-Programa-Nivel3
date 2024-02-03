using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class MarcaNegocio
    {
        public List<Marcas> listar()
        {
			List<Marcas> listaMarcas = new List<Marcas>();
			AccesoDatos datos = new AccesoDatos();
			try
			{
				datos.setearConsulta("Select Id, Descripcion From MARCAS");
				datos.ejecutarLectura();

				while (datos.Lector.Read())
				{
					Marcas aux = new Marcas();
					aux.Id = (int)datos.Lector["Id"];
					aux.Descripcion = (string)datos.Lector["Descripcion"];

					listaMarcas.Add(aux);
				}

				return listaMarcas;
			}
			catch (Exception ex)
			{

				throw ex;
			}
			finally
			{
				datos.cerrarConexion();
			}
        }
    }
}
