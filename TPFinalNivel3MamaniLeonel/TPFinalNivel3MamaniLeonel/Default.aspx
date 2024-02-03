<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinalNivel3MamaniLeonel.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .enlace{
           text-decoration:none;
       }
       .titulo{
           padding:25px;
           text-align:center;
           margin-bottom:40px;
           margin-top: 40px;
       }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="titulo">Bienvenido a tu sitio de Compras</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%--<%
            foreach (dominio.Articulos art in ListaArticulos)
            { %>
                <div class="col">
                    <div class="card">
                        <img src="<%:art.ImagenUrl %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%:art.Nombre %></h5>
                            <p class="card-text"><%:art.Descripcion %></p>
                            <a href="DetalleArticulo.aspx?id=<%:art.Id %>">Ir a Detalle</a>
                        </div>
                    </div>
                </div>
          <% }%>--%>
        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img style="max-width: 100%; height: 500px; margin-top: 20px; margin-bottom: 20px;" src="<%#Eval("ImagenUrl") %>" class="card-img-top" onerror="this.src'https://ih0.redbubble.net/image.1756098780.0530/raf,360x360,075,t,fafafa:ca443f4786.jpg';">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a class="enlace" href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ir a Detalle</a>
                            <asp:Button Text="Favorito" CssClass="btn btn-primary" runat="server" ID="btnFavorito" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId" OnClick="btnFavorito_Click" />
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
