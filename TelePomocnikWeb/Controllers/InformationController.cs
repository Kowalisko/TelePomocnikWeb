using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TelePomocnikWeb.Controllers
{
    public class InformationController : Controller
    {
        public JsonResult GetInformations()
        {
            TelePomocnikDbEntities1 db = new TelePomocnikDbEntities1();
            var informations = db.MustCallInformation.ToList();
            return Json(informations, JsonRequestBehavior.AllowGet);
        }
    }
}
