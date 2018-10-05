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
    
    public partial class CONTRATO
    {
        public CONTRATO()
        {
            this.PAGOS = new HashSet<PAGO>();
            this.SERVICIOS_ADICIONALES = new HashSet<SERVICIOS_ADICIONALES>();
        }
    
        public decimal CONTRATOS_ID { get; set; }
        public System.DateTime FECHA { get; set; }
        public string NOMBRE_COLEGIO { get; set; }
        public decimal SUBTOTAL { get; set; }
        public decimal TOTAL { get; set; }
        public decimal TOURS_TOURS_ID { get; set; }
        public decimal AGENTE_AGENTE_ID { get; set; }
    
        public virtual AGENTE AGENTE { get; set; }
        public virtual TOUR TOUR { get; set; }
        public virtual ICollection<PAGO> PAGOS { get; set; }
        public virtual ICollection<SERVICIOS_ADICIONALES> SERVICIOS_ADICIONALES { get; set; }
    }
}