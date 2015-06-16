using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IMHU.Domain;

namespace IMHU.WebUI.Controllers
{
    //[Authorize]
    public class UsfController : Controller
    {

        //
        // GET: /Usf/
        
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Encomenda() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult Encomenda(Encomenda_USF encomenda)
        {
            //AceService ace;
            return View();
        }

        public ActionResult ListarEncomenda()
        {
            return View();
        }
       
        //
        // GET: /Usf/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }


        //
        // GET: /Usf/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }
        //
        // POST: /Usf/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Usf/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Usf/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
