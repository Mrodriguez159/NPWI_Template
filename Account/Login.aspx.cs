﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LNPWI_DCS.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Equals("admin")) {
                Response.Redirect("/Admin/AdminDashboard.aspx");
            }
            else
            {
                Response.Redirect("/Dashboard_User.aspx");
            }
        }
    }
}