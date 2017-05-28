<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product1details.aspx.cs" Inherits="product1details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Product id</br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="Button1" runat="server" Text="details" OnClick="Button1_Click" />
        <p></p>
        Name
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <p></p>
        price
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <p></p>
        qoh
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <p></p>
        catcode
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <p></p>
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>


    </form>
</body>
</html>
