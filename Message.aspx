<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="ChatApplication.Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <meta http-equiv="refresh" content="7" />
    <style type="text/css">
        .scroll-div {
            width: 330px;
            background:#004242;
            height: 560px;
            overflow-y: scroll;
            overflow-x:hidden;
            align-self: flex-start;
        }

        .scroll-object {
            color: black;
            font-family: cursive;
            margin-left: 0;
        }

        .scroll1{
            display: flex;
            flex-direction: column-reverse;
            height:560px;
            overflow-y: scroll;
            overflow-x:hidden;
        }

        .scroll2{
            font-family: cursive;
            margin-right: 0;
        }
        .header{
            background-color:white;
            height:45px;
        }
    </style>

</head>
<body style="overflow-x:hidden;background:#004747;">

    <nav class="navbar navbar-expand-lg navbar-dark" style="background:#001f1f;">
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

    
       <form id="form2" runat="server">
                
        <div class="row">
                <div class="col-3">
                    <div class="scroll-bg">
                        <div class="scroll-div">
                            <div class="scroll-object">
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" DataKeyField="Id">
                                    <ItemTemplate>
                                        <div class="card" style="width: 18rem; background:#99e6b3;margin:10px;">

                                            <div class="card-body">
                                                <h5 class="card-title" style="align-self: center;">
                                                    <img src='<%#Eval("Image") %>' class="card-img-top" style="border-radius: 50%; height: 70px; width: 70px; align-self: center;">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%#Eval("Username") %>'></asp:Label></h5>


                                                <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="ShowProfile" Text="ViewProfile" CssClass="btn btn-danger" />
                                                <asp:Button ID="Message" runat="server" Text="Message" CssClass="btn btn-dark" OnClick="ShowMessage" CommandArgument='<%#Eval("Id") %>' />
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:chat %>" SelectCommand="SELECT [Username], [Image], [Id] FROM [Users] WHERE ([Username] NOT LIKE '%' + @Username + '%')">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-9">
                    <div class="header">
                        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                &nbsp;&nbsp;
                                <img src='<%#Eval("Image") %>' style="border-radius: 50%; height: 40px; width: 40px; align-self: center;">
                                &nbsp;&nbsp;
                                <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                <asp:Button ID="clearchat" runat="server" Text="Clear Chat" style="float:right;margin-left:750px;margin-top:5px;" OnClick="clearChat" />

                            </ItemTemplate>

                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:chat %>" SelectCommand="SELECT [Username], [Image] FROM [Users] WHERE ([Id] = @Id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Id" SessionField="receiver" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="scroll1">
                        <div class="scroll2">
                            <div >
                                
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id" Width="139px">
                            <ItemTemplate>
          
                                <div id="myDiv" style='<%# Eval("Sender").ToString() ==Session["userid"].ToString()  ?"background-color:#009e9e;color:white;width:300px;margin-left:235%;margin-right:-235%;border-radius:30px 15px;text-align:right": "background-color:white;border-radius:15px 30px;text-align:left;width:300px;" %>'>
                                    <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' style="padding:20px;"/>
                                    <br />
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' style="padding:20px;" />
                                    <br />
                                </div>
                                <br />

                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:chat %>" SelectCommand="SELECT * FROM [chats] WHERE (([Sender] = @Sender) AND ([Receiver] = @Receiver) OR ([Sender] = @Sender2) AND ([Receiver] = @Receiver2))">
                            <SelectParameters>
                                <asp:SessionParameter Name="Sender" SessionField="sender" Type="String" />
                                <asp:SessionParameter Name="Receiver" SessionField="receiver" Type="String" />
                                <asp:SessionParameter Name="Sender2" SessionField="receiver" Type="String" />
                                <asp:SessionParameter Name="Receiver2" SessionField="sender" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />

                        <asp:TextBox ID="Message1" runat="server" style="width:930px;"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" style="margin-right:-100px;"  />
                        &nbsp;&nbsp;

                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>  
            </form>
</body>
</html>
