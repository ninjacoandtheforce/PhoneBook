//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;

namespace CIB.PhoneBook.Shared.Models
{
    public partial class WhatsAppHookMessage
    {
        public int Id { get; set; }
        public Nullable<int> IdContact { get; set; }
        public string EventType { get; set; }
        public string Token { get; set; }
        public string ContactUid { get; set; }
        public string ContactName { get; set; }
        public string ContactType { get; set; }
        public System.DateTime MessageDate { get; set; }
        public string MessageUid { get; set; }
        public string MessageCuid { get; set; }
        public string MessageDirection { get; set; }
        public string MessageType { get; set; }
        public Nullable<int> IdHookText { get; set; }
        public Nullable<int> IdHookImage { get; set; }
        public Nullable<int> IdHookVideo { get; set; }
        public Nullable<int> IdHookAudio { get; set; }
        public Nullable<int> IdHookPtt { get; set; }
        public Nullable<int> IdHookDocument { get; set; }
        public Nullable<int> IdHookVCard { get; set; }
        public Nullable<int> IdHookLocation { get; set; }
    
        public virtual WhatsAppHookAudio WhatsAppHookAudio { get; set; }
        public virtual WhatsAppHookDocument WhatsAppHookDocument { get; set; }
        public virtual WhatsAppHookImage WhatsAppHookImage { get; set; }
        public virtual WhatsAppHookLocation WhatsAppHookLocation { get; set; }
        public virtual WhatsAppHookPtt WhatsAppHookPtt { get; set; }
        public virtual WhatsAppHookText WhatsAppHookText { get; set; }
        public virtual WhatsAppHookVCard WhatsAppHookVCard { get; set; }
        public virtual WhatsAppHookVideo WhatsAppHookVideo { get; set; }
    }
}