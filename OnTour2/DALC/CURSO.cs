//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DALC
{
    using System;
    using System.Collections.Generic;
    
    public partial class CURSO
    {
        public CURSO()
        {
            this.ALUMNOS = new HashSet<ALUMNO>();
            this.COLEGIOS = new HashSet<COLEGIO>();
        }
    
        public decimal CURSOS_ID { get; set; }
        public string NOMBRE_CURSO { get; set; }
        public decimal ENCARGADOS_ENCARGADOS_ID { get; set; }
    
        public virtual ICollection<ALUMNO> ALUMNOS { get; set; }
        public virtual ICollection<COLEGIO> COLEGIOS { get; set; }
        public virtual ENCARGADO ENCARGADO { get; set; }
    }
}
