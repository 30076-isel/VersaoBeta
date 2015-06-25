using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IMHU.Domain.Entities.Abstract;

namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaUSFRepositoryLocator
    {
        private readonly static ISharedRepositoy<Encomenda_USF> repo = new EncomendaUSFRepository();
        public static ISharedRepositoy<Encomenda_USF> Get() 
        {
            return repo;
        }
    }
}
