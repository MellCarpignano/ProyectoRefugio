<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="RefugioWebApp.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class=" row">
        <div class="col-4">
            <h2>Crea tu perfil de adoptante</h2>
            <div class=" mb-3">
                <asp:Label ID="Lbl1" runat="server" Text="Email"></asp:Label> 
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control">
                </asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Lbl2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <asp:Button ID="Registrarse" runat="server" Text="Registrarse" CssClass="btn btn-primary" />
            <a href="/">Cancelar</a>
        </div>
    </div>
</asp:Content>
