//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ONLINE_AUCTION_PROJECT.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Item
    {
        public int Item_Id { get; set; }
        public string Item_Title { get; set; }
        public string Item_description { get; set; }
        public string Bid_Status { get; set; }
        public Nullable<System.DateTime> Bid_Sdate { get; set; }
        public Nullable<System.DateTime> Bid_Edate { get; set; }
        public Nullable<int> Bid_Inc { get; set; }
        public Nullable<int> Min_Bid { get; set; }
        public Nullable<int> Cat_id { get; set; }
    
        public virtual Category Category { get; set; }
    }
}
