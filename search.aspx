             <%@ Page Language="C#" %>
<!DOCTYPE html>

<script runat="server">

    protected void ddlSearchEngines_SelectedIndexChanged(object sender, EventArgs e)
    {
        imgSearchEngine.ImageUrl = ddlSearchEngines.SelectedItem.Text + ".jpg";
        hlSearchEngine.Target = "_blank";
        hlSearchEngine.NavigateUrl = "http://" +  ddlSearchEngines.SelectedItem.Value;
        t.Target = "_blank";
        t.NavigateUrl = "http://" + ddlSearchEngines.SelectedItem+".com";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        Select Search Engine
        <br />
        <asp:DropDownList ID="ddlSearchEngines" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchEngines_SelectedIndexChanged">
            <asp:ListItem Text="Google" Value="google.com" />
            <asp:ListItem Text="Bing" Value="bing.com" />
            <asp:ListItem Text="Yahoo" Value="yahoo.com" />
        </asp:DropDownList>
        <p />

       <asp:HyperLink ID="t" runat="server" ><asp:Image ID="imgSearchEngine" runat="server" /></asp:HyperLink>
        <p />
        <asp:HyperLink ID="hlSearchEngine" runat="server">Go And Search</asp:HyperLink>
   
        

    </form>
</body>
</html>
 
