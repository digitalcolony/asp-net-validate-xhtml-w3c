using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Xml;
using System.IO;

public partial class lab_xhtml_validator_check_validation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
        btnSubmit.Attributes.Add("onclick", "this.value='Validating...';this.disabled=true;" + Page.ClientScript.GetPostBackEventReference(btnSubmit, "").ToString());

        if (IsPostBack)
        {
            string url;
            url = txtURL.Text;
            if(IsPageValid(url))
            {
                lblValid.ForeColor = System.Drawing.Color.Green;
                lblValid.Text = "VALID";
            }
            else
            {
                lblValid.ForeColor = System.Drawing.Color.Red;
                lblValid.Text = "INVALID";
            }
            lblURL.Text = txtURL.Text;
        }       

    }

public bool IsPageValid(string url)
{        
    string validatorURL = "https://validator.w3.org/check?uri=";
    string checkURL = validatorURL + url;
    string validStatus = "Invalid";

    // create the request
    HttpWebRequest request = WebRequest.Create(checkURL) as HttpWebRequest;
    // instruct the server to return headers only
    request.Method = "HEAD";
    // make the connection
    request.UserAgent = "Code Sample Web Client";
    HttpWebResponse response = (HttpWebResponse)request.GetResponse();

    WebHeaderCollection headers = response.Headers;

    foreach (string key in headers.Keys)
    {
        if (key == "X-W3C-Validator-Status")
            validStatus = headers[key];
    }

    if (validStatus == "Valid")
    {
        return true;
    }
    else
    {
        return false;
    }
}
}
