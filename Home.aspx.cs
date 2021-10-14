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
        public bool status1 { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
    
                login.Visible = false;
                register.Visible = false;
              //  Session["status1"] = "False";
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
        protected void ShowMessage(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int rid = Convert.ToInt32(btn.CommandArgument);
            Session["receiver"] = rid;
            Session["sender"] = Session["userid"];
            //Session["status1"] = "True";
            Response.Redirect("Message.aspx");
            

        }
        protected void search_Click(object sender, EventArgs e)
        {
            if (searchtextbox.Text != null)
            {
                var uname = searchtextbox.Text;
                try
                {
                    var myUser = db.Users.Single(a => a.Username == uname);
                    if (myUser != null)
                    {
                        Session["receiver"] = myUser.Id;
                        Session["sender"] = Session["userid"];
                        Response.Redirect("Message.aspx");
                    }
                    else
                    {
                        Response.Redirect("Message.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Label2.Text = "User not found!!";
                }
            }
        }

    }
}