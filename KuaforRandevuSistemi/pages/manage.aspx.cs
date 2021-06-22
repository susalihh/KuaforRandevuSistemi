using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KuaforRandevuSistemi.pages
{
    public partial class manage : System.Web.UI.Page
    {
        public string k_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            k_id = Session["kullanici_id"].ToString();
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE kuaforler SET KuaforAdı = @KuaforAdı,Telefon = @Telefon,Email = @Email,Adres = @Adres,Aciklama = @Aciklama WHERE kuafor_id = @kuafor_id", baglanti);

            cmd.Parameters.AddWithValue("@kuafor_id", k_id);
            cmd.Parameters.AddWithValue("@KuaforAdı", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Telefon", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Adres", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Aciklama", TextBox5.Text);

            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            getir();
        }
        void getir()
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM kuaforler WHERE kuafor_id = @idd", baglanti);

            cmd.Parameters.AddWithValue("@idd", k_id);

            baglanti.Open();
            SqlDataReader oku = cmd.ExecuteReader();
            if (oku.Read())
            {
                TextBox1.Text = oku["KuaforAdı"].ToString();
                TextBox2.Text = oku["Telefon"].ToString();
                TextBox3.Text = oku["Email"].ToString();
                TextBox4.Text = oku["Adres"].ToString();
                TextBox5.Text = oku["Aciklama"].ToString();
            }
            oku.Close();
            baglanti.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string randevu_id = "";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                if (ch.Checked == true)
                {
                    randevu_id = lb.Text.ToString();
                }
            }
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE randevular SET Talep = @Talep WHERE randevu_id = @randevu_id", baglanti);

            cmd.Parameters.AddWithValue("@randevu_id", randevu_id);
            cmd.Parameters.AddWithValue("@Talep", "true");
            
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string randevu_id = "";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                if (ch.Checked == true)
                {
                    randevu_id = lb.Text.ToString();
                }
            }
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE randevular SET Talep = @Talep WHERE randevu_id = @randevu_id", baglanti);

            cmd.Parameters.AddWithValue("@randevu_id", randevu_id);
            cmd.Parameters.AddWithValue("@Talep", "false");


            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}