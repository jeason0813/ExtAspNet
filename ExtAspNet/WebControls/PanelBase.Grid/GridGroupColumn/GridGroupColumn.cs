
#region Comment

/*
 * Project��    ExtAspNet
 * 
 * FileName:    GridGroupColumn.cs
 * CreatedOn:   2012-05-29
 * CreatedBy:   sanshi.ustc@gmail.com
 * 
 * 
 * Description��
 *      ->
 *   
 * History��
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Text;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Data;
using System.Reflection;
using System.Web.UI.WebControls;


namespace ExtAspNet
{
    /// <summary>
    /// ��������
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    [DefaultProperty("HeaderText")]
    public class GridGroupColumn
    {
        #region Grid

        private Grid _grid;

        /// <summary>
        /// ������
        /// </summary>
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [Description("������")]
        public Grid Grid
        {
            get
            {
                return _grid;
            }
            set
            {
                _grid = value;
            }
        }


        #endregion

        #region Properties


        private string _headerText = String.Empty;

        /// <summary>
        /// ��������ʾ����
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("��������ʾ����")]
        public string HeaderText
        {
            get
            {
                return _headerText;
            }
            set
            {
                _headerText = value;
            }
        }

        private TextAlign _textalign = TextAlign.Left;

        /// <summary>
        /// �ı�������λ��
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(TextAlign.Left)]
        [Description("�ı�������λ��")]
        public TextAlign TextAlign
        {
            get
            {
                return _textalign;
            }
            set
            {
                _textalign = value;
            }
        }


        #endregion


        #region Columns/Rows

        private GridGroupColumnCollection _groupColumns;

        /// <summary>
        /// ����������
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [NotifyParentProperty(true)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public virtual GridGroupColumnCollection GroupColumns
        {
            get
            {
                if (_groupColumns == null)
                {
                    _groupColumns = new GridGroupColumnCollection(_grid);
                }
                return _groupColumns;
            }
        }


        private GridColumnCollection _columns;

        /// <summary>
        /// ������
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [NotifyParentProperty(true)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public virtual GridColumnCollection Columns
        {
            get
            {
                if (_columns == null)
                {
                    _columns = new GridColumnCollection(_grid);
                }
                return _columns;
            }
        }

        #endregion
    }
}



