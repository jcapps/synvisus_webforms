<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--  'Simple implementation of slideshow'
    <script type="text/javascript">
        var image1 = new Image()
        image1.src = "Option21.png"
        var image2 = new Image()
        image2.src = "Option22.png"
        var image3 = new Image()
        image3.src = "Option23.png"

        var step = 1
        var photo
        function changepicture() {
            photo = document.images.banner
            photo.src = eval("image" + step + ".src")
            if (step < 3)
                step++
            else
                step = 1
            setTimeout("changepicture()", 2000)
        }
    </script>
    -->

    <div class="banner-field">
        <img src="../Pictures/OwlBanner.png" alt="Gallery photo" id="banner" />
        <!-- (Part of slideshow implementation) -->
        <!--<script id="slides">changepicture()</script>-->
    </div>
    
    <div class="circle-block" id="find-out"></div>

    <p class="descript-p" style="margin-top: 60px">
        <b style="font-size: 28px">Synvisus</b> is a provider of business-to-business 
        consulting and custom software development services. We specialize in using VBA 
        and the .NET Framework to integrate powerful forecasting and analytics 
        capabilities into the office productivity software our clients use on a daily 
        basis. Compared against enterprise-grade alternatives, our custom-built tools 
        are easier to use and more affordable.
        <a runat="server" class="link" href="~/Demos?title=demos"><u>Watch a demo</u></a> 
        or click on the links below to find out more about what we do.
    </p>

    <div class="circle-blocks-row">
        <ul class="columns">
            <li>
                <a class="circle-block" runat="server" title="What We Do" href="~/What We Do#Forecasting Support?title=what">
                    <span class="link-spanner"></span>
                    <p class="circle-block-words">Forecasting Support</p>
                    <p class="circle-block-arrow">&#8594;</p>
                </a>
            </li>
            <li>
                <a class="circle-block" runat="server" title="What We Do" href="~/What We Do#Software Development?title=what">
                    <span class="link-spanner"></span>
                    <p class="circle-block-words">Software Development</p>
                    <p class="circle-block-arrow">&#8594;</p>
                </a>
            </li>
            <li>
                <a class="circle-block" runat="server" title="What We Do" href="~/What We Do#Operations Management?title=what">
                    <span class="link-spanner"></span>
                    <p class="circle-block-words">Operations Management</p>
                    <p class="circle-block-arrow">&#8594;</p>
                </a>
            </li>
        </ul>
    </div>

</asp:Content>
