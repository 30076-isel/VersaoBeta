using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IMHU.Domain.Entities.Abstract
{
    public interface ISharedRepositoy<T>
    {
        Boolean add(T s);
        T remove(int id);
        T get(int id);
        IEnumerable<T> getAll();
    }
}
