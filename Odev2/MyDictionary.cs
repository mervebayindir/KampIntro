using System;
using System.Collections.Generic;
using System.Text;

namespace Odev2
{
    class MyDictionary<MKey,MValue>
    {
        MKey[] keys;
        MValue[] values;
        public MyDictionary()
        {
            keys = new MKey[0];
            values = new MValue[0];
        }
        public void Add(MKey key,MValue value)
        {
            MKey[] TempKeys = keys;
            keys = new MKey[keys.Length+ 1];

            MValue[] TempValues = values;
            values = new MValue[values.Length + 1];
            for (int i = 0; i < TempKeys.Length; i++)
            {
                keys[1] = TempKeys[i];

                values[1] = TempValues[i];
            }
            keys[keys.Length - 1] = key;
            values[values.Length - 1] = value;
        }
        public int Length
        {
            get { return keys.Length; }
        }
        public void List()
        {
            for (int i = 0; i < keys.Length; i++)
            {
                Console.WriteLine("Key : " + keys[i] + "values : " + values[i]);
            }
        }
    }
}
