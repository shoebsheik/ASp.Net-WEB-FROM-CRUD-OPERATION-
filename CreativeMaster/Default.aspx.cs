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
    public partial class Default : System.Web.UI.Page
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

        protected void Bind()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(con))
                {
                    connect = new SqlConnection(con);
                    connect.Open();
                    com = new SqlCommand("PKG_BIND_GRID_VIEW", connect);
                    com.CommandType = CommandType.StoredProcedure;

                    //dr = com.ExecuteReader();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    connect.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex.Message}");
            }
        }

        protected void btnall_Click(object sender, EventArgs e)
        {
            Bind();
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            try
            {
                //Button btn = (Button)sender; // Cast the sender as a Button
                //GridViewRow row = (GridViewRow)btn.NamingContainer;

                //connect = new SqlConnection(con);
                //connect.Open();

                //com = new SqlCommand("PKG_FINDDATAIN_GRID_VIEW", connect);
                //com.CommandType = CommandType.StoredProcedure;
                //com.Parameters.AddWithValue("@P_USERNAME", txtuser.Text);
                //com.Parameters.AddWithValue("@P_PRODUCTNAME", txtproduct.Text);
                //com.Parameters.AddWithValue("@P_PRODUCTID", txtproid.Text);
                //com.Parameters.AddWithValue("@P_CATEGORY_NAME", txtctename.Text);
                //dr = com.ExecuteReader();
                //GridView1.DataSource = dr;
                //GridView1.DataBind();

                //Response.Write("<script language ='JavaScript'>alert('Record Updated Successfully')</script>");
                //connect.Close();


                /*Button btn = (Button)sender;*/ // Cast the sender as a Button
                                                 //GridViewRow row = (GridViewRow)btn.NamingContainer;
                                                 //connect = new SqlConnection(con);
                                                 //connect.Open();

                using (SqlConnection connection = new SqlConnection(con))
                {
                    connect = new SqlConnection(con);
                    connect.Open();
                    com = new SqlCommand("PKG_FINDDATAIN_GRID_VIEW", connect);
                    com.CommandType = CommandType.StoredProcedure;

                    

                    com.Parameters.AddWithValue("@P_USERNAME", txtuser.Text);
                    com.Parameters.AddWithValue("@P_PRODUCTNAME", txtproduct.Text);
                    com.Parameters.AddWithValue("@P_PRODUCTID",txtproid.Text);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();
        }
    }

}