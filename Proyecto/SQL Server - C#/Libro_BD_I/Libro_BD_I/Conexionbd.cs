using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Libro_BD_I
{
    class Conexionbd
    {
        string cadena = "DATA Source = DESKTOP-DCRENT5\\SQLEXPRESS ;Database = SalmonTech";
        public SqlConnection cnn = new SqlConnection();

        public Conexionbd()
        {
            cnn.ConnectionString = cadena;
        }

        public void abrir()
        {
            try
            {
                cnn.Open();
                Console.WriteLine("Conexion abierta");
            }
            catch (Exception ex)
            {
                Console.WriteLine("ERROR al abrir la BD "+ ex.Message);
            }
        }
        public void cerrar()
        {
            cnn.Close();
        }
    }
}
