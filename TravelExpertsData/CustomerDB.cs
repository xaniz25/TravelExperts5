using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TravelExpertsData
{
    /*
     * Victor Lantion
     * Purpose: Method to compare user input to database in the login form
     */
    public class CustomerDB
    {
        public static int GetCustomer(string username, string password)
        {
            SqlConnection connection = TravelExpertsDB.GetConnection();

            // query
            string sqlQuery = "SELECT COUNT(1) FROM Customers "
                + "WHERE CustUserName=@CustUserName "
                + " AND CustPassword=@CustPassword";

            SqlCommand sqlCommand = new SqlCommand(sqlQuery, connection);
            sqlCommand.Parameters.AddWithValue("@CustUserName", username);
            sqlCommand.Parameters.AddWithValue("@CustPassword", password);

            try
            {
                // open connection
                connection.Open();

                // execute the SELECT query
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                return count;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
        }
    }
}
