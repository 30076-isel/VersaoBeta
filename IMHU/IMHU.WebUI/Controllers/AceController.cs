using IMHU.Domain;
using IMHU.Domain.Entities.Abstract;
using IMHU.Domain.Entities.Concret;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace IMHU.WebUI.Controllers
{
    public class AceController : Controller
    {
        ISharedRepositoy<Encomenda_ACE> repository = EncomendaACERepositoryLocator.Get();
        //
        // GET: /Ace/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Ace/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Ace/Create

        public ActionResult Create()
        {
            return View();
        }


        public ActionResult ListaEncomendas()
        {

            return View(repository.getAll());
        }

        

        //
        // POST: /Ace/Create

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
        // GET: /Ace/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Ace/Edit/5

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
        // GET: /Ace/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Ace/Delete/5

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
