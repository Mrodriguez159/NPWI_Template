using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LNPWI_DCS.Models
{
    public class Organization
    {
        int OrganizationId { get; set; }
        int LeadId { get; set; }
        string OrganizationName { get; set; }
        string OrganizationDescription { get; set; }
        string OrganizationPhone { get; set; }
        string StreetAddress { get; set; }
        string City { get; set; }
        string State { get; set; }
        string Zip { get; set; }
    }
}