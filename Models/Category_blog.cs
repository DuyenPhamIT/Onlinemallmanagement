//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineMallManagement.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Category_blog
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Category_blog()
        {
            this.Blogs = new HashSet<Blog>();
        }
    
        public int Cate_blog_id { get; set; }
        public string name { get; set; }
        public string slug { get; set; }
        public string Meta_title { get; set; }
        public string Meta_keyword { get; set; }
        public string Meta_description { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Blog> Blogs { get; set; }
    }
}