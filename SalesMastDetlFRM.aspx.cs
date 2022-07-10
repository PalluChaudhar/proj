using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class SalesMastDetlFRM : System.Web.UI.Page
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
        cmd.CommandText = "select max(sbno) from SalesMastTBL";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
       Txtsbno.Text = i.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd.Connection = con;
        String SQL = "insert into SalesMastTBL values(" + Txtsbno.Text + ",'" + Txtsdate.Text + "'," + Txtcustid.Text + ",'" + Txtcustname.Text + "'," +TxttotalAmt.Text + ")";

        try
        {
            con.Open();
            cmd.CommandText = SQL;
            cmd.ExecuteNonQuery();
        }

        catch (Exception exp)
        {
            con.Close();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;
        String SQL1 = "insert into SalesDetlTBL values(" + Txtsbno.Text+ "," +Txtpid1.Text + ",'" +Txtpname1.Text + "','" + Txtcategory1.Text + "','" + Txtunit1.Text + "'," + Txtmrp1.Text + "," + Txtqty1.Text + "," + Txtrate1.Text + "," + Txtamt1.Text + ")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL1;
            cmd1.ExecuteNonQuery();
           Label15.Text= "Record Inserted";
        }
        catch (Exception exp)
        {
            con1.Close();
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;
        String SQL1 = "insert into SalesDetlTBL values(" + Txtsbno.Text + "," + Txtpid2.Text + ",'" + Txtpname2.Text + "','" + Txtcategory2.Text + "','" + Txtunit2.Text + "'," + Txtmrp2.Text + "," + Txtqty2.Text + "," + Txtrate2.Text + "," + Txtamt2.Text + ")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL1;
            cmd1.ExecuteNonQuery();
            Label15.Text = "Record Inserted";
        }
        catch (Exception exp)
        {
            con1.Close();
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;
        String SQL1 = "insert into SalesDetlTBL values(" + Txtsbno.Text + "," + Txtpid3.Text + ",'" + Txtpname3.Text + "','" + Txtcategory3.Text + "','" + Txtunit3.Text + "'," + Txtmrp3.Text + "," + Txtqty3.Text + "," + Txtrate3.Text + "," + Txtamt3.Text + ")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL1;
            cmd1.ExecuteNonQuery();
            Label15.Text = "Record Inserted";
        }
        catch (Exception exp)
        {
            con1.Close();
        }
    }
    protected void Txtpname1_Click(object sender, EventArgs e)
    {
         con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;

        String SQL100 = null;
        SQL100 = "select * from stockTBL where pid=" + Txtpid1.Text;

        System.Data.OleDb.OleDbDataAdapter DA = new System.Data.OleDb.OleDbDataAdapter(SQL100, con1);

        System.Data.DataSet DS = new System.Data.DataSet();

        DA.Fill(DS, "Tbl1");

        System.Data.DataRow RW;

        RW = DS.Tables["Tbl1"].Rows[0];
        Txtpname1.Text = RW["pname"].ToString();
        Txtcategory1.Text = RW["category"].ToString();
        Txtunit1.Text = RW["unit"].ToString();
        Txtmrp1.Text = RW["mrp"].ToString();

        RW = null;
        DS = null;
        DA = null;
        con1.Close();

    }
    protected void Txtpname2_Click(object sender, EventArgs e)
    {
        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;

        String SQL100 = null;
        SQL100 = "select * from stockTBL where pid=" + Txtpid2.Text;

        System.Data.OleDb.OleDbDataAdapter DA = new System.Data.OleDb.OleDbDataAdapter(SQL100, con1);

        System.Data.DataSet DS = new System.Data.DataSet();

        DA.Fill(DS, "Tbl1");

        System.Data.DataRow RW;

        RW = DS.Tables["Tbl1"].Rows[0];
        Txtpname2.Text = RW["pname"].ToString();
        Txtcategory2.Text = RW["category"].ToString();
        Txtunit2.Text = RW["unit"].ToString();
        Txtmrp2.Text = RW["mrp"].ToString();

        RW = null;
        DS = null;
        DA = null;
        con1.Close();

    }
    protected void Txtpname3_Click(object sender, EventArgs e)
    {
        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;

        String SQL100 = null;
        SQL100 = "select * from stockTBL where pid=" + Txtpid3.Text;

        System.Data.OleDb.OleDbDataAdapter DA = new System.Data.OleDb.OleDbDataAdapter(SQL100, con1);

        System.Data.DataSet DS = new System.Data.DataSet();

        DA.Fill(DS, "Tbl1");

        System.Data.DataRow RW;

        RW = DS.Tables["Tbl1"].Rows[0];
        Txtpname3.Text = RW["pname"].ToString();
        Txtcategory3.Text = RW["category"].ToString();
        Txtunit3.Text = RW["unit"].ToString();
        Txtmrp3.Text = RW["mrp"].ToString();

        RW = null;
        DS = null;
        DA = null;
        con1.Close();

    }
    protected void Txtamt1_Click(object sender, EventArgs e)
    {
        int qty = Convert.ToInt32(Txtqty1.Text);
        double rate = Convert.ToDouble(Txtrate1.Text);
        double amt = qty * rate;
        Txtamt1.Text = amt.ToString();
    }
    protected void Txtamt2_Click(object sender, EventArgs e)
    {
        int qty = Convert.ToInt32(Txtqty2.Text);
        double rate = Convert.ToDouble(Txtrate2.Text);
        double amt = qty * rate;
        Txtamt2.Text = amt.ToString();
    }
    protected void Txtamt3_Click(object sender, EventArgs e)
    {
        int qty = Convert.ToInt32(Txtqty3.Text);
        double rate = Convert.ToDouble(Txtrate3.Text);
        double amt = qty * rate;
        Txtamt3.Text = amt.ToString();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        double t1 = Convert.ToDouble(Txtamt1.Text);
        double t2 = Convert.ToDouble(Txtamt2.Text);
        double t3 = Convert.ToDouble(Txtamt3.Text);
      
        double ta = t1 + t2 + t3;
        TxttotalAmt.Text = ta.ToString();

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;

        String SQL100 = null;
        SQL100 = "select * from CustInfoTBL where custid=" + Txtcustid.Text;

        System.Data.OleDb.OleDbDataAdapter DA = new System.Data.OleDb.OleDbDataAdapter(SQL100, con1);

        System.Data.DataSet DS = new System.Data.DataSet();

        DA.Fill(DS, "Tbl1");

        System.Data.DataRow RW;

        RW = DS.Tables["Tbl1"].Rows[0];
        Txtcustname.Text= RW["custname"].ToString();

        RW = null;
        DS = null;
        DA = null;
        con1.Close();
    }
}