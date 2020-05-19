using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace DollMall.DataBase.Entity
{
    [Table("T_Goods")]
    public class T_Goods
    {
        [Key]
        public int Id { get; set; }
        public string GoodName { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public decimal Price { get; set; }
    }
}
