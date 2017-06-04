using ProjetoWF.Controllers;
using ProjetoWF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWF.Views.CategoriasJogos
{
    public partial class JogosEditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                this.popCampos(int.Parse(Request.QueryString["id"]));
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            this.Atualizar(int.Parse(Request.QueryString["id"]));
        }
        private void popCampos(int id)
        {
            var Jogo = new Jogo();
            Jogo.Id = id;
            Jogo=JogoController.Find(Jogo);
            txtNome.Text = Jogo.Nome;
            txtDesc.Text = Jogo.Descricao;
            dwlCat.Text = Jogo.Categoria.Nome;
        }
        private void Atualizar(int id)
        {
            var j = new Jogo();
            j.Id = id;
            j=JogoController.Find(j);
            j.Nome = txtNome.Text;
            j.Descricao = txtDesc.Text;
            var Cat = new Categoria();
            Cat.Nome = dwlCat.Text;
            Cat=CategoriaController.FindPerName(Cat);
            j.Categoria = Cat;
            if (chkAtivo.Checked == false)
            {
                j.Ativo = false;
            }
            else
            {
                j.Ativo = true;
            }
            JogoController.Alter(j);
            Response.Redirect("Gerenciamento.aspx");
        }
    }
}