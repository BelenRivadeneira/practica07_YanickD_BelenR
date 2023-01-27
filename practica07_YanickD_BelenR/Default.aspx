<!--
// *********************
// Informe 07
// Yanick De La Torre - Belén Rivadeneira
// Fecha de entrega: 27/01/2023
// *********************
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="practica07_YanickD_BelenR.Default" %>

<!--Página principal en la cual el usuario selecciona primeramente el tipo de masa que quiere para su pizza, posteriormente
    elige sus ingredientes favoritos. Mientras selecciona los ingredientes el usuario verá su cuenta hasta ese momento, posteriormente
    se tiene un enlace a LinkButton para ir a la página de pago-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pizza Pizzole</title>
</head>
<body>
    <form id="form1" runat="server">
        <!--div que contendra al form con la información del pedido-->
        <div>
        </div>
        <!--Primera elección con el tipo de masa disponible-->
        <asp:Panel ID="panelTipoMasa" runat="server" GroupingText="“Escoja un tipo de masa:">
            <!--tabla con las opciones de masa disponibles-->
            <asp:Table ID="tablaTipoMasa" runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <!--Masa delgada-->
                         <asp:RadioButton ID="rbtDelgada" runat="server" GroupName="grupoTipos" Text="Delgada" Value="5" AutoPostBack="True" oncheckedchanged="opciones_CheckedChanged"/>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Text="5"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <!--Masa crispy-->
                        <asp:RadioButton ID="rbtCrispy" runat="server" GroupName="grupoTipos" Text="Crispy" Value="8" AutoPostBack="True" oncheckedchanged="opciones_CheckedChanged"/>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Text="8"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <!--masa gruesa-->
                        <asp:RadioButton ID="rbtGruesa" runat="server" GroupName="grupoTipos" Text="Gruesa" Value="10" AutoPostBack="True" oncheckedchanged="opciones_CheckedChanged"/>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Text="10"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <!--Aqui se seleccionan los ingredientes-->
        <asp:Panel ID="panelIngredientes" runat="server" GroupingText="Escoja los ingredientes:">
            <asp:Table ID="tablaTipoIngredientes" runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <!--para elegir el hongo o champiñion-->
                        <asp:CheckBox ID="chkHongo" runat="server" Text="Champiñones" value="4" AutoPostBack="True" oncheckedchanged="opciones_CheckedChanged" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">4</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <!--para elegir pepperoni-->
                        <asp:CheckBox ID="chkPeperoni" runat="server" Text="Peperoni" Value="5" AutoPostBack="True" oncheckedchanged="opciones_CheckedChanged"/>
                    </asp:TableCell>
                    <asp:TableCell runat="server">5</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                       <asp:TableCell runat="server"><asp:CheckBox ID="chkSalchicha" runat="server" Text="Salchicha" Value="6" AutoPostBack="True" oncheckedchanged="opciones_CheckedChanged" />
                        </asp:TableCell>
                    <asp:TableCell runat="server">6</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <!--En este label se irá mostrando la selección del cliente-->
        <asp:Literal ID="literalSeleccionActual" runat="server" Text=" "></asp:Literal>
        <p></p>
            <asp:Label ID="literalSeleccion" runat="server" Text="Costo total: "></asp:Label>
        <!--este text box mostrá el costo hasta mientras el cliente elige sus opciones-->
            <asp:TextBox ID="txtCosto" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <!--boton que redirige al resumen de pago-->
        <asp:LinkButton ID="lnkCheckout" runat="server" OnClick="lnkCheckout_Click">LinkButton</asp:LinkButton>
    </form>
</body>
</html>
