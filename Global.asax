<%@ Application Language="VB" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    Sub Application_Start(sender As Object, e As EventArgs)
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)

    End Sub
    
    Sub Session_Start(sender As Object, e As EventArgs)
        
        'Redirect mobile users to the mobile home page
        Dim Request As HttpRequest
        Request = HttpContext.Current.Request
        
        If Request.Browser.IsMobileDevice Then
            Dim path As String
            Dim isMobileView As Boolean
            path = Request.Url.PathAndQuery
            isMobileView = path.StartsWith("/Mobile/", StringComparison.OrdinalIgnoreCase)
            
            If Not isMobileView Then
                Dim newPath As String
                newPath = "~/Mobile/"
                
                'Could also add special logic to redirect from certain 
                'recognized pages to the mobile equivalents of those 
                'pages (where they exist). For example,
                'if (HttpContext.Current.Handler is UserRegistration)
                '  redirectTo = "~/Mobile/Register.aspx";
                
                Response.Redirect(newPath)
            End If
        End If
    End Sub
    
    'Public Overrides Function GetVaryByCustomString(context As HttpContext, custom As String) As String
    '    If String.Equals(custom, "isMobileDevice", StringComparison.OrdinalIgnoreCase) Then
    '        Return context.Request.Browser.IsMobileDevice.ToString()
    '    End If
        
    '    Return custom
    'End Function


</script>