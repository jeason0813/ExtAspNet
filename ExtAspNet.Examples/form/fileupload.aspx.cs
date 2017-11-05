﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExtAspNet.Examples.form
{
    public partial class fileupload : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string fileName = filePhoto.ShortFileName;
            fileName = fileName.Replace(":", "_").Replace(" ", "_").Replace("\\", "_").Replace("/", "_");
            fileName = DateTime.Now.Ticks.ToString() + "_" + fileName;
            if (filePhoto.HasFile)
            {
                filePhoto.SaveAs(Server.MapPath("~/upload/" + fileName));
            }

            labResult.Text = "<p>用户名：" + tbxUseraName.Text + "</p>" +
                "<p>头像：<br /><img src=\""+ ResolveUrl("~/upload/" + fileName) +"\" /></p>" ;
        }

    }
}