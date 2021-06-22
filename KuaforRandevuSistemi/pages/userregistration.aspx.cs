using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KuaforRandevuSistemi.pages
{
    public partial class userregistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO kullanicilar (Ad,Soyad,Telefon,Email,Sifre,Kuafor) VALUES (@ad,@soyad,@telefon,@email,@pass,@kuafor)", baglanti);
            cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
            cmd.Parameters.AddWithValue("@soyad", TextBox2.Text);
            cmd.Parameters.AddWithValue("@telefon", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox5.Text);
            cmd.Parameters.AddWithValue("@kuafor", cb.Checked.ToString());
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
            if (cb.Checked == true)
            {
                string kul_id = "";
                cmd = new SqlCommand("SELECT * FROM kullanicilar WHERE Ad = @ad", baglanti);
                cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
                baglanti.Open();
                SqlDataReader oku = cmd.ExecuteReader();
                if (oku.Read())
                {
                    kul_id = oku["user_id"].ToString();

                }
                oku.Close();
                baglanti.Close();


                cmd = new SqlCommand("INSERT INTO kuaforler (kuafor_id,KuaforAdı,Telefon,Email) VALUES (@id,@ad,@telefon,@email)", baglanti);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(kul_id));
                cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
                cmd.Parameters.AddWithValue("@telefon", TextBox3.Text);
                cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                //cmd.Parameters.AddWithValue("@adres", );
                //cmd.Parameters.AddWithValue("@aciklama",);
                baglanti.Open();
                cmd.ExecuteNonQuery();
                baglanti.Close();
            }             
        }
    }
}