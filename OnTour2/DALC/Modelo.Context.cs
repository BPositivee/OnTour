﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ACTIVIDADES_TOUR> ACTIVIDADES_TOUR { get; set; }
        public DbSet<AGENTE> AGENTEs { get; set; }
        public DbSet<ALUMNO> ALUMNOS { get; set; }
        public DbSet<APODERADO> APODERADOS { get; set; }
        public DbSet<COLEGIO> COLEGIOS { get; set; }
        public DbSet<CONTRATO> CONTRATOS { get; set; }
        public DbSet<CURSO> CURSOS { get; set; }
        public DbSet<DESTINO> DESTINOS { get; set; }
        public DbSet<ENCARGADO> ENCARGADOS { get; set; }
        public DbSet<PAGO> PAGOS { get; set; }
        public DbSet<POLIZA> POLIZAS { get; set; }
        public DbSet<SERVICIOS_ADICIONALES> SERVICIOS_ADICIONALES { get; set; }
        public DbSet<TOUR> TOURS { get; set; }
    
        public virtual int AgregarApoderado(Nullable<decimal> a_APODERADO_ID, string a_USERNAME, string a_EMAIL, string a_AP_PATERNO, string a_AP_MATERNO, string a_NOMBRE, string a_TELEFONO, string a_CELULAR, string a_PASSWORD)
        {
            var a_APODERADO_IDParameter = a_APODERADO_ID.HasValue ?
                new ObjectParameter("A_APODERADO_ID", a_APODERADO_ID) :
                new ObjectParameter("A_APODERADO_ID", typeof(decimal));
    
            var a_USERNAMEParameter = a_USERNAME != null ?
                new ObjectParameter("A_USERNAME", a_USERNAME) :
                new ObjectParameter("A_USERNAME", typeof(string));
    
            var a_EMAILParameter = a_EMAIL != null ?
                new ObjectParameter("A_EMAIL", a_EMAIL) :
                new ObjectParameter("A_EMAIL", typeof(string));
    
            var a_AP_PATERNOParameter = a_AP_PATERNO != null ?
                new ObjectParameter("A_AP_PATERNO", a_AP_PATERNO) :
                new ObjectParameter("A_AP_PATERNO", typeof(string));
    
            var a_AP_MATERNOParameter = a_AP_MATERNO != null ?
                new ObjectParameter("A_AP_MATERNO", a_AP_MATERNO) :
                new ObjectParameter("A_AP_MATERNO", typeof(string));
    
            var a_NOMBREParameter = a_NOMBRE != null ?
                new ObjectParameter("A_NOMBRE", a_NOMBRE) :
                new ObjectParameter("A_NOMBRE", typeof(string));
    
            var a_TELEFONOParameter = a_TELEFONO != null ?
                new ObjectParameter("A_TELEFONO", a_TELEFONO) :
                new ObjectParameter("A_TELEFONO", typeof(string));
    
            var a_CELULARParameter = a_CELULAR != null ?
                new ObjectParameter("A_CELULAR", a_CELULAR) :
                new ObjectParameter("A_CELULAR", typeof(string));
    
            var a_PASSWORDParameter = a_PASSWORD != null ?
                new ObjectParameter("A_PASSWORD", a_PASSWORD) :
                new ObjectParameter("A_PASSWORD", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("AgregarApoderado", a_APODERADO_IDParameter, a_USERNAMEParameter, a_EMAILParameter, a_AP_PATERNOParameter, a_AP_MATERNOParameter, a_NOMBREParameter, a_TELEFONOParameter, a_CELULARParameter, a_PASSWORDParameter);
        }
    }
}
