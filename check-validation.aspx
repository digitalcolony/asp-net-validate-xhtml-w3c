<%@ Page Language="C#" MasterPageFile="~/Lab/lab.master" AutoEventWireup="true" CodeFile="check-validation.aspx.cs" Inherits="lab_xhtml_validator_check_validation" Title="Validate XHTML in ASP.NET | DigitalColony.com" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="height:550px;">
         <h3>Validate DOCTYPE in ASP.NET</h3> 
         <p>This lab sends a URL to the W3C validator.  If the page validates against the DOCTYPE it returns VALID.  Otherwise it returns INVALID. 
         Although this tool is less useful than going directly to the W3C Validator site, I was able to use this code to test over 1,000 pages at once and then 
         alert me to the pages that needed attention.  </p>
         <p>Enter URL to validate. </p>
        <asp:TextBox ID="txtURL" runat="server" Width="400" Text="http://michaelallensmith.com"></asp:TextBox>
        <asp:Button ID="btnSubmit" Text="Validate URL" runat="server" />
        <div style="height:50px;">
            <p><asp:Label ID="lblURL" runat="server" Font-Bold="true" />  <asp:Label ID="lblValid" runat="server" Font-Bold="true" /></p>
        </div>
        <h6><a href="http://digitalcolony.com/asp-net/validate-web-page-against-w3c-validator-in-net/">Validate Web Page Against W3C Validator in .NET</a></h6>
</div>
</asp:Content>

