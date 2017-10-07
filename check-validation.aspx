<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height:550px;">
        <h3>Validate DOCTYPE in ASP.NET</h3>
        <p>Enter URL to validate. </p>
        <asp:TextBox ID="txtURL" runat="server" Width="400" Text=""></asp:TextBox>
        <asp:Button ID="btnSubmit" Text="Validate URL" runat="server" />
        <div style="height:50px;">
            <p>
                <asp:Label ID="lblURL" runat="server" Font-Bold="true" />
                <asp:Label ID="lblValid" runat="server" Font-Bold="true" />
            </p>
        </div>
    </div>
</asp:Content>