<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gerenciamento.aspx.cs" Inherits="ProjetoWF.Views.CategoriasJogos.Gerenciamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Cadastros</h1>
    <h2>Categorias</h2>

    <asp:GridView ID="gvwCategorias" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dscCategorias">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:CheckBoxField DataField="Ativo" HeaderText="Ativo" SortExpression="Ativo" />
            <asp:HyperLinkField DataNavigateUrlFormatString="CategoriasEditar.aspx?id={0}" Text="Editar" DataNavigateUrlFields="Id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dscCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:BancoCatalogoConnectionString %>" SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
    <h2>Cadastrar categoria</h2>
    <asp:Label ID="lblNomeCat" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtNomeCat" runat="server"></asp:TextBox>
    <asp:Button ID="btnCadCat" runat="server" Text="Cadastrar" OnClick="btnCadCat_Click" />

    <h2>Jogos</h2>

    <asp:GridView ID="gvwJogos" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dscJogos">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
            <asp:BoundField DataField="CategoriaId" HeaderText="CategoriaId" SortExpression="CategoriaId" />
            <asp:CheckBoxField DataField="Ativo" HeaderText="Ativo" SortExpression="Ativo" />
            <asp:HyperLinkField DataNavigateUrlFormatString="JogosEditar.aspx?id={0}" Text="Editar" DataNavigateUrlFields ="Id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dscJogos" runat="server" ConnectionString="<%$ ConnectionStrings:BancoCatalogoConnectionString %>" SelectCommand="SELECT * FROM [Jogos]"></asp:SqlDataSource>
    <h2>Cadastrar Jogo</h2>
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Cadastrar" OnClick="btnCadCat_Click" />
</asp:Content>
