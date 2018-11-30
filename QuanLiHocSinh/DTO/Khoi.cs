﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Khoi
    {
        public int MaKhoi { get; set; }
        public string TenKhoi { get; set; }
        public int SoLop { get; set; }
        public int NamHoc { get; set; }


        public Khoi() { }
        public Khoi(int maKhoi, string tenKhoi, int soLop)
        {
            MaKhoi = maKhoi;
            TenKhoi = tenKhoi;
            SoLop = soLop;
         }
        public Khoi(int maKhoi, string tenKhoi, int soLop, int namHoc)
        {
            MaKhoi = maKhoi;
            TenKhoi = tenKhoi;
            SoLop = soLop;
            NamHoc = namHoc;
        }
        public Khoi(int maKhoi, string tenKhoi)
        {
            MaKhoi = maKhoi;
            TenKhoi = tenKhoi;
        }
    }
}
