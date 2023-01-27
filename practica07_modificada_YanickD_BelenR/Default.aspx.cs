using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace practica07_modificada_YanickD_BelenR
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void opciones_CheckedChanged(object sender, EventArgs e)
        {
            // El resumen del pedido que se mostará en la cuenta
            StringBuilder seleccion = new StringBuilder("Tipo de masa: ");
            // Se alamacena las opciones del tipo de masa
            RadioButtonList opcionesTipoMasa = lstMasa;
            // Se alamacenan los ingredientes seleccionados
            CheckBoxList opcionesIngrediente = chkIngredientes;

            // Se emplea para llevar la cuenta del pedido
            float costoTotal = 0;
            //Se almacena las opciones seleccionadas por el cliente
            seleccion.Append(opcionesTipoMasa.SelectedValue + " ");

            // Se va sumando el costo de la masa 
            costoTotal += float.Parse((String)Application[opcionesTipoMasa.SelectedValue]);

            seleccion.Append("; Ingredientes: ");
            // se recorre todos los ingredientes
            foreach (ListItem cb in opcionesIngrediente.Items)
            {
                if (cb.Selected)
                {
                    // Se guarda la seleccion de ingredientes
                    seleccion.Append(cb.Value + " ");
                    // Se lleva la suma de los ingredientes
                    costoTotal += float.Parse((String)Application[cb.Value]);
                }
            }
            // Se muestra las opciones seleccionadas por los clientes
            literalSeleccionActual.Text = seleccion.ToString();
            // Se muestra el costo total
            txtTotal.Text = costoTotal.ToString();
        }
        //Evento para redireccionar a la cuenta total
        protected void lnkCheckout_Click(object sender, EventArgs e)
        {
            //se envia todo el pedido y el costo total
            Session["seleccion"] = literalSeleccionActual.Text;
            Session["costo"] = txtTotal.Text;
            //se redirige al checkout
            Response.Redirect("Checkout.aspx");
        }

        // Evento para pasar al formulario donde se mostrará información sobre el contacto de la pizzeria
        protected void lnkContacto_Click(object sender, EventArgs e)
        {
            //se redirige al contact
            Response.Redirect("Contact.aspx");
        }

    }
}