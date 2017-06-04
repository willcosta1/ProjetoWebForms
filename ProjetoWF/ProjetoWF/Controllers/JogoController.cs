using ProjetoWF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoWF.Controllers
{
    public class JogoController
    {
        static protected BaseDadosContainer context = new BaseDadosContainer();
        public static void Add(Jogo J)
        {
            if (J!=null)
            {
                context.Jogos.Add(J);
                context.SaveChanges();
            }
        }
        public static List<Jogo> List()
        {
            return context.Jogos.OrderBy(j => j.Nome).ToList();
        }
        public static void Remove(Jogo J)
        {
            J.Ativo = false;
            context.Entry(J).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();
        }
        public static void Alter(Jogo J)
        {
            context.Entry(J).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();
        }
        public static Jogo Find(Jogo J)
        {
            return context.Jogos.FirstOrDefault(x=>x.Id==J.Id);
        }
    }
}