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
    public partial class ticket : Form
    {
        connect conn = new connect();
        public string kullaniciID { get; set; }
        public string kullaniciAdi { get; set; }
        public string kullaniciBolge { get; set; }
        public ticket()
        {
            InitializeComponent();
        }

        private void ticket_Load(object sender, EventArgs e)
        {

            if (kullaniciID != null)
            {
                lblAd.Text = kullaniciBolge + " / " + kullaniciAdi;
                nerden();
                nereye();
            }
            else
            {
                MessageBox.Show("Giriş Yapmalısınız");
            }
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

        private void btnListele_Click(object sender, EventArgs e)
        {
            this.Height = 600;
            if (cmbNerden.SelectedValue.ToString()!="0")
            {
                if (cmbNereye.SelectedValue.ToString() != "0")
                {
                    DataTable listele = conn.GetDataTable("select s.seferID as[Sefer Sıralaması], t.tarihAdi as[Tarih] ,so.soforAdi as[Şoför Adı],sa.saatAdi +':'+ dk.dakikaAdi as[Saat],kt.koltukTipiID,kt.koltukTipiAdi as[Koltuk Tipi],p.peronAdi as[Peron],seh.SehirAdi as[Nerden],seh1.SehirAdi as[Nereye] from sefer s  inner join tarih t on s.tarihID=t.tarihID inner join sofor so on s.soforID=so.soforID inner join saat sa on s.saatID=sa.saatID inner join dakika dk on s.dakikaID=dk.dakikaID inner join koltukTipi kt on s.koltukTipiID= kt.koltukTipiID inner join peron p on s.peronID=p.peronID inner join sehirler seh on s.nerdenID=seh.SehirId inner join sehirler seh1 on s.nereyeID=seh1.SehirId where s.nerdenID=" + cmbNerden.SelectedValue+" and s.nereyeID="+cmbNereye.SelectedValue+"");
                    dataGridView1.DataSource = listele;
                    dataGridView1.Columns[0].Visible = false;
                    dataGridView1.Columns[4].Visible = false;
                   
                    dataGridView1.Visible = true;
                    btnBiletKes.Visible = true;
                }
                else
                {
                    MessageBox.Show("Güzergah Seçiniz");
                }

            }
            else
            {
                MessageBox.Show("Güzergah Seçiniz");
            }
            
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
           

        }

        private void btnBiletKes_Click(object sender, EventArgs e)
        {
          

            if (dataGridView1.CurrentRow.Cells["koltukTipiID"].Value.ToString() == "2")
            {
                ticketSingleBuy ticketSingleBuy = new ticketSingleBuy();
                ticketSingleBuy.kullaniciID = kullaniciID;
                ticketSingleBuy.kullaniciAdi = kullaniciAdi;
                ticketSingleBuy.kullaniciBolge = kullaniciBolge;
                ticketSingleBuy.seferID = dataGridView1.CurrentRow.Cells["Sefer Sıralaması"].Value.ToString();
                ticketSingleBuy.koltukTipiID = dataGridView1.CurrentRow.Cells["koltukTipiID"].Value.ToString();
                ticketSingleBuy.ShowDialog();
            }
         
      
           


          
            
        }
    }
}
