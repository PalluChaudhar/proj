using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class PurMastDetlFRM : System.Web.UI.Page
{
    
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();
    OleDbConnection con1 = new OleDbConnection();
    OleDbCommand cmd1 = new OleDbCommand();

    OleDbConnection con100 = new OleDbConnection();
    OleDbCommand cmd100 = new OleDbCommand();
  
    OleDbDataAdapter dad = new OleDbDataAdapter();
    public DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\pallavi\StudPrj\AppData\MyDB.mdb";
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
        cmd.CommandText = "select max(pbno) from PurMastTBL";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        TxtPbno.Text = i.ToString();
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd.Connection = con;
        String SQL = "insert into PurMastTBL values(" + TxtPbno.Text + ",'" + TxtPdate.Text + "'," + TxtSupid.Text + ",'" + TxtSupname.Text + "'," + TxtDiscount.Text + "," + TxtTotalAmt.Text + ")";

        try
        {
            con.Open();
            cmd.CommandText = SQL;
            cmd.ExecuteNonQuery();
            Label19.Text = "Record Inserted";
         }

        catch (Exception exp)
        {
            con.Close();
        }
        //update Sup///

        con100.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd100.Connection = con100;

     //   double bd = Convert.ToDouble(balduetxt.Text);
      //  double a = Convert.ToDouble(amounttxt.Text);
   //     double namt = bd + a;
        //String s = namt.ToString();
      //  String SQL2 = "update custtbl set baldue=" + namt + " where cid=(" + cidtxt.Text + ")";
        try
        {
            con100.Open();
   //         cmd100.CommandText = SQL2;
            cmd100.ExecuteNonQuery();
            con100.Close();

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
        String SQL11 = "insert into PurDetlTBL values(" +TxtPbno.Text+ "," + Txtpid1.Text + ",'" + Txtpname1.Text+ "','" + Txtcat1.Text + "','" + Txtunit1.Text + "'," + Txtmrp1.Text + "," + Txtqty1.Text + "," + Txtrate1.Text + "," + Txtamt1.Text + ")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL11;
            cmd1.ExecuteNonQuery();
            //Label19.Text = "Record Inserted";
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
        String SQL12 = "insert into PurDetlTBL values(" + TxtPbno.Text + "," + Txtpid2.Text + ",'" + Txtpname2.Text + "','" + Txtcat2.Text + "','" + Txtunit2.Text + "'," + Txtmrp2.Text + "," + Txtqty2.Text + "," + Txtrate2.Text + "," + Txtamt2.Text + ")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL12;
            cmd1.ExecuteNonQuery();
            Label19.Text = "Record Inserted";
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
        String SQL13 = "insert into PurDetlTBL values(" + TxtPbno.Text + "," + Txtpid3.Text + ",'" + Txtpname3.Text + "','" + Txtcat3.Text + "','" + Txtunit3.Text + "'," + Txtmrp3.Text + "," + Txtqty3.Text + "," + Txtrate3.Text + "," + Txtamt3.Text + ")";

        try
        {
            con1.Open();
            cmd1.CommandText = SQL13;
            cmd1.ExecuteNonQuery();
            Label19.Text = "Record Inserted";
        }
        catch (Exception exp)
        {
            con1.Close();
        }
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
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
       Txtpname1.Text  = RW["pname"].ToString();
       Txtcat1.Text = RW["category"].ToString();
       Txtunit1.Text = RW["unit"].ToString();
       Txtmrp1.Text = RW["mrp"].ToString();
    
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
   
   
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        double t1 = Convert.ToDouble(Txtamt1.Text);
        double t2 = Convert.ToDouble(Txtamt2.Text);
        double t3 = Convert.ToDouble(Txtamt3.Text);
        double d = Convert.ToDouble(TxtDiscount.Text);
        double ta = (t1 + t2 + t3) - d;
        TxtTotalAmt.Text = ta.ToString();

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
        Txtcat2.Text = RW["category"].ToString();
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
        Txtcat3.Text = RW["category"].ToString();
        Txtunit3.Text = RW["unit"].ToString();
        Txtmrp3.Text = RW["mrp"].ToString();

        RW = null;
        DS = null;
        DA = null;
        con1.Close();

    }
    

protected void LinkButton4_Click2(object sender, EventArgs e)
{
     con1.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\TMaterial\AppData\MyDBT.mdb";
        cmd1.Connection = con1;
      
        String SQL100 = null;
        SQL100 = "select * from SupInfoTBL where supid=" +TxtSupid.Text;

        System.Data.OleDb.OleDbDataAdapter DA = new System.Data.OleDb.OleDbDataAdapter(SQL100, con1);

        System.Data.DataSet DS = new System.Data.DataSet();

        DA.Fill(DS, "Tbl1");

        System.Data.DataRow RW;

        RW = DS.Tables["Tbl1"].Rows[0];
       TxtSupname.Text  = RW["supname"].ToString();
       
        RW = null;
        DS = null;
        DA = null;
        con1.Close();
}
}