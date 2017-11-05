﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace ExtAspNet.Examples.grid
{
    public partial class grid_sorting : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        #region BindGrid

        private void BindGrid()
        {
            //DataTable table = GetDataTable();

            //Grid1.DataSource = table;
            //Grid1.DataBind();

            GridColumn column = Grid1.FindColumn(Grid1.SortColumn);
            BindGridWithSort(column.SortField, Grid1.SortDirection);
        }


        private void BindGridWithSort(string sortField, string sortDirection)
        {
            DataTable table = GetDataTable();

            DataView view1 = table.DefaultView;
            view1.Sort = String.Format("{0} {1}", sortField, sortDirection);

            Grid1.DataSource = view1;
            Grid1.DataBind();
        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }



        protected void Grid1_Sort(object sender, ExtAspNet.GridSortEventArgs e)
        {
            BindGridWithSort(e.SortField, e.SortDirection);
        }

        #endregion

    }
}
