using ProjetoWF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoWF.Controllers
{
    public class CategoriaController :BaseController
    {
        //protected static BaseDadosContainer context = new BaseDadosContainer();
        //protected static BaseController context = new BaseController();
        public static void Add(Categoria C)
        {
            if (C!=null)
            {
                context.Categorias.Add(C);
                context.SaveChanges();
            }
        }
        public static List<Categoria> List()
        {
            return context.Categorias.Where(c=>c.Ativo==true).OrderBy(x=>x.Nome).ToList();
        }
        public static void Remove(Categoria C)
        {
            C.Ativo = false;
            context.Entry(C).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();
            
        }
        public static void Alter(Categoria C)
        {
            context.Entry(C).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();
        }
        public static Categoria Find(Categoria C)
        {
            return context.Categorias.FirstOrDefault(x=>x.Id==C.Id);
        }
        public static Categoria FindPerName(Categoria C)
        {
            return context.Categorias.FirstOrDefault(x => x.Nome == C.Nome);
        }
    }
}