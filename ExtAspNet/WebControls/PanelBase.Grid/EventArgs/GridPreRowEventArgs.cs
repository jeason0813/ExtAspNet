
#region Comment

/*
 * Project��    ExtAspNet
 * 
 * FileName:    GridPreRowEventArgs.cs
 * CreatedOn:   2008-06-27
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
using System.Data;
using System.Reflection;
using System.ComponentModel;
using System.Web.UI;


namespace ExtAspNet
{
    /// <summary>
    /// �����Ԥ���¼�����
    /// </summary>
    public class GridPreRowEventArgs : EventArgs
    {

        private object _dataItem;

        /// <summary>
        /// ������Դ���������ԴΪDataTable����DataItemΪDataRowView��
        /// </summary>
        public object DataItem
        {
            get { return _dataItem; }
            set { _dataItem = value; }
        }


        private int _rowIndex;

        /// <summary>
        /// ������
        /// </summary>
        public int RowIndex
        {
            get { return _rowIndex; }
            set { _rowIndex = value; }
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        /// <param name="dataItem">������Դ</param>
        /// <param name="rowIndex">������</param>
        public GridPreRowEventArgs(object dataItem, int rowIndex)
        {
            _dataItem = dataItem;
            _rowIndex = rowIndex;
        }

    }
}



