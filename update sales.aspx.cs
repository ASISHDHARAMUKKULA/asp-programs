using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updatesales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source = (localdb)\\mssqllocaldb; Initial Catalog = msdb; Integrated Security = True");

            try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update sales set amount=@amount where invno=@invno", con);
         
            cmd.Parameters.AddWithValue("@invno", txt1.Text);
            cmd.Parameters.AddWithValue("@amount", txt2.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "sales updated";
            con.Close();
        }
        catch(Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}
