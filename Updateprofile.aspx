<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Updateprofile.aspx.cs" Inherits="ChatApplication.updateprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
    <script>
        function ValidatePassword(source, arguments) {
            arguments.IsValid = false;
            length = arguments.Value.length;
            x = arguments.Value;
            if ((14 < length) || (length < 6)) {
                arguments.IsValid = false;
            } else if (/[A-Z]/.test(x) && /[0-9]/.test(x) && /[a-z]/.test(x)) {
                arguments.IsValid = true;
            } else {
                arguments.IsValid = false;
            }
        }
        function ValidateMobile(source, arguments) {
            arguments.IsValid = false;
            length = arguments.Value.length;
            x = arguments.Value;
            reg = new RegExp("[1-9]{1}[0-9]{9}");
            if ((10 < length) || (length < 10)) {
                arguments.IsValid = false;
            }
            else {
                if (reg.test(x)) {
                    arguments.IsValid = true;
                }
                else {
                    arguments.IsValid = false;
                }
            }
        }

       function userValidate(source, arguments) {
            arguments.IsValid = false;
            length = arguments.Value.length;
            reg = new RegExp("^[a-zA-Z0-9_]*$");
            x = arguments.Value;
            if ((14 < length) || (length < 6)) {
                arguments.IsValid = false;
            } else {
                if (reg.test(x)) {
                    arguments.IsValid = true;
                }
                else {
                    arguments.IsValid = false;
                }
            }

        }
    </script>
<body>
    <form id="form1" runat="server">
        <h1  style="text-align:center;"> Update profile</h1>
        <table class="auto-style1" style="text-align:center;background:whitesmoke;"  align="center">
            <tr>
                <td style="text-align:right;" class="auto-style5">Username:</td>
                <td  style="text-align:left;">
                    <asp:TextBox ID="Username" runat="server" Height="18px" Width="375px"></asp:TextBox>
                </td>
                <td  style="text-align:left;" class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Username can't be blank" ForeColor="Red" ControlToValidate="Username">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="userValidate" ControlToValidate="Username" ErrorMessage="The username field must be between 6 and 14 characters in length. These characters can be uppercase,lowercase, numeric, or underscores" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate">Invalid Username</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"  style="text-align:right;">Email:</td>
                <td class="auto-style4" style="text-align:left;">
                    <asp:TextBox ID="Email" runat="server" TextMode="Email" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style15" style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email can't be blank" ForeColor="Red" ControlToValidate="Email">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align:right;"> Mobile No:</td>
                <td class="auto-style8" style="text-align:left;">
                    <asp:TextBox ID="Mobile" runat="server" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style16" style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobille number can't be blank" ForeColor="Red" ControlToValidate="Mobile">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ClientValidationFunction="ValidateMobile" ControlToValidate="Mobile" ErrorMessage="Mobile nubmer must be length 10 and contain only digit" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate">Invalid Mobile no</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align:right;">Password:</td>
                <td class="auto-style10" style="text-align:left;">
                    <asp:TextBox ID="Password1" runat="server" TextMode="Password" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style17" style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password can't be blank" ForeColor="Red" ControlToValidate="Password1">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ClientValidationFunction="ValidatePassword" ControlToValidate="Password1" ErrorMessage="It length must between 6-14. it must have atleast one Uppercase ,one Lower case and one digit" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate">Invalid password</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style5"> Confirm Password:</td>
                <td style="text-align:left;">
                    <asp:TextBox ID="Password2" runat="server" TextMode="Password" Width="377px"></asp:TextBox>
                </td>
                <td style="text-align:left;" class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Confirm Password can't be blank" ForeColor="Red" ControlToValidate="Password2">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password1" ControlToValidate="Password2" ErrorMessage="Password and Confirm password must match" ForeColor="Red">password mismatch</asp:CompareValidator>
                </td>
            </tr>
            <tr>
               <td style="text-align:right;" class="auto-style5"> Profile Photo:</td>
                <td style="text-align:left;">
                    <asp:FileUpload ID="f1" runat="server" Width="211px" />
                </td>
                <td style="text-align:left;" class="auto-style14">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <p>
        </p>
         <p style="text-align:center;">
            <asp:Button ID="Button2" runat="server" Text="Back" CssClass="btn btn-dark" OnClick="Button2_Click"/>&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save changes" CssClass="btn btn-danger"/>
        </p>
     
       
        <p style="text-align:center;font-size:20px;">
            &nbsp;</p>
        <p>
           </p>
    </form>
</body>
</html>
