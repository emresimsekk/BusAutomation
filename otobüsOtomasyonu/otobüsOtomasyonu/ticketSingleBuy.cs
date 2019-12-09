using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace otobüsOtomasyonu
{
    public partial class ticketSingleBuy : Form
    {
        connect conn = new connect();
        public string kullaniciID { get; set; }
        public string kullaniciAdi { get; set; }
        public string kullaniciBolge { get; set; }
        public string seferID { get; set; }
        public string koltukTipiID { get; set; }
        public ticketSingleBuy()
        {
            InitializeComponent();
        }

        private void ticketSingleBuy_Load(object sender, EventArgs e)
        {
            if (kullaniciID != null)
            {
                lblAd.Text = kullaniciBolge + " / " + kullaniciAdi ;
                dinamik();
                bosKoltuk();
                doluKoltuk();
                rezerveKoltuk();
                yolcuListesi();
               



            }
            else
            {
                MessageBox.Show("Giriş Yapmalısınız");
            }

        }
        void bosKoltuk()
        {
            int a;
            DataRow bosKoltuk = conn.GetDataRow("select count(koltukNo) as koltukNo from yolcu  where seferID="+seferID);
            a = 27 - Convert.ToInt16(bosKoltuk["KoltukNo"].ToString());
            label2.Text = a.ToString() ;
        }
        void doluKoltuk()
        {

            DataRow bosKoltuk = conn.GetDataRow("select count(koltukNo) as koltukNo from yolcu  where seferID=" + seferID);
        
            label3.Text = bosKoltuk["KoltukNo"].ToString(); ;
        }
        void rezerveKoltuk()
        {

            DataRow bosKoltuk = conn.GetDataRow("select count(koltukNo) as koltukNo from yolcu where durumID=2 and seferID=" + seferID);

            label6.Text = bosKoltuk["KoltukNo"].ToString(); ;
        }

        void yolcuListesi()
        {

            DataTable yolcuListesi = conn.GetDataTable("select y.tc as [TC Kimlik],d.durum as Durum,y.koltukNo as [Koltuk No],c.cinsiyetAdi as Cinsiyet,y.yolcuAdi +' '+y.yolcuSoyadi as [Adı Soyadı],yolcuTel as Telefon,yolcuDogum as [Doğum Tarihi] from yolcu  y inner join cinsiyet c on  y.cinsiyetID=c.cinsiyetID inner join durum d on y.durumID=d.durumID where y.seferID=" + seferID);
            dataGridView1.DataSource = yolcuListesi;
        }

        void dinamik()
        {


            DataTable koltukListe= conn.GetDataTable("select koltukNo as k,cinsiyetID as c from yolcu");
            koltukListe.PrimaryKey = new DataColumn[] { koltukListe.Columns["k"] };
          
           

            int sayac = 0;
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    
                    sayac++;

                    Button b = new Button();
                    b.Location = new System.Drawing.Point(j * 50, i * 35);
                    b.Size = new System.Drawing.Size(35, 30);
                   
                    b.Text = sayac.ToString();
                    this.Controls.Add(b);
                    b.Click += new EventHandler(b_Click);//b.Click diyerek tıklama özelliğine bir event tanımladık.

                    b.BackColor = Color.FromArgb(243, 247, 248);
                    b.Width = 35;
                    b.Height = 34;
                    b.BackgroundImage = new Bitmap("images/bos.jpg");
                    string koltukNo = ((i * 3) + j + 1).ToString();
                    if(koltukListe.Rows.Contains(koltukNo))
                    {
                        DataRow[] koltukBilgisi = koltukListe.Select("k = '"+ ((i * 3) + j + 1) + "'");
                        //DataRow[] koltukBilgisi = koltukListe.Select("k = '5'");
                        if (koltukBilgisi[0][1].ToString()=="1")
                        {
                            b.BackColor = Color.FromArgb(243, 247, 248);
                            b.Width = 35;
                            b.Height = 34;
                            b.BackgroundImage = new Bitmap("images/erkek.jpg");
                            
                        }
                        else
                        {
                            b.BackColor = Color.FromArgb(243, 247, 248);
                            b.Width = 35;
                            b.Height = 34;
                            b.BackgroundImage = new Bitmap("images/kadin.jpg");
          
                        }

                        b.Enabled = false;
                    }
                    else
                    {
                        b.Enabled = true;
                    }
                        
                    


                }
            }




        }
        void b_Click(object sender, EventArgs e)
        {

            ticketBuyEndd ticketBuyEnd = new ticketBuyEndd();
            ticketBuyEnd.koltuk1 = (((Button)sender).Text);
            ticketBuyEnd.seferID = seferID;
            ticketBuyEnd.ShowDialog();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

      
    }

    }





       
      
        //private void btn25_Click(object sender, EventArgs e)
        //{
        //    ticketBuyEndd ticketBuyEnd = new ticketBuyEndd();
        //    ticketBuyEnd.koltuk1 = "25";
        //    ticketBuyEnd.seferID = seferID;
        //    
        //}
  
