<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPFinalNivel3MamaniLeonel.DetalleArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .imagen {
        justify-content: center;
        margin: auto;
        display: block;
    }

    .titulo {
        text-align: center;
        font-size: 26px;
    }
    .descripcionPrincipal{
        font-size:22px;
    }
    .stretched-link {
        text-decoration: none;
    }
    .card-text{
        font-weight:600;
        font-size:20px;
    }
    .descripcion {
        font-size: 20px;
        padding:10px;
        display:block;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <figure class="text-center">
    <blockquote class="blockquote">
        <h1>Detalle del articulo seleccionado...</h1>
    </blockquote>
</figure>
<div class="row">
    <div class="col-3"></div>
    <div class="col-6">

        <div class="card text-center">
            <div class="card-header">
                <asp:Label Text="" class="titulo" runat="server" ID="lblCodigo" />
                <asp:Label Text="" class="titulo" runat="server" ID="lblNombre" />
            </div>
            <div class="card-body">
                <asp:Image ID="imgElementoSeleccionado" runat="server" Class="imagen" />

                <asp:Label Text="" class="descripcionPrincipal" runat="server" ID="lblDescripcion" />
                <p class="card-text">Marca</p>
                <asp:Label Text="" class="descripcion" runat="server" ID="lblMarca" />
                <p class="card-text">Categoria:</p>
                <asp:Label Text="" class="descripcion" runat="server" ID="lblCategoria" />

            </div>
            <div class="card-footer text-body-secondary">
                <a href="Default.aspx" class="stretched-link">Regresar</a>
            </div>
        </div>
    </div>
    <div class="col-3"></div>
</div>
</asp:Content>
