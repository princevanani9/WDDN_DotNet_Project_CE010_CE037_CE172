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
        usercontext db = new usercontext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
    
                login.Visible = false;
                register.Visible = false;
            }
            else
            {
                logout.Visible = false;
                Response.Redirect("Login.aspx");
            }
            
        }
        protected void ShowProfile(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int pid = Convert.ToInt32(btn.CommandArgument);
            Session["pid"] = pid;
            Response.Redirect("ViewProfile.aspx");

        }
    }
}