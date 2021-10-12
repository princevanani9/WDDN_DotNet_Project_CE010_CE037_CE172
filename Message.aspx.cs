using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class Message : System.Web.UI.Page
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
        protected void ShowMessage(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int rid = Convert.ToInt32(btn.CommandArgument);
            Session["receiver"] = rid;
            Session["sender"] = Session["userid"];
            //Session["status1"] = "True";
            Response.Redirect("Message.aspx");


        }
        
        protected void clearChat(object sender, EventArgs e)
        {
            chatContext cc = new chatContext();
            var s = Session["sender"].ToString();
            var r = Session["receiver"].ToString();
            cc.chats.RemoveRange(cc.chats.Where(c => c.Sender == s && c.Receiver == r));
            cc.chats.RemoveRange(cc.chats.Where(c => c.Sender == r && c.Receiver == s));
            cc.SaveChanges();
            Response.Redirect("Message.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            String sender1 = Session["sender"].ToString();
            String receiver1 = Session["receiver"].ToString();
            DateTime now = DateTime.Now;
            chatContext cc = new chatContext();
            chat c1 = new chat { Sender = sender1,Receiver= receiver1,Message=Message1.Text,Date=now.ToString()};
            cc.chats.Add(c1);
            cc.SaveChanges();
            Message1.Text = "";
            //Response.Redirect(Request.RawUrl); 

        }
    }
}