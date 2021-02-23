using System;

namespace OOP2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Merve Bayındır
            GercekMusteri musteri1 = new GercekMusteri();
            musteri1.Id = 1;
            musteri1.Soyadi = "12345";
            musteri1.Adi = "Merve";
            musteri1.Soyadi = "Bayındır";
            musteri1.TcNo = "12345656789";

            //kodlama.io

            TuzelMusteri musteri2 = new TuzelMusteri();
            musteri2.Id = 2;
            musteri2.MusteriNo = "54321";
            musteri2.SirketAdi = "Kodlama.oi";
            musteri2.VergiNo = "1234567890";

            //Gerçek Müşteri - Tüzel Müşteri
            //SOLID

            Musteri musteri3 = new GercekMusteri();
            Musteri musteri4 = new TuzelMusteri();

            CustomerManager musteriManager = new CustomerManager();
            musteriManager.Add(musteri1);
            musteriManager.Add(musteri2);


        }
    }
}
