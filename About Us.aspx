<%@ Page Title="About Us" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About Us.aspx.vb" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="mission" class="marker">
        <!--<img src="../Pictures/SBA_logo_paragraph.png" alt="Paragraph Logo" class="parag-logo" />-->
        <h3><b>Mission Statement</b></h3>
        <p class="mission-paragraphs">
            We recognize that our success depends on providing you, our clients, 
            with an exceptional product in a timely and cost-effective manner. 
            Having decades of business ownership experience ourselves, we respect 
            your time and budget and will make every effort to fully understand 
            your needs and objectives. We are committed to delivering you a product 
            that achieves your objectives in a way that is smarter, faster, and 
            more economical than anything our competitors have to offer. We don't 
            want to meet your expectations; we want to exceed them.
        </p>
        <p class="mission-paragraphs">
            We value our relationship and view the opportunity to serve you to be a 
            privilege. We will always strive to be worthy of your trust. We consider  
            our commitment to, and reputation for, excellence, honesty, and integrity 
            to be our most valuable assets; if we provide you, our clients, with 
            outstanding personal service and exceptional results, we are confident 
            that our own success will naturally follow.
        </p>
    </div>

    <div id="proposition" class="marker">
        <!--<img src="../Pictures/SBA_logo_paragraph.png" alt="Paragraph Logo" class="parag-logo" />-->
        <h3><b>Value Proposition</b></h3>
    </div>

    <div id="proposition-container">
        <div id="about-left-p">
            <h3 style="text-align:left">Business Insights</h3>
            <p class="about-paragraphs">
                With extensive experience in a variety of industries, our consultants 
                bring a practical sensibility and industry-specific expertise to the 
                strategic challenges facing our clients. We understand that slick 
                software builds mean nothing unless applied in the context of a functional 
                organizational structure and a sound strategic vision.
            </p>
        </div>

        <div id="chevron-left"></div>

        <div id="circle">
            <h3 class="circle-elements" style="margin-top:25px"><b>Practical Solutions</b></h3>
            <p class="circle-elements">
                Relevant business analytics tools that realize rigorous best practices 
                in familiar software environments
            </p>
        </div>

        <div id="chevron-right"></div>

        <div  id="about-right-p">
            <h3 style="text-align:right">Technical Capabilities</h3>
            <p class="about-paragraphs">
                Business savvy does not have to come at the expense of technical proficiency. 
                Our developers bring state-of-the-art forecasting methodology and optimization 
                techniques to bear on the analytical challenges we help our clients overcome. 
                We understand that strategic vision is only as good as the analysis that drives it.
            </p>
        </div>
    </div>
</asp:Content>
