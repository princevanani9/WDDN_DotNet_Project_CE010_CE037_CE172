<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ChatApplication.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1  style="text-align:center;"> Profile</h1>
        <table class="auto-style1" style="text-align:center;background:whitesmoke;width:60%;"  align="center">
            <tr>
                <td style="text-align:right;" class="auto-style5">Username: </td>
                <td  style="text-align:left;">
                    <asp:Label ID="profileuname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style5">Email: </td>
                <td  style="text-align:left;">
                    <asp:Label ID="profileemail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style5">Mobile no.: </td>
                <td  style="text-align:left;">
                    <asp:Label ID="profilemobile" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align:right;">Password:</td>
                <td class="auto-style10" style="text-align:left;">
                    <asp:Label ID="profilepassword" runat="server"></asp:Label>
                </td>
            </tr>

        </table>
        <p style="text-align:center;">
            <asp:Button ID="updateprofile" runat="server" Text="Update Profile" OnClick="updateProfile_click" style="height: 29px" />
        </p>
        </div>
    </form>
</body>
</html>
