<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoriasEditar.aspx.cs" Inherits="ProjetoWF.Views.CategoriasJogos.CategoriasEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <asp:CheckBox ID="chkAtivo" runat="server" />
    <asp:Button ID="btnUpdate" runat="server" Text="Atualizar" OnClick="btnUpdate_Click" />
</asp:Content>
