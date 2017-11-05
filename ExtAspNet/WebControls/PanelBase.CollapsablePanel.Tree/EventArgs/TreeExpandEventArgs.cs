
#region Comment

/*
 * Project��    ExtAspNet
 * 
 * FileName:    TreeExpandEventArgs.cs
 * CreatedOn:   2008-07-22
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
    /// ���ڵ�չ���¼�����
    /// </summary>
    public class TreeExpandEventArgs : EventArgs
    {
        private TreeNode _node;

        /// <summary>
        /// ��ʵ��
        /// </summary>
        public TreeNode Node
        {
            get { return _node; }
            set { _node = value; }
        }


        private string _nodeID;

        /// <summary>
        /// ���ڵ�ID
        /// </summary>
        public string NodeID
        {
            get { return _nodeID; }
            set { _nodeID = value; }
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        /// <param name="node">���ڵ�</param>
        public TreeExpandEventArgs(TreeNode node)
        {
            _node = node;
            _nodeID = node.NodeID;
        }

    }
}



