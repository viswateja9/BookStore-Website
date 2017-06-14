using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SoldBook
/// </summary>
public class SoldBook
{
	private string isbnNumber;
    private string title;
    private string soldDate;
    private string bprice;
    public string ISBNNumber 
    { 
        get { return isbnNumber; }
        set { isbnNumber = value; }
    }
    public string Title
    {
        get { return title; }
        set {title = value; }

    }
    public string Date
    {
        get { return soldDate; }
        set { soldDate = value; }

    }
    public string Price
    {
        get { return bprice; }
        set { bprice = value; }
    }
}