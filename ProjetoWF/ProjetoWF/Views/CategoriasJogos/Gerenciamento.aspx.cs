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
        }
    }
}