using ProjetoWF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoWF.Controllers
{
    public class BaseController : BaseDadosContainer
    {
            protected static BaseDadosContainer context = new BaseDadosContainer();
    }
}