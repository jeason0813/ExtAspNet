﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace ExtAspNet.Examples.iframe
{
    public partial class parent_simplepostback : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Form["__EVENTARGUMENT"] == "param_from_simplepostback2")
                {
                    Alert.Show("来自子面板IFrame中的事件！");
                }
            }

            labResult.Text = "页面加载时间：" + DateTime.Now.ToLongTimeString();
        }


    }
}
