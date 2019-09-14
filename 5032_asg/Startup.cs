using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_5032_asg.Startup))]
namespace _5032_asg
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
