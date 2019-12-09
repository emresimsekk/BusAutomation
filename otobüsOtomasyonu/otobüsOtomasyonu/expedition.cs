using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace otobüsOtomasyonu
{

    public partial class expedition : Form
    {
        connect conn = new connect();
        public string kullaniciID { get; set; }
        public string kullaniciAdi { get; set; }
        public string kullaniciBolge { get; set; }
        public expedition()
        {
            InitializeComponent();
        }

        private void expedition_Load(object sender, EventArgs e)
        {


            if (kullaniciID != null)
            {
                lblAd.Text = kullaniciBolge + " / " + kullaniciAdi;

                saat();
                dakika();
                peron();
                koltukTipi();
                sofor();
                nerden();
                nereye();
            }
            else
            {
                MessageBox.Show("Giriş Yapmalısınız");
            }
        }

        private void btnSeferEkle_Click(object sender, EventArgs e)
        {
            if (cmbSaat.SelectedIndex != 0)
            {
                if (cmbDakika.SelectedIndex != 0)
                {
                    if (cmbPeron.SelectedIndex != 0)
                    {
                        if (cmbKoltukTipi.SelectedIndex != 0)
                        {
                            if (cmbSofor.SelectedIndex != 0)
                            {
                                if (cmbNerden.SelectedIndex != 0)
                                {
                                    if (cmbNereye.SelectedIndex != 0)
                                    {
                                        SqlConnection baglanti = conn.baglan();


                                        SqlCommand cmd1 = new SqlCommand("insert into tarih (tarihAdi) values (@tarihAdi)", baglanti);
                                        cmd1.Parameters.Add("@tarihAdi", dtTarih.Value.Date.ToString("dd- MM-yyyy"));
                                      
                                        if (cmd1.ExecuteNonQuery() != 0)
                                        {
                                            DataRow drTarih = conn.GetDataRow("select max(t.tarihID) as tarihID from tarih t");
                                            SqlCommand cmd = new SqlCommand("insert into sefer (kullaniciID,tarihID,soforID,saatID,dakikaID,koltukTipiID,peronID,nerdenID,nereyeID) values(@kullaniciID,@tarihID,@soforID,@saatID,@dakikaID,@koltukTipiID,@peronID,@nerdenID,@nereyeID)", baglanti);
                                            cmd.Parameters.Add("@kullaniciID", kullaniciID);
                                            cmd.Parameters.Add("@tarihID",drTarih["tarihID"].ToString());
                                            cmd.Parameters.Add("@soforID", cmbSofor.SelectedValue);
                                            cmd.Parameters.Add("@saatID", cmbSaat.SelectedValue);
                                            cmd.Parameters.Add("@dakikaID", cmbDakika.SelectedValue);
                                            cmd.Parameters.Add("@koltukTipiID", cmbKoltukTipi.SelectedValue);
                                            cmd.Parameters.Add("@peronID", cmbKoltukTipi.SelectedValue);
                                            cmd.Parameters.Add("@nerdenID", cmbNerden.SelectedValue);
                                            cmd.Parameters.Add("@nereyeID", cmbNereye.SelectedValue);




                                            if (cmd.ExecuteNonQuery() != 0)
                                            {
                                                DialogResult uyarı = MessageBox.Show("Başarıyla Sefer Eklendi", "Uyarı", MessageBoxButtons.OK);

                                                if (uyarı==DialogResult.OK)
                                                {
                                                    this.Close();
                                                }
                                                else
                                                {

                                                }

                                            }
                                            else
                                            {
                                                MessageBox.Show("Kayıt Başarısız");

                                            }
                                           
                                        
                                        }
                                        else
                                        {
                                            MessageBox.Show("Kayıt Başarısız");
                                        }
                                    }
                                    else
                                    {
                                        MessageBox.Show("Güzergah Seçilmedi");
                                    }
                                }
                                else
                                {
                                    MessageBox.Show("Güzergah Seçilmedi");
                                }
                            }
                            else
                            {
                                MessageBox.Show("Şöför Seçilmedi");
                            }
                        }
                        else
                        {
                            MessageBox.Show("Koltuk Seçilmedi");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Peron Seçilmedi");
                    }
                }
                else
                {
                    MessageBox.Show("Dakika Seçilmedi");
                }
            }
            else
            {
                MessageBox.Show("Saati Seçilmedi");
            }

        }
        private void saat()
        {
            DataTable saat = conn.GetDataTable("Select * from saat");
            cmbSaat.DataSource = saat;

            cmbSaat.DisplayMember = "saatAdi";
            cmbSaat.ValueMember = "saatID";
          
        }
        private void dakika()
        {
            DataTable dakika = conn.GetDataTable("Select * from dakika");
            cmbDakika.DataSource = dakika;

            cmbDakika.DisplayMember = "dakikaAdi";
            cmbDakika.ValueMember = "dakikaID";

        }
        private void peron()
        {
            DataTable peron = conn.GetDataTable("Select * from peron");
            cmbPeron.DataSource = peron;

            cmbPeron.DisplayMember = "peronAdi";
            cmbPeron.ValueMember = "peronID";

        }
        private void koltukTipi()
        {
            DataTable koltukTipi = conn.GetDataTable("Select * from koltukTipi");
            cmbKoltukTipi.DataSource = koltukTipi;

            cmbKoltukTipi.DisplayMember = "koltukTipiAdi";
            cmbKoltukTipi.ValueMember = "koltukTipiID";

        }
        private void sofor()
        {
            DataTable sofor = conn.GetDataTable("Select * from sofor");
            cmbSofor.DataSource = sofor;

            cmbSofor.DisplayMember = "soforAdi";
            cmbSofor.ValueMember = "soforID";

        }
        private void nerden()
        {
            DataTable nerden = conn.GetDataTable("Select * from sehirler");
            cmbNerden.DataSource = nerden;

            cmbNerden.DisplayMember = "sehirAdi";
            cmbNerden.ValueMember = "sehirID";

        }
        private void nereye()
        {
            DataTable nereye = conn.GetDataTable("Select * from sehirler");
            cmbNereye.DataSource = nereye;

            cmbNereye.DisplayMember = "sehirAdi";
            cmbNereye.ValueMember = "sehirID";

        }
    }
}
