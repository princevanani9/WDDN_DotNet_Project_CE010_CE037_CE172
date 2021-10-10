using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ChatApplication
{
    public class chatContext:DbContext
    {
        public chatContext() : base("name=chat")
        {

        }
        public DbSet<chat> chats { get; set; }
    }
}