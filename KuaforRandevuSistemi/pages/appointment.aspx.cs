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
    public partial class appointment : System.Web.UI.Page
    {
        String kullanici_id = "";
        String kullanici_telefon = "";
        String tarih = "";
        String saat = "";
        protected void Page_Load(object sender, EventArgs e)
        {           
            kullanici_id = Session["kullanici_id"].ToString();
            kullanici_telefon = Session["kullanici_telefon"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kuafor_id = "";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                if (ch.Checked == true)
                {
                    kuafor_id = lb.Text.ToString();
                }
            }
            tarih = Calendar1.SelectedDate.ToShortDateString();
            saat = DropDownList1.SelectedValue.ToString();

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO randevular (kuafor_id,kullanici_id,kullanici_telefon,Tarih,Saat,Talep) VALUES (@kuafor_id,@kullanici_id,@kullanici_telefon,@Tarih,@Saat,@Talep)", baglanti);
            cmd.Parameters.AddWithValue("@kuafor_id", kuafor_id);
            cmd.Parameters.AddWithValue("@kullanici_id", kullanici_id);
            cmd.Parameters.AddWithValue("@kullanici_telefon", kullanici_telefon);
            cmd.Parameters.AddWithValue("@Tarih", tarih);
            cmd.Parameters.AddWithValue("@Saat", saat);
            cmd.Parameters.AddWithValue("@Talep", "false");
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string randevu_id = "";
            for (int i = 0; i < GridView2.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView2.Rows[i].FindControl("CheckBox2");
                Label lb = (Label)GridView2.Rows[i].FindControl("Label2");
                if (ch.Checked == true)
                {
                    randevu_id = lb.Text.ToString();
                }
            }
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM randevular WHERE randevu_id = @randevu_id", baglanti);

            cmd.Parameters.AddWithValue("@randevu_id", randevu_id);

            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}