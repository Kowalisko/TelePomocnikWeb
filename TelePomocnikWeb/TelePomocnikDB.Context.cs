﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TelePomocnikWeb
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TelePomocnikDbEntities1 : DbContext
    {
        public TelePomocnikDbEntities1()
            : base("name=TelePomocnikDbEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Company> Company { get; set; }
        public DbSet<Contact> Contact { get; set; }
        public DbSet<Event> Event { get; set; }
        public DbSet<Role> Role { get; set; }
        public DbSet<sysdiagrams> sysdiagrams { get; set; }
        public DbSet<Telemarketer> Telemarketer { get; set; }
        public DbSet<ContactHistory> ContactHistory { get; set; }
        public DbSet<Attachment> Attachment { get; set; }
        public DbSet<MustCallInformation> MustCallInformation { get; set; }
    }
}
