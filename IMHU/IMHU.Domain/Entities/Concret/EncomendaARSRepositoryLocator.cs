using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IMHU.Domain.Entities.Abstract;

namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaARSRepositoryLocator
    {
        private readonly static ISharedRepositoy<Encomenda_ARS> aceRepository = new EncomendaARSRepository();
        public static ISharedRepositoy<Encomenda_ARS> Get()
        {
            return aceRepository;
        }
    }
}
