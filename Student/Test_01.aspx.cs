using System;

namespace TestApplication.Student
{
    public partial class Test_01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hfShowAlert.Value = "false";
            }
            else
            {
                if (hfShowAlert.Value == "true")
                {
                    alertMessage.Style["display"] = "block";
                }
                else
                {
                    alertMessage.Style["display"] = "none"; // Ensure the alert is hidden if hfShowAlert is false
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            hfShowAlert.Value = "true";
        }
    }
}
