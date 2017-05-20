<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>LOGIN</title>
</head>
<body>
  <form id="form1" runat="server">
 <h1>email address</h1>
      <asp:TextBox ID="Txt1" runat="server" Text="asish"></asp:TextBox>
     
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="mailisrequired"></asp:RequiredFieldValidator>
      <h1>password</h1>
      <asp:TextBox ID="Txt2" runat="server" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt2" ErrorMessage="passwordisrequired"></asp:RequiredFieldValidator>
      <p></p>
      <asp:Button ID="btnLogin" runat="server" Text="Login" />
  </form>
</body>
</html>
