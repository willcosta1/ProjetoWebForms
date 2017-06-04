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
    public partial class Gerenciamento : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadCat_Click(object sender, EventArgs e)
        {
            var Cat = new Categoria();
            Cat.Nome = txtNomeCat.Text;
            Cat.Ativo = true;
            CategoriaController.Add(Cat);
            Response.Redirect("Gerenciamento.aspx");
        }

        protected void btnCadJogo_Click(object sender, EventArgs e)
        {
            var Jogo = new Jogo();
            Jogo.Nome = txtNomeJogo.Text;
            Jogo.Descricao = txtDescJogo.Text;
            var C = new Categoria();
            C.Nome = dwlCat.Text;
            C = CategoriaController.FindPerName(C);
            Jogo.Categoria = C;
            Jogo.CategoriaId = C.Id;
            Jogo.Ativo = true;
            JogoController.Add(Jogo);
            Response.Redirect("Gerenciamento.aspx");
        }
    }
}