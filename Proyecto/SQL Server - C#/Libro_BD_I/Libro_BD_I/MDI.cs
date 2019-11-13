using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Libro_BD_I
{
    public partial class MDI : Form
    {
        public MDI()
        {
            InitializeComponent();
        }

        private void mnu_catalogos_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void mnu_catalogos_libros_Click(object sender, EventArgs e)
        {

        }

        private void catálogosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void productosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLibros from = new frmLibros();
            from.Show(this);
        }

        private void btnProductos_Click(object sender, EventArgs e)
        {
            frmLibros from = new frmLibros();
            from.Show();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Seguro que quiere salir?");
            Application.Exit();
        }
    }
}
