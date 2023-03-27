using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab06_WebBanHoa.Models
{
    public class CartItem
    {
        public int masp { set; get; }
        public string tensp { set; get; }
        public int dongia { set; get; }
        public string hinh { set; get; }
        public int soluong { set; get; }

        public int thanhtien { get { return soluong * dongia; } }

    }
}