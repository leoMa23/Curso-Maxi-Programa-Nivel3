<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="TPFinalNivel3MamaniLeonel.Favoritos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
    .enlace {
        text-decoration: none;
    }

    .card {
        margin-bottom: 20px; 
    }

    .card-body {
        text-align: center; 
    }

    .quitar {
        color: darkred;
        text-align: end;
        display: block;
        background-color: gainsboro;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Mis Favoritos</h1>
    <h4>Esta es la lista de tus favoritos!!!</h4>
        
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img style="max-width: 100%; height: 500px; margin-top: 20px; margin-bottom: 20px;" src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Codigo") %>  <%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a class="enlace" href="DetallePokemon.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                            <asp:Button Text="Quitar" CssClass="btn btn-danger" runat="server" ID="btnQuitar" CommandArgument='<%#Eval("Id") %>' CommandName="QuitarFavorito" OnCommand="btnQuitar_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
