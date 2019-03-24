using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(parent_login.Startup))]
namespace parent_login
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
