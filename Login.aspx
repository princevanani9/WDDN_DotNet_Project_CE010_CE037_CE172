<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChatApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #5f9ea0;
}
.user{
    color:white;
}
.box{
  width: 300px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #191919;
  text-align: center;
  height:370px;
  border-radius:15px;
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
#Username1,#Password1{
  border:0;
  background: none;
  display: block;
  margin: 15px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 10px 10px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
}
#Username1:focus{
  width: 280px;
  border-color: #2ecc71;
}
#Password1:focus{
  width: 280px;
  border-color: #2ecc71;
}
#Login1{
  border:0;
  background: none;
  display: block;
  margin: 10px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
#Login1:hover{
  background: #2ecc71;
}

    </style>
</head>
<body>
    <form class="box" id="form1" runat="server">
        <h1> Login Form</h1>
        <p> 
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </p>
       <div class="user"> Username or Email:</div>
               
                    <asp:TextBox ID="Username1" CssClass="user" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username1" ErrorMessage="Please Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
 <div class="user"> Password:</div>
                    <asp:TextBox ID="Password1" CssClass="text" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password1" ErrorMessage="Please enter password" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <asp:Button ID="Login1"  runat="server" Text="Login" OnClick="Login1_Click" />
      
        <p style="text-align:center;font-size:20px;color:white;">
 Create An Account?<asp:HyperLink ID="HyperLogin2" runat="server" NavigateUrl="~/Register.aspx" style="color:#3498db;">Create</asp:HyperLink>
        </p>
        <p>
           </p>
    </form>
</body>
</html>

