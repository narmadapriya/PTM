using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.Text;

namespace parent_login.parent
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string apiUrl = "http://assistservice.iappsforme.com/api/student/students/123456";
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl);

                //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                student lstProduct = serializer.Deserialize<student>(json);
                //Binding gridview from dynamic object  
                lblStudName.Text = lstProduct.StudName;
                lblClass.Text = lstProduct.Class;
                lblSection.Text = lstProduct.Section;
                lblRollNumber.Text = lstProduct.RollNumber;
            }
        }
        protected void btnredirect_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("par_request form.aspx");
            string apiUrl = "http://assistservice.iappsforme.com/api/PTM/request/123456";
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
    
    

}

