﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ExtAspNet.Examples
{
    public partial class test2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Form["__EVENTARGUMENT"] == "Test3WindowClose")
                {
                    Button1.Text = "Update - " + DateTime.Now.ToString();
                }
            }

        }



    }
}
