﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExtAspNet.Examples.form
{
    public partial class form_validate : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (tbxUserName.Text == "admin")
            {
                tbxUserName.MarkInvalid(String.Format("'{0}' 是保留字，请另外选择！", tbxUserName.Text));

                Alert.ShowInTop("表单服务器端验证失败！");
            }
        }


    }
}
