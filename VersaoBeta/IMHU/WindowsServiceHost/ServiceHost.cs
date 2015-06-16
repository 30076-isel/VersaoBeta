using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Description;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

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
            Uri httpUrl = new Uri("http://localhost:8733/Design_Time_Addresses/ACEService/ACEService/");
        
            Type serviceType = typeof(ACEService.ACEService);
            host = new ServiceHost(serviceType, httpUrl);
            //Add a service endpoint
            host.AddServiceEndpoint(typeof(ACEService.ACEService), new WSHttpBinding(), "");

            //Enable metadata exchange
            ServiceMetadataBehavior smb = new ServiceMetadataBehavior();
            smb.HttpGetEnabled = true;
            host.Description.Behaviors.Add(smb);
            host.Open();
        }

        protected override void OnStop()
        {
            if (host != null)
                host.Close();
        }
    }
}
