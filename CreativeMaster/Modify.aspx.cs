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
    public partial class Modify : System.Web.UI.Page
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

        protected void btnedit_Click(object sender, EventArgs e)
        {
            try
            {
                connect = new SqlConnection(con);
                connect.Open();

                GridViewRow row = ((Button)sender).NamingContainer as GridViewRow;

                TextBox productid = (TextBox)row.FindControl("txtpid");
                TextBox UserName = (TextBox)row.FindControl("txtuname");
                TextBox Categoryname = (TextBox)row.FindControl("txtcatname");
                TextBox Productdis = (TextBox)row.FindControl("txtpdis");
                TextBox Productname = (TextBox)row.FindControl("txtpname");
                TextBox Userid = (TextBox)row.FindControl("txtuserid");

                com = new SqlCommand("EditProductDetails", connect);
                com.CommandType = CommandType.StoredProcedure;

                com.Parameters.AddWithValue("@P_PRODUCTID", productid.Text);
                com.Parameters.AddWithValue("@P_USERNAME", UserName.Text);
                com.Parameters.AddWithValue("@P_CATEGORY_NAME", Categoryname.Text);
                com.Parameters.AddWithValue("@P_Product_dis", Productdis.Text);
                com.Parameters.AddWithValue("@P_PRODUCTNAME", Productname.Text);
                com.Parameters.AddWithValue("@USERID", Userid.Text);
                com.ExecuteNonQuery();

                Response.Write("<script language ='JavaScript'>alert('Record Updated Successfully')</script>");
                
                connect.Close();
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex.Message}");
            }
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            try
            {
                

                using (SqlConnection connection = new SqlConnection(con))
                {
                    connect = new SqlConnection(con);
                    connect.Open();
                    com = new SqlCommand("PKG_FINDDATAIN_GRID_VIEW", connect);
                    com.CommandType = CommandType.StoredProcedure;



                    com.Parameters.AddWithValue("@P_USERNAME", txtuser.Text);
                    com.Parameters.AddWithValue("@P_PRODUCTNAME", txtproduct.Text);
                    com.Parameters.AddWithValue("@P_PRODUCTID", txtproid.Text);
                    com.Parameters.AddWithValue("@P_CATEGORY_NAME", txtctename.Text);

                    dr = com.ExecuteReader();

                    if (dr != null)
                    {
                        GridView1.DataSource = dr;
                        GridView1.DataBind();
                    }
                    dr.Close();

                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex.Message}");
            }
        }
    }
}