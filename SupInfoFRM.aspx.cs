using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;


public partial class SupInfoFRM : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();
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
        cmd.CommandText = "select max(supid) from SupInfoTBL";
        int i =Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        Txtsupid.Text = i.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd.Connection = con;

        String SQL = "insert into SupInfoTBL values(" + Txtsupid.Text+ ",'" + Txtsupname.Text + "','" + Txtsupadd.Text + "','" +Txtsupcity.Text + "','" + Txtsupemail.Text+ "','" + Txtsupcontact.Text+ "',"+0+")";

        try
        {
            con.Open();
            cmd.CommandText = SQL;
            cmd.ExecuteNonQuery();
            Label8.Text = "Record Inserted";
        }
        catch (Exception exp)
        {
            con.Close();
        }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SupUpdate.aspx");
    }
}