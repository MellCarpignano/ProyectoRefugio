<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Emails.aspx.cs" Inherits="RefugioWebApp.Emails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-3">
  
  <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server"  CssClass=" form-control" ></asp:TextBox>
</div>
     <div class="mb-3">
         <asp:Label ID="LblAsunto" runat="server" Text="Asunto:"></asp:Label>
        <asp:TextBox ID="TxtAsunto" runat="server" CssClass=" form-control"></asp:TextBox>
    </div>
<div class="mb-3">
    <asp:Label ID="LblCuerpoEmail" runat="server" Text="Mensaje:"></asp:Label>
     <asp:TextBox ID="txtMensaje" runat="server" CssClass=" form-control" TextMode="MultiLine"></asp:TextBox>

      <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnvia_Click" CssClass=" btn btn-primary" />
</div>

</asp:Content>
