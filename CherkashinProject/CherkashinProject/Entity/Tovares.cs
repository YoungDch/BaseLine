//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CherkashinProject.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tovares
    {
        public int TovarId { get; set; }
        public string TovarName { get; set; }
        public int TovarArticle { get; set; }
        public int TovarColor { get; set; }
        public int TovarCountry { get; set; }
    
        public virtual Country Country { get; set; }
        public virtual TovarColor TovarColor1 { get; set; }
    }
}