using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace practica07_modificada_YanickD_BelenR
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup

            // Código que se ejecuta al iniciarse la aplicación
            Application["Delgada"] = "5";
            Application["Crispy"] = "8";
            Application["Gruesa"] = "10";
            Application["Champinones"] = "4";
            Application["Peperoni"] = "5";
            Application["Salchicha"] = "6";
            Application["Jamon"] = "7";
            Application["Chorizo"] = "8";
        }
    }
}