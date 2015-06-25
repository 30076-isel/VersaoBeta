using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace IMHU.WebUI.Controllers
{
    public class ArsController : Controller
    {
        //
        // GET: /Ars/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Ars/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Ars/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Ars/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Ars/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Ars/Edit/5

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
        // GET: /Ars/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Ars/Delete/5

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
