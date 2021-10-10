<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="ChatApplication.ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

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
                <td class="auto-style9" style="text-align:right;">Profile Photo:</td>
                <td class="auto-style10" style="text-align:left;">
                    <asp:Image  ID="Image1" runat="server" Width="176px" />
                </td>
            </tr>

        </table>
            <p style="text-align:center;">
            <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn btn-danger" OnClick="Button1_Click"/>
      <asp:Button ID="Message" runat="server" Text="Message" CssClass="btn btn-dark" />
            </p>
        </div>
    </form>
</body>
</html>
