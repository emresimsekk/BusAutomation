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
    public partial class ticketBuyEndd : Form
    {
        public string koltuk1 { get; set; }
        public string seferID { get; set; }
        connect conn = new connect();
        public ticketBuyEndd()
        {
            InitializeComponent();
        }

        private void ticketBuyEndd_Load(object sender, EventArgs e)
        {



        }

        

        private void button1_Click(object sender, EventArgs e)
        {
            string cinsiyet = "0";

            if (rdErkek.Checked == true)
            {
                cinsiyet = "1";

            }
            else if (rdKadın.Checked == true)
            {
                cinsiyet = "2";
            }
           
            if (txtAd.Text != "")
            {
                if (txtSoyad.Text != "")
                {
                    if (txtTel.Text != "")
                    {
                        if (txtDogum.Text != "")
                        {
                            if (txtUcret.Text != "")
                            {

                                if (txtTc.Text != "")
                                {
                                    if (rdErkek.Checked != false)
                                    {
                                       
                                            SqlConnection baglanti = conn.baglan();
                                            SqlCommand cmd = new SqlCommand("insert into yolcu (tc,koltukNo,seferID,cinsiyetID,durumID,yolcuAdi,yolcuSoyadi,yolcuTel,yolcuDogum,yolcuUcret)  values (@tc,@koltukNo,@seferID,@cinsiyetID,@durumID,@yolcuAdi,@yolcuSoyadi,@yolcuTel,@yolcuDogum,@yolcuUcret)", baglanti);
                                            cmd.Parameters.Add("@tc", txtTc.Text);
                                            cmd.Parameters.Add("@koltukNo", koltuk1);
                                            cmd.Parameters.Add("@seferID", seferID);
                                            cmd.Parameters.Add("@cinsiyetID", cinsiyet);
                                            cmd.Parameters.Add("@durumID", "1");
                                            cmd.Parameters.Add("@yolcuAdi", txtAd.Text);
                                            cmd.Parameters.Add("@yolcuSoyadi", txtSoyad.Text);
                                            cmd.Parameters.Add("@yolcuTel", txtTel.Text);
                                            cmd.Parameters.Add("@yolcuDogum", txtDogum.Text);
                                            cmd.Parameters.Add("@yolcuUcret", txtUcret.Text);
                                            cmd.ExecuteNonQuery();
                                       
                                        DialogResult uyarı = MessageBox.Show("Başarıyla Bilet Kesildi", "Uyarı", MessageBoxButtons.OK);

                                        if (uyarı == DialogResult.OK)
                                        {
                                            this.Close();
                                        }
                                        else
                                        {

                                        }

                                    }
                                    else if(rdKadın.Checked != false)
                                    {
                                        SqlConnection baglanti = conn.baglan();
                                        SqlCommand cmd = new SqlCommand("insert into yolcu (tc,koltukNo,seferID,cinsiyetID,durumID,yolcuAdi,yolcuSoyadi,yolcuTel,yolcuDogum,yolcuUcret)  values (@tc,@koltukNo,@seferID,@cinsiyetID,@durumID,@yolcuAdi,@yolcuSoyadi,@yolcuTel,@yolcuDogum,@yolcuUcret)", baglanti);
                                        cmd.Parameters.Add("@tc", txtTc.Text);
                                        cmd.Parameters.Add("@koltukNo", koltuk1);
                                        cmd.Parameters.Add("@seferID", seferID);
                                        cmd.Parameters.Add("@cinsiyetID", cinsiyet);
                                        cmd.Parameters.Add("@durumID", "1");
                                        cmd.Parameters.Add("@yolcuAdi", txtAd.Text);
                                        cmd.Parameters.Add("@yolcuSoyadi", txtSoyad.Text);
                                        cmd.Parameters.Add("@yolcuTel", txtTel.Text);
                                        cmd.Parameters.Add("@yolcuDogum", txtDogum.Text);
                                        cmd.Parameters.Add("@yolcuUcret", txtUcret.Text);
                                        cmd.ExecuteNonQuery();
                                        DialogResult uyarı = MessageBox.Show("Başarıyla Bilet Kesildi", "Uyarı", MessageBoxButtons.OK);

                                        if (uyarı == DialogResult.OK)
                                        {
                                            this.Close();
                                        }
                                        else
                                        {

                                        }
                                    }
                                    else
                                    {
                                        MessageBox.Show("Cinsiyet Seçiniz.");
                                    }
                                       
                                }
                                else
                                {
                                    MessageBox.Show("Lütfen Doldurunuz");
                                }


                            }
                            else
                            {
                                MessageBox.Show("Lütfen Doldurunuz");
                            }

                        }
                        else
                        {
                            MessageBox.Show("Lütfen Doldurunuz");
                        }

                    }
                    else
                    {
                        MessageBox.Show("Lütfen Doldurunuz");
                    }

                }
                else
                {
                    MessageBox.Show("Lütfen Doldurunuz");
                }

            }
            else
            {
                MessageBox.Show("Lütfen Doldurunuz");
            }


        }

        private void button2_Click(object sender, EventArgs e)
        {
            string cinsiyet = "0";

            if (rdErkek.Checked == true)
            {
                cinsiyet = "1";

            }
            else if (rdKadın.Checked == true)
            {
                cinsiyet = "2";
            }

            if (txtAd.Text != "")
            {
                if (txtSoyad.Text != "")
                {
                    if (txtTel.Text != "")
                    {
                        if (txtDogum.Text != "")
                        {
                            if (txtUcret.Text != "")
                            {

                                if (txtTc.Text != "")
                                {
                                    if (rdErkek.Checked != false)
                                    {

                                        SqlConnection baglanti = conn.baglan();
                                        SqlCommand cmd = new SqlCommand("insert into yolcu (tc,koltukNo,seferID,cinsiyetID,durumID,yolcuAdi,yolcuSoyadi,yolcuTel,yolcuDogum,yolcuUcret)  values (@tc,@koltukNo,@seferID,@cinsiyetID,@durumID,@yolcuAdi,@yolcuSoyadi,@yolcuTel,@yolcuDogum,@yolcuUcret)", baglanti);
                                        cmd.Parameters.Add("@tc", txtTc.Text);
                                        cmd.Parameters.Add("@koltukNo", koltuk1);
                                        cmd.Parameters.Add("@seferID", seferID);
                                        cmd.Parameters.Add("@cinsiyetID", cinsiyet);
                                        cmd.Parameters.Add("@durumID", "2");
                                        cmd.Parameters.Add("@yolcuAdi", txtAd.Text);
                                        cmd.Parameters.Add("@yolcuSoyadi", txtSoyad.Text);
                                        cmd.Parameters.Add("@yolcuTel", txtTel.Text);
                                        cmd.Parameters.Add("@yolcuDogum", txtDogum.Text);
                                        cmd.Parameters.Add("@yolcuUcret", txtUcret.Text);
                                        cmd.ExecuteNonQuery();

                                        DialogResult uyarı = MessageBox.Show("Başarıyla Rezerve Edildi ", "Uyarı", MessageBoxButtons.OK);

                                        if (uyarı == DialogResult.OK)
                                        {
                                            this.Close();
                                        }
                                        else
                                        {

                                        }

                                    }
                                    else if (rdKadın.Checked != false)
                                    {
                                        SqlConnection baglanti = conn.baglan();
                                        SqlCommand cmd = new SqlCommand("insert into yolcu (tc,koltukNo,seferID,cinsiyetID,durumID,yolcuAdi,yolcuSoyadi,yolcuTel,yolcuDogum,yolcuUcret)  values (@tc,@koltukNo,@seferID,@cinsiyetID,@durumID,@yolcuAdi,@yolcuSoyadi,@yolcuTel,@yolcuDogum,@yolcuUcret)", baglanti);
                                        cmd.Parameters.Add("@tc", txtTc.Text);
                                        cmd.Parameters.Add("@koltukNo", koltuk1);
                                        cmd.Parameters.Add("@seferID", seferID);
                                        cmd.Parameters.Add("@cinsiyetID", cinsiyet);
                                        cmd.Parameters.Add("@durumID", "2");
                                        cmd.Parameters.Add("@yolcuAdi", txtAd.Text);
                                        cmd.Parameters.Add("@yolcuSoyadi", txtSoyad.Text);
                                        cmd.Parameters.Add("@yolcuTel", txtTel.Text);
                                        cmd.Parameters.Add("@yolcuDogum", txtDogum.Text);
                                        cmd.Parameters.Add("@yolcuUcret", txtUcret.Text);
                                        cmd.ExecuteNonQuery();
                                        DialogResult uyarı = MessageBox.Show("Başarıyla Rezerve Edildi ", "Uyarı", MessageBoxButtons.OK);

                                        if (uyarı == DialogResult.OK)
                                        {
                                            this.Close();
                                        }
                                        else
                                        {

                                        }
                                    }
                                    else
                                    {
                                        MessageBox.Show("Cinsiyet Seçiniz.");
                                    }

                                }
                                else
                                {
                                    MessageBox.Show("Lütfen Doldurunuz");
                                }


                            }
                            else
                            {
                                MessageBox.Show("Lütfen Doldurunuz");
                            }

                        }
                        else
                        {
                            MessageBox.Show("Lütfen Doldurunuz");
                        }

                    }
                    else
                    {
                        MessageBox.Show("Lütfen Doldurunuz");
                    }

                }
                else
                {
                    MessageBox.Show("Lütfen Doldurunuz");
                }

            }
            else
            {
                MessageBox.Show("Lütfen Doldurunuz");
            }
        }

       
    }
}
