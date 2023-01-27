using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practica07_modificada_YanickD_BelenR
{
    public partial class Checkout : System.Web.UI.Page
    {
        /*Al cargar la página de Checkout que permitirá conocer al usuario su cuenta total
         se deberá cargar lo que este usuario eligió en Default, esta información se encuentra
        almacenada en la Session -> seleccion, igualmente el costo en -> costo*/
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Se muestra la infroamción en el formulario*/
            literalSeleccion.Text = (String)Session["seleccion"];
            txtCosto.Text = (String)Session["costo"];
        }
    }
}