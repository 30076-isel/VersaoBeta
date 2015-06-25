using ACEServiceNamespace;
using ACEWebService;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Messaging;
using System.ServiceModel;
using System.ServiceModel.Description;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace WindowsServiceHost
{
    public partial class ServiceHostWCF : ServiceBase
    {
        ServiceHost host;
        public ServiceHostWCF()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            if (host != null)
            {
                host.Close();
            }
            
            String QueueName = WebConfigurationManager.AppSettings["QueueName"];
            
            if (!MessageQueue.Exists(QueueName))
            {
                Console.WriteLine("Queue does not exist. Creating transactional queue.");
                MessageQueue.Create(QueueName, true);
            }
            Uri httpUrl = new Uri("http://localhost:8733/ACEService/");
        
            Type serviceType = typeof(ACEService);
            host = new ServiceHost(serviceType, httpUrl);
            //Add a service endpoint
            using(host = new ServiceHost(serviceType))
            {
                host.Open();
            }
            /*host.AddServiceEndpoint(typeof(ACEService), new WSHttpBinding(), "");

            //Enable metadata exchange
            ServiceMetadataBehavior smb = new ServiceMetadataBehavior();
            smb.HttpGetEnabled = true;
            host.Description.Behaviors.Add(smb);*/
            
        }

        protected override void OnStop()
        {
            if (host != null)
                host.Close();
        }
    }
}
