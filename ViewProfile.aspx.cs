using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        usercontext db = new usercontext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pid"] != null)
            {
                var id = Convert.ToInt32(Session["pid"]);
                var myUser = db.Users.Single(a => a.Id == id);
                profileuname.Text = myUser.Username.ToString();
                profileemail.Text = myUser.Email.ToString();
                profilemobile.Text = myUser.Mobile.ToString();
                Image1.ImageUrl = myUser.Image.ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("pid");
            Response.Redirect("Home.aspx");
        }
    }
}