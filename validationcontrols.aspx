﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "login success";

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <h2>UserLogin</h2>
      Login Name
      <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="pls Enter your name" ValidationGroup="Login"  ></asp:RequiredFieldValidator>
      <p></p>
      Password
      <asp:TextBox ID="txt2" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt2" ErrorMessage="pls enter password" ValidationGroup="Login"></asp:RequiredFieldValidator>
      <p></p>
      <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ValidationGroup="Login" />
      <p></p>
      <h1>Forgot Password</h1>
      Enter your email Address
      <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt3" ErrorMessage="pls enter your email address" ValidationGroup="forgot"></asp:RequiredFieldValidator>
      <p></p>
      <asp:Button ID="Button2" runat="server" Text="submit" ValidationGroup="forgot"/>
      <p></p>
      <asp:Label ID="Label1" runat="server" Text="" EnableViewState="false"></asp:Label>

  </form>
</body>
</html>
