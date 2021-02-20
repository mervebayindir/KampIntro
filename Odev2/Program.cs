using System;

namespace Odev2
{
    class Program
    {
        static void Main(string[] args)
        {
            MyDictionary<int,String> PcMarkalari = new MyDictionary<int,string>();
            PcMarkalari.Add(1,"Casper");
            PcMarkalari.Add(2,"Hp");
            PcMarkalari.Add(3,"Dell");
            PcMarkalari.Add(4,"Asus");
            Console.WriteLine(PcMarkalari.Length);
        }
    }
}
