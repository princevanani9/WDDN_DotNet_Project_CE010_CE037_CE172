<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ChatApplication.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <title>Home</title>
    <style type="text/css">
        
        .scroll-div {
            width:330px;
            background: grey;
            height: 550px;
            overflow-y: scroll;
            align-self:flex-start;
        }

        .scroll-object {
            color: black;
            font-family: cursive;
            padding: 10px;
             margin-left:0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Chat</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink class="nav-link active" aria-current="page" ID="login" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink class="nav-link active" aria-current="page" ID="register" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink class="nav-link active" aria-current="page" ID="logout" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
                    </li>
                </ul>
                <a href="Profile.aspx" style="padding-right: 20px">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-person" viewBox="0 0 16 16">
                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
                    </svg></a>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <form id="form1" runat="server">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mychattingConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([Username] NOT LIKE '%' + @Username + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
  <div class="row">
    
    <div class="col-sm-3" >
            <div class="scroll-bg" >
                <div class="scroll-div">
                    <div class="scroll-object">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="card" style="width: 18rem;background:#dcdcdc;">

                                    <div class="card-body">
                                        <h5 class="card-title" style="align-self: center;">
                                            <img src='<%#Eval("Image") %>' class="card-img-top" style="border-radius: 50%; height: 70px; width: 70px; align-self: center;">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%#Eval("Username") %>'></asp:Label></h5>


                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="ShowProfile" Text="ViewProfile" CssClass="btn btn-danger" />
                                        <asp:Button ID="Message" runat="server" Text="Message" CssClass="btn btn-dark" OnClick="ShowMessage" CommandArgument='<%#Eval("Id") %>' />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    &nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </div>
    <div class="col-sm-9">
      Hello 
    </div>
  </div>
    </form>
</body>
</html>
