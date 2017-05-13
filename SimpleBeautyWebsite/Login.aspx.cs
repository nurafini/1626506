using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBeautyWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //(Andrew Muncey, 2015)
            var identityDbContext = new IdentityDbContext("db_1626506_co5027_asgConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtboxLoginUsername.Text, txtboxLoginpw.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("LoginSuccess.aspx", true);
            }
            else
            {
                litErrorLogin.Text = "Invalid username or password";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenthicationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenthicationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
        protected void btnSignup_Click(object sender, EventArgs e)
        {

            var identityDbContext = new IdentityDbContext("db_1626506_co5027_asgConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = txtboxName.Text, Email = txtboxEmail.Text };
            IdentityResult result = manager.Create(user, txtboxPassword.Text);
            if (result.Succeeded)
            {
                IdentityRole endUserRole = new IdentityRole("endUser");
                roleManager.Create(endUserRole);
                Server.Transfer("LoginSuccess.aspx", true);
            }
            else
            {
                litSignup.Text = "Fail to sign up. Please fill in the form again. " + result.Errors.FirstOrDefault();
            }
        }
    }
}