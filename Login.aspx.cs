using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class Login : System.Web.UI.Page
    {
        usercontext db = new usercontext();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Login1_Click(object sender, EventArgs e)
        {
            var myUser = db.Users
        .FirstOrDefault(u => u.Username == Username1.Text
                     && u.Password == Password1.Text);

            if (myUser != null)     //if user was found
            {
                Session["userid"] = myUser.Id.ToString();
                Session["username"] = myUser.Username.ToString();
                Response.Redirect("Home.aspx");
            }
            else    //User was not found
            {
                Label1.Text = "Please Check username and password!";
            }


        }
    }
}