<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
      Application["AllUsersList"] = new List<User>();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
      /*  User auser = new User();
        SqlCommand cmd = new SqlCommand(@"SELECT * from BikkinaV_WADfl15_Userinfo", conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows) 
        {
            while (dr.Read())
            {
                auser.EmailAddress =(string) dr.GetValue(0);
                auser.Name = (string)dr.GetValue(1);
                auser.AddressLine1 = (string)dr.GetValue(2);
                auser.AddressLine2 = (string)dr.GetValue(3);
                auser.City = (string)dr.GetValue(4);
                auser.Zip = (string)dr.GetValue(5);
                auser.State = (string)dr.GetValue(6);
                auser.Password = (string)dr.GetValue(7);
                SqlCommand cmd1 = new SqlCommand(@"select isbnNumber,dateSold from
                                                  BikkinaV_WADfl15_userinfo join BikkinaV_WADfl15_Transactions
                                                  on  BikkinaV_WADfl15_userinfo.emailAddress=BikkinaV_WADfl15_Transactions.emailAddress");
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if(dr1.HasRows)
                {
                    while(dr1.Read())
                    {
                        
                    }
                }
            } 
        }
        dr.Close();*/
        conn.Open();
        SqlCommand cmd = new SqlCommand(@"SELECT ISBN FROM BikkinaV_WADfl15_BookInfo", conn);
      
        SqlDataReader dr = cmd.ExecuteReader();
        string[] A = new string[10];
        string[] B = new string[10];
        string[] C = new string[10];
        string[] D = new string[10];
        int i=0;
        while (dr.Read())
        {
        A[i]=  dr["ISBN"].ToString() ;
        i++;
        }
        Application["ISBN"] = A;
        dr.Close();
        A = null;
        i = 0;
       cmd = new SqlCommand(@"SELECT Title FROM BikkinaV_WADfl15_BookInfo", conn);
       dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            B[i] = dr["Title"].ToString();
            i++; 
        }
        Application["Title"] = B;
        dr.Close(); 
        cmd = new SqlCommand(@"SELECT Author FROM BikkinaV_WADfl15_BookInfo", conn);
        dr = cmd.ExecuteReader();
        i = 0;
        while (dr.Read())
        {
            C[i] = dr["Author"].ToString();
            i++;
        }
        Application["Author"] = C;
        dr.Close();
        i = 0;
        cmd = new SqlCommand(@"SELECT BuyPrice FROM BikkinaV_WADfl15_BookInfo", conn);
        dr = cmd.ExecuteReader();
        while (dr.Read()) 
        {
            D[i] = dr["BuyPrice"].ToString();
            i++;
        }
        Application["BuyPrice"] = D;
        dr.Close();
        conn.Close();
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    } 
         
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
         
    }

    void Session_Start(object sender, EventArgs e)  
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
