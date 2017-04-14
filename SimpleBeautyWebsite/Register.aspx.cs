using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBeautyWebsite
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
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
            }
            else
            {
                litSignup.Text = "Fail to sign up. Please fill in the form again. " + result.Errors.FirstOrDefault();
            }
        }
    }
}