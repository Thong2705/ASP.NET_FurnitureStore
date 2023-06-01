using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shop.Controllers
{
    public class MenuController : Controller
    {
        ShopEntities1 _db = new ShopEntities1();
        // GET: Menu
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult getMenu()
        {
            var v = from t in _db.Menus where t.hide == false orderby t.order ascending select t;
            return PartialView(v);
        }
    }
}