using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class Profile : System.Web.UI.Page
    {
        usercontext db = new usercontext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                var id = Convert.ToInt32(Session["userid"]);
                var myUser = db.Users.Single(a => a.Id == id);
                profileuname.Text = myUser.Username.ToString();
                profileemail.Text = myUser.Email.ToString();
                profilemobile.Text = myUser.Mobile.ToString();
                profilepassword.Text = myUser.Password.ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void updateProfile_click(object sender, EventArgs e)
        {
            Response.Redirect("Updateprofile.aspx");
        }
    }
}