using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.Text;

namespace parent_login
{
    public partial class parent_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // parentlogin obj = new parentlogin();
            // obj.username = TextBox1.Text;
            // obj.password = TextBox2.Text;
        }

        protected void btnredirect_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("par_request form.aspx");
            string apiUrl = "http://assistservice.iappsforme.com/api/student/students/123456";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);

            //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            student lstProduct = serializer.Deserialize<student>(json);
            //Binding gridview from dynamic object   

        }
    }

    public class student
    {
        public string StudId { get; set; }
        public string StudName { get; set; }
        public string Class { get; set; }
        public string RollNumber { get; set; }
        public string RegistrationNumber { get; set; }
        public string Section { get; set; }
        public string PhotoPath { get; set; }
        public string EmailID { get; set; }
        public string MobileNumber { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public string Address { get; set; }
      
        public string TeacherID { get; set; }
        public string Description { get; set; }
        public string Status { get; set; }
        public string RequestDate { get; set; }

    }
}