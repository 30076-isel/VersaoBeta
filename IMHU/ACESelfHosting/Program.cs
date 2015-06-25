using System;
using System.Collections.Generic;
using System.Linq;
using System.Messaging;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;
using System.ServiceModel.Description;
using ACEWebService;


namespace ACESelfHosting
{
    class Program
    {
        static void Main(string[] args)
        {
            String QueueName = WebConfigurationManager.AppSettings["QueueName"];

            if (!MessageQueue.Exists(QueueName))
            {
                Console.WriteLine("Queue does not exist. Creating transactional queue.");
                MessageQueue.Create(QueueName, true);
            }
         

            using (ServiceHost serviceHost = new ServiceHost(typeof(ACEService)))
            {
                serviceHost.Open();
                 
                Console.WriteLine("The service is ready.");
                Console.WriteLine("Press <ENTER> to terminate service.");
                Console.WriteLine();
                Console.ReadLine();
            }
        }
    }
}
