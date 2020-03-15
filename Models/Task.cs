using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LNPWI_DCS.Models
{
    public class Task
    {
        int TaskId { get; set; }
        string TaskName { get; set; }
        string TaskDescription { get; set; }
        string FileRestrictions { get; set; }
        string AttachedFiles { get; set; }
        DateTime DueDate { get; set; }
    }
}