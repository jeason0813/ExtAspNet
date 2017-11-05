
#region Comment

/*
 * Project��    ExtAspNet
 * 
 * FileName:    GridRowEventArgs.cs
 * CreatedOn:   2008-06-23
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
    /// ����а��¼�����
    /// </summary>
    public class GridRowEventArgs : EventArgs
    {

        private object[] _values;

        /// <summary>
        /// ���и��е�ֵ����Ⱦ���HTMLƬ�Σ�
        /// </summary>
        public object[] Values
        {
            get { return _values; }
            set { _values = value; }
        }


        private object _dataItem;

        /// <summary>
        /// ������Դ
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
        /// <param name="values">���и��е�ֵ</param>
        public GridRowEventArgs(object dataItem, int rowIndex, object[] values)
        {
            _dataItem = dataItem;
            _values = values;
            _rowIndex = rowIndex;
        }

    }
}



