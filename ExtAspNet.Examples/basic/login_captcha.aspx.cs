﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace ExtAspNet.Examples.basic
{
    public partial class login_captcha : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }


        private void LoadData()
        {
            // 创建一个 6 位的随机数并保存在 Session 对象中
            Session["CaptchaImageText"] = GenerateRandomCode();
        }

        /// <summary>
        /// 创建一个 6 位的随机数
        /// </summary>
        /// <returns></returns>
        private string GenerateRandomCode()
        {
            string s = String.Empty;
            Random random = new Random();
            for (int i = 0; i < 6; i++)
            {
                s += random.Next(10).ToString();
            }
            return s;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbxCaptcha.Text != Session["CaptchaImageText"].ToString())
            {
                Alert.ShowInTop("验证码错误！");
                return;
            }

            if (tbxUserName.Text == "admin" && tbxPassword.Text == "admin")
            {
                Alert.ShowInTop("成功登录！");
            }
            else
            {
                Alert.ShowInTop("用户名或密码错误！", MessageBoxIcon.Error);
            }
        }

    }
}
