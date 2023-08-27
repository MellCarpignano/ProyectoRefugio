<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="RefugioLista.aspx.cs" Inherits="RefugioWebApp.RefugioLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Listado de mascotas en adopción</h1>
    <asp:GridView ID="dgvMascotas" DataKeyNames="Codigo" runat="server" CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvMascotas_SelectedIndexChanged" OnPageIndexChanging="dgvMascotas_PageIndexChanging" AllowPaging="true" PageSize="3" >
        <Columns>
            <asp:BoundField HeaderText="Codigo de Rescate" Datafield="Codigo" />
            <asp:BoundField HeaderText="Yo soy.." Datafield="Mascota" />
            <asp:BoundField HeaderText="Nombre" Datafield="Nombre" />
            <asp:BoundField HeaderText="Raza" Datafield="Raza" />
            <asp:BoundField HeaderText="Edad" Datafield="Edad" />
            <asp:BoundField HeaderText="Sexo" Datafield="Sexo" />
            <asp:BoundField HeaderText="Castrado(SI/NO)" Datafield="castrado" />
             <asp:BoundField HeaderText="Vacunado(SI/NO)" Datafield="vacunado" />
             <asp:BoundField HeaderText="Informacion relevante" Datafield="InformacionRelevante" />
             <asp:BoundField HeaderText="Mi foto :)" Datafield="Foto" />
            <asp:CommandField HeaderText="Accion"  ShowSelectButton="true" SelectText="✍︎" />

        </Columns>
    </asp:GridView>
    <a href="Ingresantes.aspx" class="btn btn-primary">Agregar</a>

</asp:Content>
