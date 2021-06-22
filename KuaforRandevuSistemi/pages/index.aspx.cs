using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KuaforRandevuSistemi.pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM kullanicilar WHERE Email = @email AND Sifre = @pass", baglanti);

            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

            baglanti.Open();
            SqlDataReader oku = cmd.ExecuteReader();
            if (oku.Read())
            {
                String tmpid = oku.GetInt32(0).ToString();
                String tmptel = oku.GetString(3).ToString();
                String tmpkuafor = oku.GetBoolean(6).ToString();
                Session["kullanici_id"] = tmpid;
                Session["kullanici_telefon"] = tmptel;
                if (tmpkuafor == "True")
                { 
                    Response.Redirect("manage.aspx");
                }
                else if (tmpkuafor == "False")
                {                   
                    Response.Redirect("appointment.aspx");
                }
            }
            else
            {
                Label1.Text = "Email veya şifre yanlış";
            }
            oku.Close();
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("userregistration.aspx");
        }
    }
}