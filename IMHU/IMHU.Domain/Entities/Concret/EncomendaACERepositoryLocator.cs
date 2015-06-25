using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IMHU.Domain.Entities.Abstract;

namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaACERepositoryLocator
    {
        private readonly static ISharedRepositoy<Encomenda_ACE> repo = new EncomendaACERepository();
        public static ISharedRepositoy<Encomenda_ACE> Get()
        {
            return repo;
        }
    }
}
