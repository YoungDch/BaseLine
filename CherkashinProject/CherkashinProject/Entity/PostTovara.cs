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
    
    public partial class PostTovara
    {
        public int NumberId { get; set; }
        public int Tovar { get; set; }
        public int Count { get; set; }
        public double Price { get; set; }
        public int Kontragent { get; set; }
    
        public virtual Kontragent Kontragent1 { get; set; }
    }
}
