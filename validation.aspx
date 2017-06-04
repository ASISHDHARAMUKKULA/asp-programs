<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("you cancelled the process");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Validation</title>
</head>
<body>
  <form id="form1" runat="server" method="get">
 <h2>validation controls</h2>
      <p></p>
      Enter your name
      
      
      <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="you must enter name" Display="Dynamic"></asp:RequiredFieldValidator>
      <p></p>
      Enter your code (1 to 100)
      <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
      <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt2" ErrorMessage="Invalid Code" MaximumValue="100" MinimumValue="1" Type="Integer" ></asp:RangeValidator>
      
      <p></p>
      Enter min and max quantity
      <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
      <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
      <p></p>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Min  <= Max"  ControlToCompare="txt4" ControlToValidate="txt3" Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>
      <p></p>
      Enter Pin Code
      <asp:TextBox ID="txt5" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="txt5" ErrorMessage="Pin code is must"></asp:RequiredFieldValidator>
      <p></p>
      <asp:Button ID="Button1" runat="server" Text="submit" /> 
      <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" />
  </form>
</body>
</html>
