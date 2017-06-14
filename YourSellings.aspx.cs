using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YourSellings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User cuser = new User();
        cuser = (User)Session["currentuser"];
        TextBox1.Text = cuser.Name;
        TextBox2.Text = cuser.EmailAddress;
        int i;
        TableRow tRo = new TableRow();
        tRo.ForeColor=System.Drawing.ColorTranslator.FromHtml("#be1717");
        table1.Rows.Add(tRo);
        for (int j = 1; j <= 4;j++ )
        {
            TableCell tcel = new TableCell();
            if (j == 1)
                tcel.Text = "ISBN Number";
            else if (j == 2)
                tcel.Text = "Title";
            else if (j == 3)
                tcel.Text = "Date sold";
            else if (j == 4)
                tcel.Text = "Price";
            tRo.Cells.Add(tcel);
        }
        if (cuser.soldBooks!=null)
        {
            for (i = 1; i <= cuser.soldBooks.Length; i++)
            {
                TableRow tRow = new TableRow();
                table1.Rows.Add(tRow);
                for (int cellCtr = 1; cellCtr <= 4; cellCtr++)
                {
                    // Create a new cell and add it to the row.
                    TableCell tCell = new TableCell();
                    if (cellCtr == 1)
                        tCell.Text = cuser.soldBooks[i - 1].ISBNNumber;
                    else if (cellCtr == 2)
                        tCell.Text = cuser.soldBooks[i - 1].Title;
                    else if (cellCtr == 3)
                        tCell.Text = cuser.soldBooks[i - 1].Date;
                    else if (cellCtr == 4)
                        tCell.Text = cuser.soldBooks[i - 1].Price;

                    tRow.Cells.Add(tCell);
                }
            }
        }
    }
    protected void main_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");

    }
    protected void sell_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookDetail.aspx");
    }
}