using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CreativeMaster
{
    public partial class Insert : System.Web.UI.Page
    {
        SqlConnection connect;
        SqlCommand com;
        SqlDataReader dr;
        string con = ConfigurationManager.AppSettings["mydb"];


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                connect = new SqlConnection(con);
                connect.Open();

                com = new SqlCommand("InsertProductDetails", connect);
                com.CommandType = CommandType.StoredProcedure;

                com.Parameters.AddWithValue("@User_Id", TextBox1.Text);
                com.Parameters.AddWithValue("@User_Name", TextBox2.Text);
                com.Parameters.AddWithValue("@Product_Id", int.Parse(TextBox3.Text));
                com.Parameters.AddWithValue("@Product_Name", TextBox4.Text);
                com.Parameters.AddWithValue("@Product_Details", TextBox5.Text);
                com.Parameters.AddWithValue("@Category_Name", TextBox6.Text);
                com.Parameters.AddWithValue("@Category_ID", int.Parse(TextBox7.Text));


                com.ExecuteNonQuery();

                Response.Write("<script>alert('Record inserted successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("Duplicate Id Not Allow");
            }
        }

        protected void btnall_Click(object sender, EventArgs e)
        {

        }
    }
}