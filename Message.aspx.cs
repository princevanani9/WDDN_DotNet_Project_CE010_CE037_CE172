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
           // Response.Redirect("Message.aspx");


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