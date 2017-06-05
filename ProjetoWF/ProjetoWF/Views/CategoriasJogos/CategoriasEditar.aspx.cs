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
    public partial class CategoriasEditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                this.popCampos(int.Parse(Request.QueryString["id"]));
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            this.Atualizar(int.Parse(Request.QueryString["id"]));
        }
        private void popCampos(int id)
        {
            var Cat = new Categoria();
            Cat.Id = id;
            Cat=CategoriaController.Find(Cat);
            txtNome.Text = Cat.Nome;
            chkAtivo.Checked=true;
        }
        private void Atualizar(int id)
        {
            var Cat = new Categoria();
            Cat.Id = id;
            Cat=CategoriaController.Find(Cat);
            Cat.Nome = txtNome.Text;
            if (chkAtivo.Checked == false)
            {
                Cat.Ativo = false;
            }else
            {
                Cat.Ativo = true;
            }
            CategoriaController.Alter(Cat);
            Response.Redirect("Gerenciamento.aspx");
        }
    }
}