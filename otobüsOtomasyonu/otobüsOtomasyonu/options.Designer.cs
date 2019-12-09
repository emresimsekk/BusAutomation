namespace otobüsOtomasyonu
{
    partial class options
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
            this.btnSeferEkle = new System.Windows.Forms.Button();
            this.btnBiletKes = new System.Windows.Forms.Button();
            this.lblAd = new System.Windows.Forms.Label();
            this.btnSeferler = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnSeferEkle
            // 
            this.btnSeferEkle.Location = new System.Drawing.Point(40, 107);
            this.btnSeferEkle.Name = "btnSeferEkle";
            this.btnSeferEkle.Size = new System.Drawing.Size(171, 36);
            this.btnSeferEkle.TabIndex = 0;
            this.btnSeferEkle.Text = "Sefer Ekle";
            this.btnSeferEkle.UseVisualStyleBackColor = true;
            this.btnSeferEkle.Click += new System.EventHandler(this.btnSeferEkle_Click);
            // 
            // btnBiletKes
            // 
            this.btnBiletKes.Location = new System.Drawing.Point(337, 107);
            this.btnBiletKes.Name = "btnBiletKes";
            this.btnBiletKes.Size = new System.Drawing.Size(171, 36);
            this.btnBiletKes.TabIndex = 1;
            this.btnBiletKes.Text = "Bilet Kes";
            this.btnBiletKes.UseVisualStyleBackColor = true;
            this.btnBiletKes.Click += new System.EventHandler(this.btnBiletKes_Click);
            // 
            // lblAd
            // 
            this.lblAd.AutoSize = true;
            this.lblAd.Location = new System.Drawing.Point(412, 22);
            this.lblAd.Name = "lblAd";
            this.lblAd.Size = new System.Drawing.Size(0, 17);
            this.lblAd.TabIndex = 2;
            // 
            // btnSeferler
            // 
            this.btnSeferler.Location = new System.Drawing.Point(337, 218);
            this.btnSeferler.Name = "btnSeferler";
            this.btnSeferler.Size = new System.Drawing.Size(171, 36);
            this.btnSeferler.TabIndex = 3;
            this.btnSeferler.Text = "Tüm Seferler";
            this.btnSeferler.UseVisualStyleBackColor = true;
            this.btnSeferler.Click += new System.EventHandler(this.btnSeferler_Click);
            // 
            // options
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(566, 337);
            this.Controls.Add(this.btnSeferler);
            this.Controls.Add(this.lblAd);
            this.Controls.Add(this.btnBiletKes);
            this.Controls.Add(this.btnSeferEkle);
            this.Name = "options";
            this.Text = "options";
            this.Load += new System.EventHandler(this.options_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSeferEkle;
        private System.Windows.Forms.Button btnBiletKes;
        private System.Windows.Forms.Label lblAd;
        private System.Windows.Forms.Button btnSeferler;
    }
}