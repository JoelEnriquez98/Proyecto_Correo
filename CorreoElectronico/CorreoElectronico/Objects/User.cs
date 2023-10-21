using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CorreoElectronico.Objects
{
    public class User
    {
        public string email { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public DateTime birthday { get; set; }
        public string birthdate { get; set; }
        public string gender { get; set; }
        public string password { get; set; }
        public int phone { get; set; }

        public User(string email, string firstName, string lastName, DateTime birthday, string gender, string password, int phone)
        {
            this.email = email;
            this.firstName = firstName;
            this.lastName = lastName;
            this.birthday = birthday;
            this.gender = gender;
            this.password = password;
            this.phone = phone;
        }

        public User(string email, string firstName, string lastName, string birthdate, string gender, string password, int phone)
        {
            this.email = email;
            this.firstName = firstName;
            this.lastName = lastName;
            this.birthdate = birthdate;
            this.gender = gender;
            this.password = password;
            this.phone = phone;
        }

        public User(string email, string firstName, DateTime birthday, string gender, string password, int phone)
        {
            this.email = email;
            this.firstName = firstName;
            this.birthday = birthday;
            this.gender = gender;
            this.password = password;
            this.phone = phone;
        }

        public User() { }
    }
}