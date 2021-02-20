namespace Metotlar
{
    class Program
    {
        static void Main(string[] args)
        {
            string urunAdi = "Elma";
            double Fiyati = 15;
            string aciklama = "Amasya elmasi";

            string[] meyveler = new string[] { };

            Product urun1 = new Product();
            urun1.Adi = "Elma";
            urun1.Fiyati = 15;
            urun1.Aciklama = "Amasya Elmasi";

            Product urun2 = new Product();
            urun2.Adi = "Karpuz";
            urun2.Fiyati = 80;
            urun2.Aciklama = "Diyarbakır karpuzu";

            Product[] urunler = new Product[] {urun1,urun2 };

            //type-safe -- tip güvenli
            foreach (Product product in urunler)
            {
                System.Console.WriteLine(product.Adi);
                System.Console.WriteLine(product.Fiyati);
                System.Console.WriteLine(product.Aciklama);
                System.Console.WriteLine("----------------");

            }

            System.Console.WriteLine("--------Metotlar----------");
            
            //instance - örnek
            //encapsulation(urunlerın patlaması)

            SepetManager sepetManager = new SepetManager();
            sepetManager.Ekle(urun1);
            sepetManager.Ekle(urun2);

            sepetManager.Ekle2("Armut", "Yeşil armut", 12, 10);
            sepetManager.Ekle2("Elme", "Yeşil elma", 12,9);
            sepetManager.Ekle2("Karpuz", "Diyarbakır karpuzu", 12,8);
        }
    }
}
//Dont repeat yourself - DRY - Clean Code - Best Practice
