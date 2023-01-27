<!--
// *********************
// Informe 07
// Yanick De La Torre - Belén Rivadeneira
// Fecha de entrega: 27/01/2023
// *********************
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="practica07_modificada_YanickD_BelenR.Contact" %>

<!--Pagina que muestra la información de contacto de la pizzeria una vez el usuario seleccione
    el hiperenlace de Contactos-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--título de la página-->
 <title> Tu orden! </title>
</head>
<body>
    <!--form que contiene el resumen del pedido-->
 <form id="form1" runat="server">
 <div style="background-color: #90EE90; border: 3px solid black; padding: 10px">
    <h2>PIZZERIA Pizzole</h2>
    <h3>Contactos:</h3>
    <address>
        Isabela Católica<br />
        Avenida Avalos<br />
        Telf: 2023245
    </address>
     <img style="width: 400px; margin-top: 20px; margin-left: 30%;" src="https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2022/05/Como-compartir-tu-ubicacion-en-Google-Maps.jpg?fit=1280%2C720&quality=80&ssl=1"/>
 </div>
 </form>
</body>
</html>

