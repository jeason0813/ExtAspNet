using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text;

namespace ExtAspNet.Examples.test
{
    public partial class test : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //if (Request.Form["__EVENTTARGET"] == "test")
                //{
                //    if (Request.Form["__EVENTARGUMENT"] == "asdf")
                //    {
                //        Alert.Show("你好 ExtAspNet！", MessageBoxIcon.Warning);
                //    }
                //}
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    //Button1.Text += " - " + DateTime.Now.Second.ToString();
        //    //Button2.Hidden = !Button2.Hidden;
        //}

        //public override Control FindControl(string id)
        //{
        //    return base.FindControl(id.Replace("_", "$"));
        //}

        //protected void treeList_NodeCommand(object sender, ExtAspNet.TreeCommandEventArgs e)
        //{
        //    Alert.ShowInTop(e.Node.Text, "Click", ExtAspNet.MessageBoxIcon.Information);
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Alert.ShowInTop("HAHA");
        //}

    }
}
