<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RefugioWebApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> ¡ Hola, bienvenidx al refugio !</h1>

    <div class="row row-cols-1 row-cols-md-2 g-3">
      <%-- <%  
            foreach ( RefugioTPfinal.Mascotas masco in ListaMasotas)
            {
            %>

        <div class="card" style="width: 18rem;"  >
 <img src="<%:masco.Foto %>" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%:masco.Nombre %></h5>
    <p class="card-text"><%:masco.InformacionRelevante %></p>
    <a href="DetalleMascotas.aspx" class="btn btn-primary">Ver detalle</a>
  </div>
</div>


    

        <%  
            }

            %> --%>

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
              <div class="card" style="width: 18rem;"  >
                <img src="<%#Eval("Foto")%>" class="card-img-top" alt="...">
                 <div class="card-body">
                    <h5 class="card-title"><%# Eval("Nombre")%></h5>
                        <p class="card-text"><%#Eval("InformacionRelevante")%></p>
                           <asp:Button ID="BtndDetalle" CssClass="btn btn-primary" runat="server" Text="Ver detalle" OnClick="BtndDetalle_Click" />
                        
                             </div>
                                    </div>

        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
