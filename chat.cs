using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChatApplication
{
    public class chat
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        
        public string Sender { get; set; }
        
        public string Receiver { get; set; }
      
        public string Message { get; set; }
     
        public string Date { get; set; }
        

    }
}