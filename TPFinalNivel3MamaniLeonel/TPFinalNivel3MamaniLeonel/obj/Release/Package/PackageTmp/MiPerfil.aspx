<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="TPFinalNivel3MamaniLeonel.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .enlace {
            text-decoration: none;
        }

        .validacion {
            color: red;
            font-size: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Mi Perfil</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="txtNombre" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />
                <asp:RegularExpressionValidator CssClass="validacion" ErrorMessage="Solo se permite letras" ValidationExpression="^[a-zA-Z\s]*$" ControlToValidate="txtNombre" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" ClientIDMode="Static" runat="server" CssClass="form-control">
                </asp:TextBox>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El Apellido es requerido" ControlToValidate="txtApellido" runat="server" />
                <asp:RegularExpressionValidator CssClass="validacion" ErrorMessage="Solo se permite letras" ValidationExpression="^[a-zA-Z\s]*$" ControlToValidate="txtApellido" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <input  type="file" id="txtImagen" runat="server" class="form-control" onchange="txtImagen_Onchange()"/>
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <asp:Image ID="imgNuevoPerfil" ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                    runat="server" CssClass="img-fluid mb-3" />
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <asp:Button Text="Guardar" CssClass="btn btn-primary" OnClientClick="return validar()" OnClick="btnGuardar_Click" ID="btnGuardar" runat="server" />
                <a class="enlace" href="/">Regresar</a>
            </div>
        </div>
    </div>
</asp:Content>
