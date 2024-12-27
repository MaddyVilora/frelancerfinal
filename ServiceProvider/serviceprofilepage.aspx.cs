using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace freelancerfinal.ServiceProvider
{
    public partial class serviceprofilepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mydetailsedit.Visible = false;
            }
        }



        protected void mydetails_Command(object sender, CommandEventArgs e)
        {
            mydetailsedit.Visible = true;
            if (!string.IsNullOrEmpty(hfServiceRegisterId.Value))
            {
                // Retrieve the Service_Register_Id from the HiddenField
                int serviceRegisterId = Convert.ToInt32(hfServiceRegisterId.Value);

                // Retrieve and update the data in the database using the Service_Register_Id
                using (SqlConnection db_conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString()))
                {
                    db_conn.Open();
                    string selectQuery = "SELECT FirstName, MobileNo, EmailId FROM Serviceprovider_Register WHERE Service_Register_Id = @Service_Register_Id AND IsDeleted = 0";
                    using (SqlCommand command = new SqlCommand(selectQuery, db_conn))
                    {
                        command.Parameters.AddWithValue("@Service_Register_Id", serviceRegisterId);

                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            // Populate the fields with the current data
                            name.Text = reader["FirstName"].ToString();
                            mobile.Text = reader["MobileNo"].ToString();
                            email.Text = reader["EmailId"].ToString();
                        }
                        else
                        {
                            Response.Write("No data found for the provided ID.");
                        }
                    }
                }
            }
            else
            {
                Response.Write("Service Register ID is missing.");
            }
        }

        protected void updatebutton_Click(object sender, EventArgs e)

        {

            if (!string.IsNullOrEmpty(hfServiceRegisterId.Value))
            {
                int serviceRegisterId = Convert.ToInt32(hfServiceRegisterId.Value);

                // Update the database with the new data
                using (SqlConnection db_conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString()))
                {
                    db_conn.Open();
                    string updateQuery = @"UPDATE Serviceprovider_Register SET FirstName=@FirstName, MobileNo=@MobileNo, EmailID=@EmailID, ModifiedOn=GETDATE(), ModifiedBy=@ModifiedBy 
                                   WHERE Service_Register_Id=@Service_Register_Id AND IsDeleted=0";

                    using (SqlCommand commandUpdate = new SqlCommand(updateQuery, db_conn))
                    {
                        commandUpdate.Parameters.AddWithValue("@FirstName", name.Text);
                        commandUpdate.Parameters.AddWithValue("@MobileNo", mobile.Text);
                        commandUpdate.Parameters.AddWithValue("@EmailId", email.Text);
                        commandUpdate.Parameters.AddWithValue("@ModifiedBy", 0); // Set this appropriately
                        commandUpdate.Parameters.AddWithValue("@Service_Register_Id", serviceRegisterId); // Use the ID retrieved from HiddenField

                        try
                        {
                            int rowsAffected = commandUpdate.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                // Show success alert using SweetAlert
                                string updateScript = "Swal.fire({ " +
                                                      "title: 'SUCCESS!', " +
                                                      "text: 'DATA updated SUCCESSFULLY', " +
                                                      "icon: 'success', " +
                                                      "confirmButton : 'OK' " +
                                                      "});";
                                ClientScript.RegisterStartupScript(this.GetType(), "successAlert", updateScript, true);
                                mydetailsedit.Visible = false;
                            }
                            else
                            {
                                Response.Write("Failed to update data.");
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Error: " + ex.Message);
                        }
                    }
                }
            }
            else
            {
                Response.Write("Service Register ID is missing.");
            }
        }
    }
}