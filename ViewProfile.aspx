<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="ChatApplication.ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <style>
    body{
             margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: #5f9ea0;
        }
        .box{
  width: 600px;
  padding: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #191919;
  text-align: center;
  height:500px;
  border-radius:15px;
}
        #profileuname,#profileemail,#profilemobile,#profilepassword{
  border:0;
  background: none;
  display: block;
  margin: 5px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 10px 10px;
  width: 300px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
}
        .box td{
             color: white;
        }
        table{
            font-weight:bold;
        }
        .box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
        #profileuname:focus{
  width: 280px;
  border-color: #2ecc71;
}
      
        #profilepassword:focus{
            width: 280px;
  border-color: #2ecc71;
        }
        #profileemail:focus{
            width: 280px;
  border-color: #2ecc71;
        }
        #profilemobile:focus{
            width: 280px;
  border-color: #2ecc71;
        }

    </style>
</head>
<body>
    <form  class="box" id="form1" runat="server">
        <div>
            <h1  style="text-align:center;"> Profile</h1>
        <table class="auto-style1"  align="center">
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
            <p></p>
            <p style="text-align:center;">
            <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn btn-danger" OnClick="Button1_Click"/>

            </p>
        </div>
    </form>
</body>
</html>
