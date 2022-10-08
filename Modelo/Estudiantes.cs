using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace pr_web
{
    public class Empleado
    {
        ConexionBD conectar;
        
        }
        public void grid_estudiantes(GridView grid)
        {
            grid.DataSource = grid_estudiantes();
            grid.DataBind();

        }
        public int agregar(string codigo, string nombres, string apellidos, string direccion, string telefono, string correo, string sangre, string nacimiento)
        {
            int no_ingreso = 0;
            conectar = new ConexionBD();
            conectar.AbrirConexion();
            string strConsulta = string.Format("insert into empleados(codigo,nombres,apellidos,direccion,telefono,correo,sangre,nacimiento) values('{0}','{1}','{2}','{3}','{4}','{5}',{6});", codigo, nombres, apellidos, direccion, telefono, correo, sangre, nacimiento);
            MySqlCommand insertar = new MySqlCommand(strConsulta, conectar.conectar);

            insertar.Connection = conectar.conectar;
            no_ingreso = insertar.ExecuteNonQuery();
            conectar.CerarConexion();
            return no_ingreso;

        }
        public int modificar(int id, string codigo, string nombres, string apellidos, string direccion, string telefono, string correo, string sangre, string nacimiento)
        {
            int no_ingreso = 0;
            conectar = new ConexionBD();
            conectar.AbrirConexion();
            string strConsulta = string.Format("update estudiantes set codigo = '{0}',nombres = '{1}',apellidos = '{2}',direccion='{3}',telefono='{4}',correo='{5}',sangre='{6}',nacimiento='{6}';", codigo, nombres, apellidos, direccion, telefono, correo, sangre, nacimiento);
            MySqlCommand modificar = new MySqlCommand(strConsulta, conectar.conectar);

            modificar.Connection = conectar.conectar;
            no_ingreso = modificar.ExecuteNonQuery();
            conectar.CerarConexion();
            return no_ingreso;
        }
        public int eliminar(int id)
        {
            int no_ingreso = 0;
            conectar = new ConexionBD();
            conectar.AbrirConexion();
            string strConsulta = string.Format("delete from empleados  where id_estudiantes = {0};", id);
            MySqlCommand eliminar = new MySqlCommand(strConsulta, conectar.conectar);

            eliminar.Connection = conectar.conectar;
            no_ingreso = eliminar.ExecuteNonQuery();
            conectar.CerarConexion();
            return no_ingreso;
        }

    }
}