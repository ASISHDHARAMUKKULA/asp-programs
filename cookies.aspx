<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("uname", txt1.Text);
        if(CheckBox1.Checked)
        {
            c.Expires = DateTime.Now.AddDays(7);
        }
        Response.Cookies.Add(c);
        Response.Redirect("default.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["uname"];
        if (c != null)
            Response.Redirect("default.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <h2>Login</h2>
      UserName
      <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
      <p></p>
      Password
      <asp:TextBox ID="txt2" runat="server" TextMode="Password"></asp:TextBox>
      <p></p>
      <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
      <p></p>
      <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
  </form>
</body>
</html>
