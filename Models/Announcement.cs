using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LNPWI_DCS.Models
{
    public class Announcement
    {
        public int AnnouncementId { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime EndDate { get; set; }

    }
}