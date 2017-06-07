<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gerenciamento.aspx.cs" Inherits="ProjetoWF.Views.CategoriasJogos.Gerenciamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cadastros</h1>
    <h2>Categorias</h2>

    <asp:GridView ID="gvwCategorias" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:HyperLinkField DataNavigateUrlFormatString="~/Views/Categorias/CategoriasEditar.aspx?id={0}" Text="Editar" DataNavigateUrlFields="Id" />
        </Columns>
    </asp:GridView>
    <h2>Cadastrar categoria</h2>
    <asp:Label ID="lblNomeCat" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox class="text" ID="txtNomeCat" runat="server"></asp:TextBox>
    <asp:Button class="btn" Style="color: black; background-color: aqua" ID="btnCadCat" runat="server" Text="Cadastrar" OnClick="btnCadCat_Click" />

    <h2>Jogos</h2>

    <asp:GridView ID="gvwJogos" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
            <asp:BoundField DataField="Categoria.Nome" HeaderText="Categoria" />
            <asp:HyperLinkField DataNavigateUrlFormatString="~/Views/Jogos/JogosEditar.aspx?id={0}" Text="Editar" DataNavigateUrlFields="Id" />
        </Columns>
    </asp:GridView>
        <h2>Cadastrar Jogo</h2>
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <br />
        <asp:TextBox ID="txtNomeJogo" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblDesc" runat="server" Text="Descrição"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescJogo" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="dwlCat" runat="server" DataTextField="Nome"></asp:DropDownList>
        <br />
        <br />
        <asp:Button class="btn" Style="color: black; background-color: aqua" ID="btnCadJogo" runat="server" Text="Cadastrar" OnClick="btnCadJogo_Click" />
</asp:Content>
