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
    
    public partial class AGENTE
    {
        public AGENTE()
        {
            this.CONTRATOS = new HashSet<CONTRATO>();
            this.ENCARGADOS = new HashSet<ENCARGADO>();
        }
    
        public decimal AGENTE_ID { get; set; }
        public string NOMBRE { get; set; }
        public string AP_PATERNO { get; set; }
        public string USERNAME { get; set; }
        public string EMAIL { get; set; }
        public string PASSWORD { get; set; }
    
        public virtual ICollection<CONTRATO> CONTRATOS { get; set; }
        public virtual ICollection<ENCARGADO> ENCARGADOS { get; set; }
    }
}