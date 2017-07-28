using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplicationCRUD.Models
{
    public class Employee
    {
        [Key]
        public int id { get; set; }
        public String Firstname { get; set; }
        public String Lastnamee { get; set; }
        public String Address { get; set; }
       
    }
}