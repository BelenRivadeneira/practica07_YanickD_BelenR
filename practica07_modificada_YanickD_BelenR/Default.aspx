<!--
// *********************
// Informe 07
// Yanick De La Torre - Belén Rivadeneira
// Fecha de entrega: 27/01/2023
// *********************
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="practica07_modificada_YanickD_BelenR.Default" %>

<!DOCTYPE html>
<!--Página principal en la cual el usuario selecciona primeramente el tipo de masa que quiere para su pizza, posteriormente
    elige sus ingredientes favoritos. Mientras selecciona los ingredientes el usuario verá su cuenta hasta ese momento, posteriormente
    se tiene un enlace a LinkButton para ir a la página de pago y una LinkButton a Contactos-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pizza Pizzole</title>
</head>
    <body>
         <form runat="server">
            <div class="jumbotron" style="background-color: #90EE90; border: 3px solid black; padding: 10px"> 
                <div style="display: flex; flex-direction: row">
                    <h1> Pizzeria Pizzole </h1>
                    <img style="width: 80px" src="https://www.svgrepo.com/show/124486/pizza.svg"/>
                </div>
                <!--Panel que contiene información de las masas disponibles-->
           <asp:Panel ID="panelTipoMasa" runat="server" GroupingText="Escoja un tipo de masa">
               <div style="display: flex; flex-direction: row">
                <asp:RadioButtonList ID="lstMasa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="opciones_CheckedChanged">
                    <asp:ListItem Value="Delgada">Delgada $5</asp:ListItem>
                    <asp:ListItem Value="Crispy">Crispy $8</asp:ListItem>
                    <asp:ListItem Value="Gruesa">Gruesa $10</asp:ListItem>  
                </asp:RadioButtonList>
                        <img style=" margin-left: 30px; width: 80px" src="https://www.svgrepo.com/show/277644/pizza.svg"/>
                </div>
            </asp:Panel>
            <br />
                <!--Panel que contiene información de los ingredientes disponibles-->
            <asp:Panel ID="panelIngredientes" runat="server" GroupingText="Escoja los ingredientes">
                <div style="display: flex; flex-direction: row">
                <asp:CheckBoxList ID="chkIngredientes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="opciones_CheckedChanged">
                    <asp:ListItem Value="Champinones">Champiñones $4</asp:ListItem>
                    <asp:ListItem Value="Peperoni">Peperoni $5</asp:ListItem>
                    <asp:ListItem Value="Salchicha">Salchicha $6</asp:ListItem>
                    <asp:ListItem Value="Jamon">Jamón $7</asp:ListItem>
                    <asp:ListItem Value="Chorizo">Chorizo $8</asp:ListItem>
                </asp:CheckBoxList>
                    <img style=" margin-left: 30px; width: 80px" src="https://www.svgrepo.com/show/67706/pizza-knife.svg"/>
                </div>
            </asp:Panel>  
            <!--Informeción de la cuenta para el cliente-->    
            <br />
            <asp:Literal ID="literalSeleccionActual" runat="server"></asp:Literal>
            <div>Costo Total:</div>
            <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
                <!--Enlaces a las otras páginas-->
            <asp:LinkButton ID="lnkCheckout" runat="server" OnClick="lnkCheckout_Click" Style="COLOR: MAROON">Ir a checkout</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="lnkContacto" runat="server" OnClick="lnkContacto_Click" Style="COLOR: MAROON">Contactos</asp:LinkButton>
        </div>
        </form>
    </body>
</html>






