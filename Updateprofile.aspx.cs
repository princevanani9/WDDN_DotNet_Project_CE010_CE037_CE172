using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class updateprofile : System.Web.UI.Page
    {
        usercontext db = new usercontext();
        String b;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(!IsPostBack)
            {
                if (Session["userid"] != null)
                {
                    var id = Convert.ToInt32(Session["userid"]);
                    var myUser = db.Users.Single(a => a.Id == id);
                    Username.Text = myUser.Username;
                    Email.Text = myUser.Email;
                    Mobile.Text = myUser.Mobile;
                    Password1.Text = myUser.Password;
                    Password2.Text = myUser.Password;
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            usercontext db = new usercontext();
            var id = Convert.ToInt32(Session["userid"]);
            User u = db.Users.Where(a => a.Id == id).FirstOrDefault<User>();
            Random r = new Random();
            int num = r.Next();
            f1.SaveAs(Request.PhysicalApplicationPath + "Images/" + num.ToString() + f1.FileName.ToString());
            b = "Images/" + num.ToString() + f1.FileName.ToString();
            u.Username = Username.Text;
            u.Email = Email.Text;
            u.Mobile = Mobile.Text;
            u.Password = Password1.Text;
            u.Image = b;
            db.Users.AddOrUpdate(u);
            db.SaveChanges();
            Session["username"] = Username.Text;
            Response.Redirect("profile.aspx");
        }
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 6 || args.Value.Length > 14)
            {
                args.IsValid = false;
            }
            else
            {
                foreach (var ch in args.Value)
                {
                    if (!char.IsUpper(ch) && !char.IsLower(ch) && !char.IsDigit(ch) &&
                    !ch.Equals('_'))
                    {

                        args.IsValid = false;

                        break;
                    }
                    else
                    {

                        args.IsValid = true;
                    }
                }
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 6 || args.Value.Length > 14)
            {

                args.IsValid = false;
            }
            else
            {
                bool lower = false, upper = false, digit = false;
                foreach (var ch in args.Value)
                {
                    if (char.IsUpper(ch))
                    {
                        upper = true;
                    }
                    if (char.IsLower(ch))
                    {
                        lower = true;
                    }

                    if (char.IsDigit(ch))

                    {
                        digit = true;
                    }
                }
                if (digit && upper && lower)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 10 || args.Value.Length > 10)
            {
                args.IsValid = false;
            }
            else
            {
                foreach (var ch in args.Value)
                {
                    if (!char.IsDigit(ch))
                    {
                        args.IsValid = false;
                        break;
                    }
                    else
                    {

                        args.IsValid = true;
                    }
                }
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}