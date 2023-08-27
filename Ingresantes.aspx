<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Ingresantes.aspx.cs" Inherits="RefugioWebApp.Ingresantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"> </asp:ScriptManager>
    <div class="row">
        <div class=" col-6">
             <form>
   <div class="mb-3">
    <label for="txtCodigo" class="form-label">Codigo de ingreso:</label>
    <asp:TextBox id="txtCodigo" cssclass="form-control" runat="server"></asp:TextBox>
   </div>

  <div class="mb-3">
    <label for="txtNombre" class="form-label">Nombre:</label>
    <asp:TextBox id="txtNombre" cssclass="form-control" runat="server"></asp:TextBox>
  </div>
    
  <div class="mb-3">
    <label for="txtTipo" class="form-label"> Tipo:</label>
    <asp:TextBox id="txtTipo" cssclass="form-control" runat="server"></asp:TextBox>
  </div>
    
     <div class="mb-3">
    <label for="txtRaza" class="form-label"> Raza:</label>
    <asp:TextBox id="TxtRaza" cssclass="form-control" runat="server"></asp:TextBox>
  </div>

   <div class="mb-3">
    <label for="txtSexo" class="form-label">Sexo:</label>
    <asp:TextBox id="txtSexo" cssclass="form-control" runat="server"></asp:TextBox>
  </div>
    
   <div class="mb-3">
    <label for="txtEdad" class="form-label">Edad:</label>
    <asp:TextBox id="txtEdad" cssclass="form-control" runat="server"></asp:TextBox>
  </div>

   <asp:CheckBox ID="CheqCastrado" runat="server" CssClass="form-control"  />
                 <label for="txtEdad">"¿Esta Castrado?"</label>
     <asp:CheckBox ID="CheqVacunado" runat="server" CssClass="form-control"  />
                   <label for="txtEdad">"¿Esta Vacunado?"</label>
    
   <div class=" row">

       <div class="col-6">
  <div class="mb-3">
    <label for="txtInfo" class="form-label">Informacion relevante:</label>
    <asp:TextBox id="txtInfo" cssclass="form-control"  TextMode="MultiLine" runat="server"></asp:TextBox>
  </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            
            <ContentTemplate>
                  <div class="mb-3">
                  <label for="txtFoto" class="form-label">Foto:</label>
                 <asp:TextBox id="txtFoto" cssclass="form-control" runat="server" AutoPostBack="true"  OnTextChanged="txtFoto_TextChanged"></asp:TextBox>

                </div>
                <asp:Image ImageUrl="https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png?w=640" ID="imgMascota" Width="60%" runat="server" />
                
            </ContentTemplate>


        </asp:UpdatePanel>
               

                     
   <asp:Button ID="BtnCargarFoto" runat="server" Text="Cargar Foto" />

    <asp:Button runat="server" Text="Agregar a la lista" id="btnAgregar" cssclass="btn btn-primary" OnClick="btnAgregar_Click"  />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary" OnClick="btnCancelar_Click" />
</form>
        </div>
    </div>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>

            <div class="row">
        <div class="col-6">
            <div class=" mb-3">

                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar"  OnClick="btnEliminar_Click" cssclass="btn btn-danger" />
            </div>

        </div>
    </div>
      <%if (ConfirmaEliminacion)
            { %>

    <div class=" mb-3">
                <asp:CheckBox ID="chequedEliminar" runat="server" text="Confirmar eliminacion" />
                <asp:Button ID="btnConfirmaEliminar" runat="server" Text="Eliminar"  OnClick="btnConfirmaEliminar_Click" cssclass="btn btn-outline-danger" />
            </div>

        </div>
    </div>
    

      <%      }
              
                  
                 %>
        


        </ContentTemplate>
    </asp:UpdatePanel>
    
   
</asp:Content>
