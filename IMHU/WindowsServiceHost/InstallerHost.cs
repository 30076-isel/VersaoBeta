using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Linq;
using System.ServiceProcess;
using System.Threading.Tasks;

namespace WindowsServiceHost
{
    [RunInstaller(true)]
    public partial class InstallerHost : System.Configuration.Install.Installer
    {
        private ServiceProcessInstaller process;
        private ServiceInstaller service;
        public InstallerHost()
        {
            process = new ServiceProcessInstaller();
            process.Account = ServiceAccount.NetworkService;
            service = new ServiceInstaller();

            service.ServiceName = "ACEHostedWindowsService";
            service.DisplayName = "ACEHostedWindowsService";
            service.Description = "ACE Service Hosted";
            service.StartType = ServiceStartMode.Manual;

            Installers.Add(process);
            Installers.Add(service);
        }
    }
}
