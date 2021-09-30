using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ChatApplication
{
    public class usercontext : DbContext
    {
        public usercontext() : base("name=chat")
        {

        }
        public DbSet<User> Users { get; set; }

        internal void Update(User u)
        {
            throw new NotImplementedException();
        }
    }
}