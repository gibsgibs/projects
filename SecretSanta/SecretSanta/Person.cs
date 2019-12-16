using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta
{
    class Person
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int? SignificantOtherID { get; set; }
        public int? RecipientID { get; set; }

        public Person(int id, string name)
        {
            ID = id;
            Name = name;
        }

        public override string ToString()
        {
            return $"ID: {ID}\tName: {Name}\tRecipient ID: {RecipientID}";
        }
    }
}
