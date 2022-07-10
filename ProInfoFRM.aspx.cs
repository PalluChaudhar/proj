using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class ProInfoFRM : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();

    OleDbConnection con1 = new OleDbConnection();
    OleDbCommand cmd1 = new OleDbCommand();
   
    OleDbDataAdapter dad = new OleDbDataAdapter();
    public DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd.Connection = con;
        if (!IsPostBack)
        {
            generateAutoId();
        }
        
    }
    public void generateAutoId()
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select max(pid) from ProInfoTBL";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        Txtpid.Text = i.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd.Connection = con;
        String SQL = "insert into ProInfoTBL values(" + Txtpid.Text + ",'" + Txtpname.Text + "','" +Txtcat.Text + "','" +Txtunit.Text + "'," +Txtmrp.Text + ")";

        try
        {
            con.Open();
            cmd.CommandText = SQL;
            cmd.ExecuteNonQuery();
            Label7.Text = "Record Inserted";
        }
        catch (Exception exp)
        {
            con.Close();
        }

        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;
        String SQL1 = "insert into stockTBL values(" + Txtpid.Text + ",'" + Txtpname.Text + "','" + Txtcat.Text + "','" + Txtunit.Text + "'," + Txtmrp.Text + ","+0+")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL1;
            cmd1.ExecuteNonQuery();
            //Label7.Text = "Record Inserted";
        }
        catch (Exception exp)
        {
            con1.Close();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProUpdate.aspx");
    }
}