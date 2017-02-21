<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="marker">
    <!--<img src="../Pictures/SBA_logo_paragraph.png" alt="Paragraph Logo" class="parag-logo" />-->
    <h3><b>Contact Us</b></h3>
    </div>
    <p style="font-size: 20px">
        We encourage you to contact us with any inquiries or to set up a consultation.
    </p>
    <br />

    <h4><u>By Phone</u></h4>
    <p style="font-size:20px">(314) 384-6204</p>
    <br />

    <h4><u>By Mail</u></h4>
    <p style="font-size:20px">
        P.O. Box 410474<br />
        St. Louis, MO 63141
    </p>
    <br />
    
    <h4><u>By E-mail</u></h4>

    <!--<asp:ValidationSummary 
        runat="server" 
        CssClass="error-messages" 
        HeaderText="ERROR: " 
        DisplayMode="List" />-->
    <table>
        <tr><td><b>Name</b></td></tr>
        <tr><td><asp:Textbox ID="FirstName" runat="server" maxlength="25"/></td>
        </tr>
        <tr><td>First
                <asp:RequiredFieldValidator 
                    CssClass="error-messages" 
                    runat="server" 
                    ControlToValidate="FirstName" 
                    ErrorMessage="First name is required.">* First name is required.
                </asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Textbox ID="LastName" runat="server" maxlength="25"/></td></tr>
        <tr><td>Last
                <asp:RequiredFieldValidator 
                    CssClass="error-messages" 
                    runat="server" 
                    ControlToValidate="LastName" 
                    ErrorMessage="Last name is required.">* Last name is required.
                </asp:RequiredFieldValidator></td></tr>

        <tr><td><b>E-mail Address</b>
                <asp:RequiredFieldValidator 
                    CssClass="error-messages" 
                    runat="server" 
                    ControlToValidate="Email" 
                    ErrorMessage="E-mail is required.">* E-mail is required.
                </asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Textbox ID="Email" columns="20" runat="server" maxlength="50"/>
            <asp:RegularExpressionValidator 
                CssClass="error-messages" 
                runat="server" 
                ControlToValidate="Email" 
                ErrorMessage="Invalid E-mail" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /></td></tr>

        <tr><td><b>Message</b>
                <asp:RequiredFieldValidator 
                    CssClass="error-messages" 
                    runat="server" 
                    ControlToValidate="Body" 
                    ErrorMessage="A message is required.">* E-mail message is required.
                </asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Textbox ID="Body" TextMode="multiline" rows="8" columns="40" runat="server" />
            </td></tr>
        <tr><td><asp:Button id="sendButton" Text="Send" OnClick="SendButton_Click" runat="server" /></td></tr>
    </table>

</asp:Content>
