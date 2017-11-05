
#region Comment

/*
 * Project��    ExtAspNet
 * 
 * FileName:    GridColumn.cs
 * CreatedOn:   2008-05-19
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
using System.Xml;
using System.Text;
using System.Collections;
using System.ComponentModel;
using System.Collections.ObjectModel;


namespace ExtAspNet
{
    /// <summary>
    /// ����м��ϣ��̳���Collection<GridColumn>
    /// </summary>
    public class GridColumnCollection : Collection<GridColumn>
    {
        private Grid _grid;

        /// <summary>
        /// ���캯��
        /// </summary>
        /// <param name="grid">���ʵ��</param>
        public GridColumnCollection(Grid grid)
        {
            _grid = grid;

        }

        /// <summary>
        /// ������
        /// </summary>
        /// <param name="index">����</param>
        /// <param name="item">��</param>
        protected override void InsertItem(int index, GridColumn item)
        {
            item.ColumnIndex = index;
            item.Grid = _grid;

            base.InsertItem(index, item);
        }

        #region old code

        //protected override Type[] GetKnownTypes()
        //{
        //    Type[] types = new Type[] { 
        //        typeof(BoundField), 
        //        typeof(CheckBoxField), 
        //        typeof(HyperLinkField), 
        //        typeof(TemplateField), 
        //        typeof(ImageField),
        //        typeof(WindowField),
        //        typeof(LinkButtonField)
        //    };

        //    return types;
        //}

        //protected override object CreateKnownType(int index)
        //{
        //    switch (index)
        //    {
        //        case 0:
        //            return new BoundField();
        //        case 1:
        //            return new CheckBoxField();
        //        case 2:
        //            return new HyperLinkField();
        //        case 3:
        //            return new TemplateField();
        //        case 4:
        //            return new ImageField();
        //        case 5:
        //            return new WindowField();
        //        case 6:
        //            return new LinkButtonField();
        //        default:
        //            throw new ArgumentOutOfRangeException();
        //    }
        //}

        #endregion
    }
}



