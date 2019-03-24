using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.Text;

namespace parent_login.Teacher
{
    public partial class teacher_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string apiUrl = "http://assistservice.iappsforme.com/api/PTM/request/approve/222";
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