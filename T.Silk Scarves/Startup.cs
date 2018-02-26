using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(T.Silk_Scarves.Startup))]
namespace T.Silk_Scarves
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
