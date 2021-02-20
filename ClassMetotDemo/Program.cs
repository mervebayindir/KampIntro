using System;

namespace ClassMetotDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            Musteri yeni1 = new Musteri();
            yeni1.AdSoyad = "Merve Bayındır";
            yeni1.Tc = "12345678921";
            yeni1.Meslek = "Bilgisayar Mühendisi";

            Musteri yeni2 = new Musteri();
            yeni2.AdSoyad = "Kutluhan Bayındır";
            yeni2.Tc = "12345678923";
            yeni2.Meslek = "Öğrenci";

           
            MusteriManager musteri = new MusteriManager();
            musteri.Ekle(yeni1);
            musteri.Ekle(yeni2);
            musteri.Silme(yeni1);
            Console.WriteLine();
            Console.ReadKey();
            
            
            
        }
    }
}
