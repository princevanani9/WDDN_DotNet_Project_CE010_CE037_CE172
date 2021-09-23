<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChatApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1  style="text-align:center;"> Login Form</h1>
        <p  style="text-align:center;"> 
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <table class="auto-style1" style="text-align:center;background:whitesmoke;width:60%;"  align="center">
            <tr>
                <td style="text-align:right;" class="auto-style5">Username or Email:</td>
                <td  style="text-align:left;">
                    <asp:TextBox ID="Username1" runat="server" Height="18px" Width="375px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username1" ErrorMessage="Please Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align:right;">Password:</td>
                <td class="auto-style10" style="text-align:left;">
                    <asp:TextBox ID="Password1" runat="server" TextMode="Password" Width="375px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password1" ErrorMessage="Please enter password" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

        </table>
        <p style="text-align:center;">
            <asp:Button ID="Login1" runat="server" Text="Login" OnClick="Login1_Click" />
        </p>
        <p style="text-align:center;font-size:20px;">
 Create An Account?<asp:HyperLink ID="HyperLogin2" runat="server" NavigateUrl="~/Register.aspx">Create</asp:HyperLink>
        </p>
        <p>
           </p>
    </form>
</body>
</html>

