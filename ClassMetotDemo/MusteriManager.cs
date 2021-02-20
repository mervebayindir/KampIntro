using System;
using System.Collections.Generic;
using System.Text;

namespace ClassMetotDemo
{
    class MusteriManager
    { 
        public void Ekle(Musteri musteri)
        {
            Console.WriteLine("Musteri Eklendi : " + musteri.AdSoyad);
        }
        public void Silme(Musteri musteri)
        {
            Console.WriteLine("Müşteri kaydı silinmiştir! " + musteri.AdSoyad);
        }
        public void Listeleme(Musteri[] musteriler)
        {
            foreach (Musteri musteri in musteriler)
            {
                Console.WriteLine(musteri.AdSoyad);
                Console.WriteLine(musteri.Tc);
                Console.WriteLine(musteri.Meslek);
                
            }
        }
    }
}
