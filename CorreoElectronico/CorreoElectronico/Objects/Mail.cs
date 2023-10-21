using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CorreoElectronico.Objects
{
    public class Mail
    {
        public int id { get; set; }
        public string subject { get; set; }
        public string content { get; set; }
        public DateTime created { get; set; }

        public Mail(int id, string subject, string content, DateTime created)
        {
            this.id = id;
            this.subject = subject;
            this.content = content;
            this.created = created;
        }

        public Mail(string subject, string content, DateTime created)
        {
            this.subject = subject;
            this.content = content;
            this.created = created;
        }

        public Mail() { }
    }
}