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
    
    public partial class PAGO
    {
        public decimal PAGOS_ID { get; set; }
        public System.DateTime FECHA { get; set; }
        public decimal MONTO { get; set; }
        public decimal CONTRATOS_CONTRATOS_ID { get; set; }
        public decimal APODERADOS_APODERADOS_ID { get; set; }
        public decimal ENCARGADOS_ENCARGADOS_ID { get; set; }
    
        public virtual APODERADO APODERADO { get; set; }
        public virtual CONTRATO CONTRATO { get; set; }
        public virtual ENCARGADO ENCARGADO { get; set; }
    }
}
