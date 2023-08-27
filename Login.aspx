<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RefugioWebApp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bienvenidx!</h1>
    <h2>Por favor, ingrese su usuario y contraseña: </h2>
    <br /> 

     <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Usuario</label>
 
         <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
</div>
<label class="form-label">Contraseña</label>
    <asp:TextBox ID="TxtPass" placeholder="*****" runat="server" CssClass=" from-control"></asp:TextBox>
    <asp:Button ID="Btnlog" runat="server" Text="Ingresar" CssClass="btn-btn btn-primary"  OnClick="Btnlog_Click"/>
</asp:Content>
