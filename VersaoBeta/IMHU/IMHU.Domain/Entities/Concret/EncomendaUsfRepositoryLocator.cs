using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IMHU.Domain.Entities.Abstract;

namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaUsfRepositoryLocator
    {
        private readonly static ISharedRepositoy<Encomenda_USF> repo = new EncomendaUsfRepository();
        private ISharedRepositoy<Encomenda_USF> Get() 
        {
            return repo;
        }
    }
}
