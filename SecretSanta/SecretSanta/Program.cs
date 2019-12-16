using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta
{
    class Program
    {
        static void Main(string[] args)
        {
            Random random = new Random();
            List<int> recipients = new List<int>();
            List<Person> people = new List<Person>();
            for(var i = 0; i < 15; i++)
            {
                Person person = new Person(i, $"Person {i}");
                recipients.Add(i);
                people.Add(person);
            }
            foreach (var person in people)
            {
                while(person.RecipientID == null)
                {
                    var number = random.Next(0, 15);
                    if (recipients.Contains(number) && person.ID != number)
                    {
                        person.RecipientID = number;
                        recipients.Remove(number);
                    }
                }
            }
            Console.Read();
        }
    }
}
