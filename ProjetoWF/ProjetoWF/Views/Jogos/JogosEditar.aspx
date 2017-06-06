<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JogosEditar.aspx.cs" Inherits="ProjetoWF.Views.CategoriasJogos.JogosEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <asp:Label ID="lblDesc" runat="server" Text="Descrição"></asp:Label>
    <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
    <asp:Label ID="lblCat" runat="server" Text="Categoria"></asp:Label>
    <asp:DropDownList ID="dwlCat" runat="server" DataTextField="Nome"></asp:DropDownList>
    <asp:Label ID="lblAtivo" runat="server" Text="Ativo"></asp:Label>
    <asp:CheckBox ID="chkAtivo" runat="server" />
    <asp:Button ID="btnUpdate" runat="server" Text="Atualizar" OnClick="btnUpdate_Click" />
</asp:Content>
