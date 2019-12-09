using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace otobüsOtomasyonu
{
    
    public partial class login : Form
    {
        connect conn = new connect();
        public login()
        {
            InitializeComponent();
        }

        private void btnGirisYap_Click(object sender, EventArgs e)
        {
            string kullaniciAdi;
            string subeAdi;
            string sifre;
            kullaniciAdi = txtKullaniciAdi.Text;
            subeAdi = txtBolge.Text;
            sifre = txtSifre.Text;

            DataRow drGiris = conn.GetDataRow("SELECT * FROM [otobusotomasyonu].[dbo].[user] where kullaniciAdi='" + kullaniciAdi + "' and kullaniciSube='" + subeAdi + "' and kullaniciSifre='" + sifre + "'");
            if (drGiris != null)
            {

                options option = new options();
                option.kullaniciID = drGiris["kullaniciID"].ToString();
                option.kullaniciAdi = drGiris["kullaniciAdi"].ToString();
                option.kullaniciBolge = drGiris["kullaniciSube"].ToString();
                option.Show();
                this.Hide();


            }
            else
            {
                MessageBox.Show("Bilgileriniz yalnış olabilir");
            }

        }
    }
}
