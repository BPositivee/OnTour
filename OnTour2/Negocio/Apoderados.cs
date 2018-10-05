using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALC;
using Negocio;
namespace Negocio
{
    public class Apoderados
    {

        public decimal id { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public string ap_paterno { get; set; }
        public string ap_materno { get; set; }
        public string nombre { get; set; }
        public string telefono { get; set; }
        public string celular { get; set; }
        public string password { get; set; }

        public Apoderados()
        {

        }

        public Apoderados(decimal id, string username, string email, string ap_paterno, string ap_materno, string nombre, string telefono, string celular, string password)
        {
            this.id = id;
            this.username = username;
            this.email = email;
            this.ap_paterno = ap_paterno;
            this.ap_materno = ap_materno;
            this.nombre = nombre;
            this.telefono = telefono;
            this.celular = celular;
            this.password = password;
        }


        /*
        public bool Leer() {
            try {

                APODERADO ap = new APODERADO();
               ap = Conexion.Entidades.APODERADOS.FirstOrDefault(
                    apo => apo.APODERADOS_ID.Equals(id));
                
                this.id = ap.APODERADOS_ID;
                this.username = ap.USERNAME;
                this.email = ap.EMAIL;
                this.ap_paterno = ap.AP_PATERNO;
                this.ap_materno = ap.AP_MATERNO;
                this.nombre = ap.NOMBRE;
                this.telefono = ap.TELEFONO;
                this.celular = ap.CELULAR;
                this.password = ap.PASSWORD;
                return true;

            }
            catch (Exception ex) {

                return false;
            }



        }

    */
        public void InsertarApoderado(decimal id, string username, string email, string ap_paterno, string ap_materno, string nombre, string telefono, string celular, string password) {

         

                    Conexion.Entidades.AgregarApoderado(id, username, email,ap_paterno,
                        ap_materno,nombre,telefono,celular,password);
                    Conexion.Entidades.SaveChanges();

                  
            
        }

    }
}
