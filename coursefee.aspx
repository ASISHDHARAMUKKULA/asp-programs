 <%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int fee = Int32.Parse(ddl.SelectedItem.Value);
        if (rbmor.Checked)
            fee = fee - fee * 10 / 100;
        else
            if (rbaf.Checked)
            fee = fee - fee * 20 / 100;
        if (os.Checked)
            fee = fee - fee * 10 / 100;
        if (material.Checked)
            fee += 500;
        Lbltxt.Text = fee.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>COURSE FEE</title>
    <style>       body :{
            "background-color: #00FF00";
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
      <h1>courses fee and their timings</h1>
      <asp:DropDownList ID="ddl" runat="server">
      <asp:ListItem Text="java" value="5000" />
       <asp:ListItem Text="ASP.NET" value="5500" />
       <asp:ListItem Text="cprogramming" value="3000" />
          </asp:DropDownList>
      <p></p>
      <h1>timings</h1>
      <asp:RadioButton ID="rbmor" runat="server" Text="morning" GroupName="timings"/>
        <asp:RadioButton ID="rbaf" runat="server" Text="afternoon" GroupName="timings"/>
        <asp:RadioButton ID="rbeve" runat="server" Text="evening" GroupName="timings"/>
      </asp:RadioButton>
    <p></p>
      course material
      <asp:CheckBox ID="material" runat="server" />
      <p></p>
      old student
      <asp:CheckBox ID="os" runat="server" />
      <p></p>
      <asp:Button ID="Button1" runat="server" Text="showdetails" OnClick="Button1_Click" />
      <p></p>
      <asp:Label ID="Lbltxt" runat="server" Text=""></asp:Label>
      <p></p>





  </form>
</body>
</html>
