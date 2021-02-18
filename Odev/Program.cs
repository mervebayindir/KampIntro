using System;

namespace Odev
{
    class Program
    {
        static void Main(string[] args)
        {
            Urun urun1 = new Urun();
            urun1.Marka = "Lw";
            urun1.Beden = "S";
            urun1.Renk = "Kırmızı";

            Urun urun2 = new Urun();
            urun2.Marka = "Boyner";
            urun2.Beden = "XL";
            urun2.Renk = "Yeşil";

            Urun urun3 = new Urun();
            urun3.Marka = "Koton";
            urun3.Beden = "L";
            urun3.Renk = "M";

            Urun[] urunler = new Urun[] {urun1,urun2,urun3 };

            for (int i = 0; i < urunler.Length; i++)
            {
                Console.WriteLine(urunler[i].Marka + ":" + urunler[i].Renk);
            }
            Console.WriteLine("for bitti");

            foreach (var urun in urunler)
            {
                Console.WriteLine(urun.Marka + " : " + urun.Renk);
            }
            Console.WriteLine("foreach bitti");

            int j = 0;
            while (j<urunler.Length)
            {
                Console.WriteLine(urunler[j].Marka + " : " + urunler[j].Renk);
                j++;
            }
        }
    }

    class Urun
    {
        public string Marka { get; set; }
        public string Beden { get; set; }
        public string Renk { get; set; }

    }
}
