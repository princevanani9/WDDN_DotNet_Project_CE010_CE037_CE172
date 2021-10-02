<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ChatApplication.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
            width: 82%;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 525px;
        }
        .auto-style6 {
            height: 29px;
            width: 525px;
        }
        .auto-style7 {
            height: 24px;
            width: 525px;
        }
        .auto-style8 {
            height: 24px;
        }

        body{
            
                      background-repeat:repeat;
            opacity:0.8;
        }
        table{
            font-size:35px;
            font-weight:bold;
        }
        .auto-style9 {
            height: 28px;
            width: 525px;
        }
        .auto-style10 {
            height: 28px;
        }
        .auto-style14 {
            width: 757px;
        }
        .auto-style15 {
            height: 29px;
            width: 757px;
        }
        .auto-style16 {
            height: 24px;
            width: 757px;
        }
        .auto-style17 {
            height: 28px;
            width: 757px;
        }
    </style>
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
<body >
    <form id="form1" runat="server">
        <h1  style="text-align:center;"> Register Form</h1>
        <table class="auto-style1" style="text-align:center;background:whitesmoke;"  align="center">
            <tr>
                <td style="text-align:right;" class="auto-style5">Username:</td>
                <td  style="text-align:left;">
                    <asp:TextBox ID="Username1" runat="server" Height="18px" Width="375px"></asp:TextBox>
                </td>
                <td  style="text-align:left;" class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Username can't be blank" ForeColor="Red" ControlToValidate="Username1">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="userValidate" ControlToValidate="Username1" ErrorMessage="The username field must be between 6 and 14 characters in length. These characters can be uppercase,lowercase, numeric, or underscores" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate">Invalid Username</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"  style="text-align:right;">Email:</td>
                <td class="auto-style4" style="text-align:left;">
                    <asp:TextBox ID="Email1" runat="server" TextMode="Email" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style15" style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email can't be blank" ForeColor="Red" ControlToValidate="Email1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email1" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align:right;"> Mobile No:</td>
                <td class="auto-style8" style="text-align:left;">
                    <asp:TextBox ID="Mobile1" runat="server" Width="375px"></asp:TextBox>
                </td>
                <td class="auto-style16" style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobille number can't be blank" ForeColor="Red" ControlToValidate="Mobile1">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ClientValidationFunction="ValidateMobile" ControlToValidate="Mobile1" ErrorMessage="Mobile nubmer must be length 10 and contain only digit" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate">Invalid Mobile no</asp:CustomValidator>
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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        </p>
        <p style="text-align:center;font-size:20px;">
 Already Have An Account?<asp:HyperLink ID="HyperLogin1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        </p>
        <p style="text-align:center;font-size:20px;">
            &nbsp;</p>
        <p>
           </p>
    </form>
</body>
</html>
