<!--
// *********************
// Informe 07
// Yanick De La Torre - Belén Rivadeneira
// Fecha de entrega: 27/01/2023
// *********************
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="practica07_YanickD_BelenR.CheckOut" %>

<!--Pagina que a la cual se redurecciona el usuario una vez haya completado su producto 
    en esta página se mostrará el resumen de los ingredientes escogidos como del tipo de masa
    elegida por el usuario-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--título de la página-->
 <title> Tu orden! </title>
</head>
<body>
    <!--form que contiene el resumen del pedido-->
 <form id="form1" runat="server">
 <div>
 Tu selección para la pizza es:<br />
     <!--en este apartado Literal se carga el resumen de la selección del cliente-->
 <asp:Literal ID="literalSeleccion" runat="server"></asp:Literal>
 <br />
 <br />
     <!--se muestra el costo final del pedido-->
 El costo de tu pizza es:<br />
 <asp:TextBox ID="txtCosto" runat="server"></asp:TextBox>
 <br />
 <br />
     <!--Mensaje de despedida-->
 Gracias por tu adquisición... Vuelve pronto!</div>
 </form>
</body>
</html>
