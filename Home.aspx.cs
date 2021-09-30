using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                homeuname.Text = "Welcome, " + Session["username"].ToString();
                login.Visible = false;
                register.Visible = false;
            }
            else
            {
                logout.Visible = false;
            }
        }
    }
}