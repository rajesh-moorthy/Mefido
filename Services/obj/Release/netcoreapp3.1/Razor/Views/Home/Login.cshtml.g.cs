#pragma checksum "D:\Projects\Mefido\Services\Views\Home\Login.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e1c674e0b76cbfe5a8ea9e93dc215f6f5a1cedab"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Login), @"mvc.1.0.view", @"/Views/Home/Login.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Projects\Mefido\Services\Views\_ViewImports.cshtml"
using MefidoServices;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Projects\Mefido\Services\Views\_ViewImports.cshtml"
using MefidoServices.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e1c674e0b76cbfe5a8ea9e93dc215f6f5a1cedab", @"/Views/Home/Login.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"df5283dbe12b93a8365987ae38ce6247c00f4b70", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Login : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<MefidoServices.Models.UserAuthentication>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
  
    ViewBag.Title = "Login";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h2>Login</h2>\r\n\r\n");
#nullable restore
#line 8 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
 using (Html.BeginForm("Login", "Home", FormMethod.Post))
{
    //this  is for create form tag
    

#line default
#line hidden
#nullable disable
#nullable restore
#line 11 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
Write(Html.AntiForgeryToken());

#line default
#line hidden
#nullable disable
#nullable restore
#line 11 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
                             // this is for prevent CSRF attack
    

#line default
#line hidden
#nullable disable
#nullable restore
#line 12 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
Write(Html.ValidationSummary(true));

#line default
#line hidden
#nullable disable
#nullable restore
#line 12 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
                                 
    if (@ViewBag.Message != null)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div style=\"border: 1px solid red\">\r\n            ");
#nullable restore
#line 16 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
       Write(ViewBag.Message);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </div>\r\n");
#nullable restore
#line 18 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("    <table>\r\n        <tr>\r\n            <td>");
#nullable restore
#line 21 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
           Write(Html.LabelFor(a => a.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n            <td>");
#nullable restore
#line 22 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
           Write(Html.TextBoxFor(a => a.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n            <td>");
#nullable restore
#line 23 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
           Write(Html.ValidationMessageFor(a => a.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                ");
#nullable restore
#line 27 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
           Write(Html.LabelFor(a => a.Password));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 30 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
           Write(Html.PasswordFor(a => a.Password));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 33 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
           Write(Html.ValidationMessageFor(a => a.Password));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td></td>\r\n            <td>\r\n                <input type=\"submit\" value=\"Login\" />\r\n            </td>\r\n            <td></td>\r\n        </tr>\r\n    </table>\r\n");
#nullable restore
#line 44 "D:\Projects\Mefido\Services\Views\Home\Login.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<MefidoServices.Models.UserAuthentication> Html { get; private set; }
    }
}
#pragma warning restore 1591
