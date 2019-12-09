namespace otobüsOtomasyonu
{
    partial class expedition
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblAd = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.cmbNereye = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.dtTarih = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbNerden = new System.Windows.Forms.ComboBox();
            this.cmbDakika = new System.Windows.Forms.ComboBox();
            this.cmbSofor = new System.Windows.Forms.ComboBox();
            this.cmbKoltukTipi = new System.Windows.Forms.ComboBox();
            this.cmbPeron = new System.Windows.Forms.ComboBox();
            this.cmbSaat = new System.Windows.Forms.ComboBox();
            this.btnSeferEkle = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblAd
            // 
            this.lblAd.AutoSize = true;
            this.lblAd.Location = new System.Drawing.Point(548, 23);
            this.lblAd.Name = "lblAd";
            this.lblAd.Size = new System.Drawing.Size(0, 17);
            this.lblAd.TabIndex = 3;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(269, 327);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(62, 17);
            this.label8.TabIndex = 34;
            this.label8.Text = "Nereye :";
            // 
            // cmbNereye
            // 
            this.cmbNereye.DisplayMember = "SehirAdi";
            this.cmbNereye.FormattingEnabled = true;
            this.cmbNereye.Location = new System.Drawing.Point(367, 320);
            this.cmbNereye.Margin = new System.Windows.Forms.Padding(4);
            this.cmbNereye.Name = "cmbNereye";
            this.cmbNereye.Size = new System.Drawing.Size(160, 24);
            this.cmbNereye.TabIndex = 33;
            this.cmbNereye.ValueMember = "SehirId";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(268, 267);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(63, 17);
            this.label7.TabIndex = 32;
            this.label7.Text = "Nerden :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(591, 215);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(50, 17);
            this.label6.TabIndex = 31;
            this.label6.Text = "Şöför :";
            // 
            // dtTarih
            // 
            this.dtTarih.Location = new System.Drawing.Point(154, 104);
            this.dtTarih.Margin = new System.Windows.Forms.Padding(4);
            this.dtTarih.Name = "dtTarih";
            this.dtTarih.Size = new System.Drawing.Size(265, 22);
            this.dtTarih.TabIndex = 30;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(559, 155);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 17);
            this.label5.TabIndex = 29;
            this.label5.Text = "Koltuk Tipi :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(587, 109);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(54, 17);
            this.label4.TabIndex = 28;
            this.label4.Text = "Peron :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(49, 215);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(59, 17);
            this.label3.TabIndex = 27;
            this.label3.Text = "Dakika :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(63, 159);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 17);
            this.label2.TabIndex = 26;
            this.label2.Text = "Saat :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(59, 109);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 17);
            this.label1.TabIndex = 25;
            this.label1.Text = "Tarih :";
            // 
            // cmbNerden
            // 
            this.cmbNerden.DisplayMember = "SehirAdi";
            this.cmbNerden.FormattingEnabled = true;
            this.cmbNerden.Location = new System.Drawing.Point(367, 260);
            this.cmbNerden.Margin = new System.Windows.Forms.Padding(4);
            this.cmbNerden.Name = "cmbNerden";
            this.cmbNerden.Size = new System.Drawing.Size(160, 24);
            this.cmbNerden.TabIndex = 24;
            this.cmbNerden.ValueMember = "SehirId";
            // 
            // cmbDakika
            // 
            this.cmbDakika.DisplayMember = "dakikaAdi";
            this.cmbDakika.FormattingEnabled = true;
            this.cmbDakika.Location = new System.Drawing.Point(154, 212);
            this.cmbDakika.Margin = new System.Windows.Forms.Padding(4);
            this.cmbDakika.Name = "cmbDakika";
            this.cmbDakika.Size = new System.Drawing.Size(160, 24);
            this.cmbDakika.TabIndex = 23;
            this.cmbDakika.ValueMember = "dakikaID";
            // 
            // cmbSofor
            // 
            this.cmbSofor.DisplayMember = "soforAdi";
            this.cmbSofor.FormattingEnabled = true;
            this.cmbSofor.Location = new System.Drawing.Point(690, 208);
            this.cmbSofor.Margin = new System.Windows.Forms.Padding(4);
            this.cmbSofor.Name = "cmbSofor";
            this.cmbSofor.Size = new System.Drawing.Size(160, 24);
            this.cmbSofor.TabIndex = 22;
            this.cmbSofor.ValueMember = "soforID";
            // 
            // cmbKoltukTipi
            // 
            this.cmbKoltukTipi.DisplayMember = "koltukTipiAdi";
            this.cmbKoltukTipi.FormattingEnabled = true;
            this.cmbKoltukTipi.Location = new System.Drawing.Point(690, 152);
            this.cmbKoltukTipi.Margin = new System.Windows.Forms.Padding(4);
            this.cmbKoltukTipi.Name = "cmbKoltukTipi";
            this.cmbKoltukTipi.Size = new System.Drawing.Size(160, 24);
            this.cmbKoltukTipi.TabIndex = 21;
            this.cmbKoltukTipi.ValueMember = "koltukTipiID";
            // 
            // cmbPeron
            // 
            this.cmbPeron.DisplayMember = "peronAdi";
            this.cmbPeron.FormattingEnabled = true;
            this.cmbPeron.Location = new System.Drawing.Point(690, 104);
            this.cmbPeron.Margin = new System.Windows.Forms.Padding(4);
            this.cmbPeron.Name = "cmbPeron";
            this.cmbPeron.Size = new System.Drawing.Size(160, 24);
            this.cmbPeron.TabIndex = 20;
            this.cmbPeron.ValueMember = "peronID";
            // 
            // cmbSaat
            // 
            this.cmbSaat.FormattingEnabled = true;
            this.cmbSaat.Location = new System.Drawing.Point(154, 159);
            this.cmbSaat.Margin = new System.Windows.Forms.Padding(4);
            this.cmbSaat.Name = "cmbSaat";
            this.cmbSaat.Size = new System.Drawing.Size(160, 24);
            this.cmbSaat.TabIndex = 19;
            // 
            // btnSeferEkle
            // 
            this.btnSeferEkle.Location = new System.Drawing.Point(679, 330);
            this.btnSeferEkle.Name = "btnSeferEkle";
            this.btnSeferEkle.Size = new System.Drawing.Size(171, 36);
            this.btnSeferEkle.TabIndex = 36;
            this.btnSeferEkle.Text = "Sefer Ekle";
            this.btnSeferEkle.UseVisualStyleBackColor = true;
            this.btnSeferEkle.Click += new System.EventHandler(this.btnSeferEkle_Click);
            // 
            // expedition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(903, 435);
            this.Controls.Add(this.btnSeferEkle);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.cmbNereye);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.dtTarih);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmbNerden);
            this.Controls.Add(this.cmbDakika);
            this.Controls.Add(this.cmbSofor);
            this.Controls.Add(this.cmbKoltukTipi);
            this.Controls.Add(this.cmbPeron);
            this.Controls.Add(this.cmbSaat);
            this.Controls.Add(this.lblAd);
            this.Name = "expedition";
            this.Text = "expedition";
            this.Load += new System.EventHandler(this.expedition_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label lblAd;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cmbNereye;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DateTimePicker dtTarih;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbNerden;
        private System.Windows.Forms.ComboBox cmbDakika;
        private System.Windows.Forms.ComboBox cmbSofor;
        private System.Windows.Forms.ComboBox cmbKoltukTipi;
        private System.Windows.Forms.ComboBox cmbPeron;
        private System.Windows.Forms.ComboBox cmbSaat;
        private System.Windows.Forms.Button btnSeferEkle;
    }
}