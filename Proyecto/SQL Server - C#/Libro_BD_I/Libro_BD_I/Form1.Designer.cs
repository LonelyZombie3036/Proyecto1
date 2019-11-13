namespace Libro_BD_I
{
    partial class Form1
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
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnInicio = new System.Windows.Forms.Button();
            this.imglogo = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnSalir
            // 
            this.btnSalir.Image = global::Libro_BD_I.Properties.Resources.fondo_imagen_animada_0135;
            this.btnSalir.Location = new System.Drawing.Point(479, 15);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(145, 64);
            this.btnSalir.TabIndex = 2;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnInicio
            // 
            this.btnInicio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.btnInicio.Image = global::Libro_BD_I.Properties.Resources.fondo_imagen_animada_0135;
            this.btnInicio.Location = new System.Drawing.Point(419, 452);
            this.btnInicio.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnInicio.Name = "btnInicio";
            this.btnInicio.Size = new System.Drawing.Size(287, 75);
            this.btnInicio.TabIndex = 1;
            this.btnInicio.Text = "Iniciar Programa";
            this.btnInicio.UseVisualStyleBackColor = true;
            this.btnInicio.Click += new System.EventHandler(this.btnInicio_Click);
            // 
            // imglogo
            // 
            this.imglogo.Image = global::Libro_BD_I.Properties.Resources._72201870_2534608789953806_6820335107438542848_n;
            this.imglogo.Location = new System.Drawing.Point(0, -4);
            this.imglogo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.imglogo.Name = "imglogo";
            this.imglogo.Size = new System.Drawing.Size(1067, 561);
            this.imglogo.TabIndex = 0;
            this.imglogo.Text = ".";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnInicio);
            this.Controls.Add(this.imglogo);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Form1";
            this.Text = "Launcher";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label imglogo;
        private System.Windows.Forms.Button btnInicio;
        private System.Windows.Forms.Button btnSalir;
    }
}