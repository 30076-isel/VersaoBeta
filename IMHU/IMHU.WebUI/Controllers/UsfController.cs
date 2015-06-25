using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IMHU.Domain;
using IMHU.Domain.Entities.Abstract;
using IMHU.Domain.Entities.Concret;
using System.ServiceModel;

namespace IMHU.WebUI.Controllers
{
    //[Authorize]
    public class UsfController : Controller
    {
        ISharedRepositoy<Encomenda_USF> repository = EncomendaUSFRepositoryLocator.Get();
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
            encomenda.Estado = "ini";
            try
            {
                repository.add(encomenda);
                ChannelFactory<IServicoEncomenda> servico =
                       new ChannelFactory<IServicoEncomenda>("ServicoEncomenda");

                IServicoEncomenda endpt = servico.CreateChannel();
                Encomenda_ACE encAce = new Encomenda_ACE();

                encAce.ID_Encomenda = encomenda.ID_Encomenda;
                encAce.DataEncomenda = encomenda.DataEncomenda;
                encAce.Estado = encomenda.Estado;
                encAce.QuantidadeEncomenda = encomenda.QuantidadeEncomenda;
                encAce.Referencia_Produto = encomenda.Referencia_Produto;
                //encAce.ID_Encomenda = "USF_12";
                //encAce.DataEncomenda = DateTime.Now;
                //encAce.Estado = "INI";
                //encAce.QuantidadeEncomenda = 20;
                //encAce.Referencia_Produto = 210300003;
            
                endpt.PutEncomenda(encAce);

                return RedirectToAction("Encomenda");
            }
            catch(Exception ex)
            {
                return RedirectToAction("Index");
            }

            
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
