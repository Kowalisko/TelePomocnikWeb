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
            DateTime from = DateTime.Now.AddDays(-2);
            var informations = db.MustCallInformation.ToList();
            var info = "";

            foreach (var item in informations)
	        {
                info += item.DateMustContact + ": " + item.Telemarketer.Name + " " + item.Telemarketer.Surname + " do " + item.Contact.Name + " " + item.Contact.Surname + " z informacją: " + item.Information + Environment.NewLine;
	        }

            return Json(info, JsonRequestBehavior.AllowGet);
        }
    }
}
