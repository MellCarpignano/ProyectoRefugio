<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="LoginGeneral.aspx.cs" Inherits="RefugioWebApp.LoginGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login exitoso !</h2>
    <br />
    <h2>Elige una opcion para ingresar a la plataforma:</h2>
    <asp:Button ID="btnUsuario" runat="server" Text="Adoptante" CssClass="btn btn-primary" OnClick="btnUsuario_Click" />
    <br />
    <br />
    <%if (Session["adoptante"] != null && ((Dominio.Adoptantes)Session["adoptante"]).TipoUser == Dominio.TipoUser.Admin) 
      { %>
        <asp:Button ID = "BtnAdmin" runat = "server" Text = "Administrador" CssClass = "btn btn-primary" OnClick = "BtnAdmin_Click" />
   <%  }%>
    
</asp:Content>
