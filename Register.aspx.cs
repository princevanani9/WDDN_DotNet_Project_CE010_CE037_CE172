using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChatApplication
{
    public partial class Register : System.Web.UI.Page
    {
        String b;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            usercontext db = new usercontext();
            Random r = new Random();
            int num = r.Next();
            f1.SaveAs(Request.PhysicalApplicationPath+"Images/"+num.ToString()+f1.FileName.ToString());
            b ="Images/"+ num.ToString() + f1.FileName.ToString();
            User u1 = new User { Username = Username1.Text, Email = Email1.Text, Mobile = Mobile1.Text, Password = Password1.Text ,Image=b};
            db.Users.Add(u1);
            db.SaveChanges();
            Response.Redirect("Login.aspx");
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
    }
}