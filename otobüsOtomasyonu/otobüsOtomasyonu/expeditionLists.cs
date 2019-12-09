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
    public partial class expeditionLists : Form
    {
        public string kullaniciID { get; set; }
        public string kullaniciAdi { get; set; }
        public string kullaniciBolge { get; set; }
        connect conn = new connect();
        public expeditionLists()
        {
            InitializeComponent();
        }

        private void expeditionLists_Load(object sender, EventArgs e)
        {
            DataTable listele = conn.GetDataTable("select s.seferID as[Sefer Sıralaması], t.tarihAdi as[Tarih] ,so.soforAdi as[Şoför Adı],sa.saatAdi +':'+ dk.dakikaAdi as[Saat],kt.koltukTipiID,kt.koltukTipiAdi as[Koltuk Tipi],p.peronAdi as[Peron],seh.SehirAdi as[Nerden],seh1.SehirAdi as[Nereye] from sefer s  inner join tarih t on s.tarihID=t.tarihID inner join sofor so on s.soforID=so.soforID inner join saat sa on s.saatID=sa.saatID inner join dakika dk on s.dakikaID=dk.dakikaID inner join koltukTipi kt on s.koltukTipiID= kt.koltukTipiID inner join peron p on s.peronID=p.peronID inner join sehirler seh on s.nerdenID=seh.SehirId inner join sehirler seh1 on s.nereyeID=seh1.SehirId ");
            dataGridView1.DataSource = listele;
            dataGridView1.Columns[0].Visible = false;
            dataGridView1.Columns[4].Visible = false;
          
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
