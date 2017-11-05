using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace ExtAspNet.Examples
{
    public partial class icons : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadData();
            }
        }
        
        //private void LoadData()
        //{
        //    StringBuilder sb = new StringBuilder();
        //    int index = 0;
        //    sb.Append("<table><tr>");
        //    foreach (string icon in Enum.GetNames(typeof(ExtAspNet.IconType)))
        //    {
        //        //string iconName = ExtAspNet.IconTypeName.GetName((ExtAspNet.IconType)Enum.Parse(typeof(ExtAspNet.IconType), icon));
        //        //string iconUrl = ExtAspNet.ResourceHelper.GetWebResourceUrl(Page, String.Format("ExtAspNet.res.box.icons.{0}", iconName));
        //        ExtAspNet.IconType iconType = (ExtAspNet.IconType)Enum.Parse(typeof(ExtAspNet.IconType), icon);

        //        if (iconType != ExtAspNet.IconType.None)
        //        {
        //            string iconUrl = ExtAspNet.IconTypeName.GetIconUrl(iconType);
        //            sb.AppendFormat("<td><span style=\"padding-left:20px;background-image:url({0});background-repeat:no-repeat;\">{1}</span></td>", iconUrl, icon);
        //        }

        //        if (index % 5 == 0 && index != 0)
        //        {
        //            sb.Append("</tr><tr>");
        //        }

        //        index++;
        //    }
        //    sb.Append("</tr><table>");
        //    litIcons.Text = sb.ToString();
        //}
        
    }
}
