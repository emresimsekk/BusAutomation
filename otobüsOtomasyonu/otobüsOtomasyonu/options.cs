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
    public partial class options : Form
    {
        public string kullaniciID { get; set; }
        public string kullaniciAdi { get; set; }
        public string kullaniciBolge { get; set; }
        public options()
        {
            InitializeComponent();
        }

        private void options_Load(object sender, EventArgs e)
        {
            if (kullaniciID!=null)
            {
                lblAd.Text = kullaniciBolge+" / "+kullaniciAdi;  
            }
            else
            {
                MessageBox.Show("Giriş Yapmalısınız");
            }

     
        }

        private void btnSeferEkle_Click(object sender, EventArgs e)
        {

            expedition expedition = new expedition();
            expedition.kullaniciID = kullaniciID ;
            expedition.kullaniciAdi = kullaniciAdi;
            expedition.kullaniciBolge = kullaniciBolge;
            expedition.Show();
           

        }

        private void btnBiletKes_Click(object sender, EventArgs e)
        {
            ticket ticket = new ticket();
            ticket.kullaniciID = kullaniciID;
            ticket.kullaniciAdi = kullaniciAdi;
            ticket.kullaniciBolge = kullaniciBolge;
            ticket.Show();
          
            
        }

        private void btnSeferler_Click(object sender, EventArgs e)
        {
            expeditionLists expeditionLists = new expeditionLists();
            expeditionLists.kullaniciID = kullaniciID;
            expeditionLists.kullaniciAdi = kullaniciAdi;
            expeditionLists.kullaniciBolge = kullaniciBolge;
            expeditionLists.Show();
           
        }
    }
}
