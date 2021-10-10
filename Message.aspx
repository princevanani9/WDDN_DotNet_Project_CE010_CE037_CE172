<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="ChatApplication.Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="refresh" content="7">
    
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:Background">

             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id">
                            <ItemTemplate >
                               <%# Eval("Sender").ToString() ==Session["userid"].ToString()  ?"Sent": "Received" %>
                                <div  id="myDiv" style=' <%# Eval("Sender").ToString() ==Session["userid"].ToString()  ?"background-color:aqua;text-align:right": "background-color:green;text-align:left" %>'>
                                <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                                <br />
                                <asp:Label ID="DateLabel" runat="server"  Text='<%# Eval("Date") %>' />
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
           
            <asp:TextBox ID="Message1" runat="server" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
&nbsp;&nbsp;

        </div>
        
    </form>
</body>
</html>
