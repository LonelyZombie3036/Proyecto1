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

namespace Libro_BD_I{
    public partial class frmBuscar : Form {
        SqlConnection cnn = null;

        public bool gAcepto = false;
        public String gCodigo = "";


        public frmBuscar(SqlConnection cnn) {
            InitializeComponent();

            this.cnn = cnn;
        }

        private void frmBuscar_Load(object sender, EventArgs e) {
            SqlCommand command = new SqlCommand("SELECT ProductID, ProductName " + 
                                                    "FROM SalmonTech " +
                                                    "Order by ProductID", cnn);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows) {
                while (reader.Read()) {
                    this.dataGridView1.Rows.Add(reader["ProductID"], reader["ProductName"]);
                }
            }
            else {
                this.dataGridView1.Rows.Clear();
            }


            reader.Close();
        }



        private void dataGridView1_DoubleClick(object sender, EventArgs e) {
            int selectedrowindex = dataGridView1.SelectedCells[0].RowIndex;
            DataGridViewRow selectedRow = dataGridView1.Rows[selectedrowindex];

            this.gCodigo = selectedRow.Cells[0].Value.ToString();

            this.gAcepto = true;
            this.Hide();
            //MessageBox.Show(selectedRow.Cells[0].Value.ToString()  );
        }


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void txtTitulo_TextChanged(object sender, EventArgs e) {
            SqlCommand command = new SqlCommand("SELECT ProductID, ProductName" +
                                                    "FROM Productos " +
                                                    "Where ProductName like '%" + this.txtTitulo.Text + "%'", cnn);
            SqlDataReader reader = command.ExecuteReader();


            this.dataGridView1.Rows.Clear();

            if (reader.HasRows) {
                while (reader.Read()) {
                    this.dataGridView1.Rows.Add(reader["ProductID"], reader["ProductName"]);
                }
            }
            else {
                this.dataGridView1.Rows.Clear();
            }


            reader.Close();
        }

      
    }
}
