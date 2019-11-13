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

namespace Libro_BD_I {
    public partial class frmLibros : Form   {

        //1) Objeto para enlazar C# con la Base de Datos
        SqlConnection cnn;


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        public frmLibros()   {
            InitializeComponent();
        }


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void Form1_Load(object sender, EventArgs e)    {
            string connetionString = null;

            /*  Conexionbd cnn = new Conexionbd();
              cnn.abrir();/*/




            connetionString = " Data Source = DESKTOP-DCRENT5 ;Initial Catalog= SalmonTech;Integrated Security =true";
        //connetionString = "Data Source=.;Initial Catalog=Libros;User ID=sa;Password=saRoger"; //DESKTOP-VTG6MMI
        // connetionString = "Server=.; Database=Libros; User Id=sa; Password=saRoger";
        //connetionString = "Server=CU-145026\\SQLEXPRESS; Database=Libros; User Id = sa; Password = saRoger";
    


            cnn = new SqlConnection(connetionString);
           try {
                cnn.Open();
            }
            catch (Exception ex) {
                MessageBox.Show("No se pudo realizar la conexión ! ", "Mensaje del Sistema", MessageBoxButtons.OK , MessageBoxIcon.Error);
                this.Close();
            }
        }



//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void Form1_FormClosed(object sender, FormClosedEventArgs e) {
            //Cerrar la conexión con la base de datos
            cnn.Close();
        }

        
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void button2_Click(object sender, EventArgs e) {
            
        }



//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void txtCodigo_Validating(object sender, CancelEventArgs e) {
            int resultado;
            

        }



//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void txtTitulo_Validating(object sender, CancelEventArgs e) {
         
        }



//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void cmdGuardar_Click(object sender, EventArgs e)    {
            if (!this.ValidateChildren())       {
                return;
            }


            if ( MessageBox.Show("¿Está seguro que desea guardar la información?", "Pregunta del sistema", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2)== DialogResult.No)      {
                MessageBox.Show("Información no almacenada", "Mensaje del sistema", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            String ProductID = this.txtCodigo.Text.ToString();
            String ProductName = this.txtTitulo.Text.ToString();
            String ProveedorID = this.txtProductName.Text.ToString();
            string Precio = this.cboEditorial.Text.ToString();
            String Unidades = this.txtCantidad.Text.ToString();
            String Descontinuados = this.txtPrecio.Text.ToString();
            String Unidades_Pedidas = this.txtPrecio.Text.ToString();
            String CategoryID = this.txtPrecio.Text.ToString();

            String Query = "Insert Into Productos(ProductID, ProductName, ProveedorID, Precio,Unidades, Descontinuados, Unidades_Pedidas, CategoryID) " +
                                   "Values(" + ProductID + "', '" + ProductName + "', '" + ProveedorID + "', '" + Precio + "', '" + Unidades + ", " + Descontinuados + "" +
                                   ", " + Unidades_Pedidas + "','" + CategoryID + ")";
            

            try { 
                SqlCommand myCommand = new SqlCommand(Query, cnn);
                myCommand.ExecuteNonQuery();
                MessageBox.Show("Información almacenada exitosamente", "Mensaje del sistema", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex) {
                MessageBox.Show("Error: " + ex.Message, "Mensaje del sistema", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }



//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void cmdSalir_Click(object sender, EventArgs e) {
            this.Close();
        }




//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void cmdBuscar_Click(object sender, EventArgs e) {
            frmBuscar frm = new frmBuscar( this.cnn );
            frm.ShowDialog(this);
            if (frm.gAcepto) {
                this.txtCodigo.Text = frm.gCodigo;
                this.txtCodigo_Leave(this, null);
            }

            frm.Close();
        }


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private void txtCodigo_Leave(object sender, EventArgs e) {
            SqlCommand command = new SqlCommand("SELECT * FROM " + 
                                                    "Productos " +
                                                    "Where ProductID = " + this.txtCodigo.Text, cnn);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows) {
                while (reader.Read()) {
                    this.txtTitulo.Text = reader["ProductName"].ToString();
                    this.txtProductName.Text = reader["ProveedorID"].ToString();
                    this.cboEditorial.Text = reader["CategoryID"].ToString();
                    this.txtCantidad.Text = reader["ProuctID"].ToString();
                   // this.txtPrecio.Text = reader["Precio"].ToString();
                }
            }
            else {
                //No hubo registros, limpio los controles para que capture uno nuevo
                button2_Click(this, null);
            }


            reader.Close();
        }

        private void txtAutor_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtTitulo_TextChanged(object sender, EventArgs e)
        {

        }


        //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    }
}