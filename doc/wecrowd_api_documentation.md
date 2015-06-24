Message-ID: <177384536.9193.1435183331136.JavaMail.confluence@ip-10-235-4-50.us-west-1.compute.internal>

Subject: Exported From Confluence

MIME-Version: 1.0

Content-Type: multipart/related;

 boundary="----=\_Part\_9192\_1549132452.1435183331134"

------=\_Part\_9192\_1549132452.1435183331134

Content-Type: text/html; charset=UTF-8

Content-Transfer-Encoding: quoted-printable

Content-Location: file:///C:/exported.html

<html xmlns:o=3D'urn:schemas-microsoft-com:office:office'

      xmlns:w=3D'urn:schemas-microsoft-com:office:word'

      xmlns:v=3D'urn:schemas-microsoft-com:vml'

      xmlns=3D'urn:w3-org-ns:HTML'>

<head>

    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8=

">

    <title>WeCrowd API</title>

    <!--[if gte mso 9]>

    <xml>

        <o:OfficeDocumentSettings>

            <o:TargetScreenSize>1024x640</o:TargetScreenSize>

            <o:PixelsPerInch>72</o:PixelsPerInch>

            <o:AllowPNG/>

        </o:OfficeDocumentSettings>

        <w:WordDocument>

            <w:View>Print</w:View>

            <w:Zoom>90</w:Zoom>

            <w:DoNotOptimizeForBrowser/>

        </w:WordDocument>

    </xml>

    <![endif]-->

    <style>

                <!--

        @page Section1 {

            size: 8.5in 11.0in;

            margin: 1.0in;

            mso-header-margin: .5in;

            mso-footer-margin: .5in;

            mso-paper-source: 0;

        }

        td {

            page-break-inside: avoid;

        }

        tr {

            page-break-after: avoid;

        }

        div.Section1 {

            page: Section1;

        }

        /\* Confluence print stylesheet. Common to all themes for print medi=

a \*/

/\* Full of !important until we improve batching for print CSS \*/

#main {

    padding-bottom: 1em !important; /\* The default padding of 6em is too mu=

ch for printouts \*/

}

body {

    font-family: Arial, Helvetica, FreeSans, sans-serif;

    font-size: 10pt;

    line-height: 1.2;

}

body, #full-height-container, #main, #page, #content, .has-personal-sidebar=

 #content {

    background: #fff    !important;

    color: #000         !important;

    border: 0           !important;

    width: 100%         !important;

    height: auto        !important;

    min-height: auto    !important;

    margin: 0           !important;

    padding: 0          !important;

    display: block      !important;

}

a, a:link, a:visited, a:focus, a:hover, a:active {

    color: #000;

}

#content h1,

#content h2,

#content h3,

#content h4,

#content h5,

#content h6 {

    font-family: Arial, Helvetica, FreeSans, sans-serif;

    page-break-after: avoid;

}

pre {

    font-family: Monaco, "Courier New", monospace;

}

#header,

.aui-header-inner,

#navigation,

#sidebar,

.sidebar,

#personal-info-sidebar,

.ia-fixed-sidebar,

.page-actions,

.navmenu,

.ajs-menu-bar,

.noprint,

.inline-control-link,

.inline-control-link a,

a.show-labels-editor,

.global-comment-actions,

.comment-actions,

.quick-comment-container,

#addcomment {

    display: none !important;

}

.comment .date::before {

    content: none !important; /\* remove middot for print view \*/

}

h1.pagetitle img {

    height: auto;

    width: auto;

}

.print-only {

    display: block;

}

#footer {

    position: relative !important; /\* CONF-17506 Place the footer at end of=

 the content \*/

    margin: 0;

    padding: 0;

    background: none;

    clear: both;

}

#poweredby {

    border-top: none;

    background: none;

}

#poweredby li.print-only {

    display: list-item;

    font-style: italic;

}

#poweredby li.noprint {

    display:none;

}

/\* no width controls in print \*/

.wiki-content .table-wrap,

.wiki-content p,

.panel .codeContent,

.panel .codeContent pre,

.image-wrap {

    overflow: visible !important;

}

/\* TODO - should this work? \*/

#children-section,

#comments-section .comment,

#comments-section .comment .comment-body,

#comments-section .comment .comment-content,

#comments-section .comment p {

    page-break-inside: avoid;

}

#page-children a {

    text-decoration: none;

}

/\*\*

 hide twixies

 the specificity here is a hack because print styles

 are getting loaded before the base styles. \*/

#comments-section.pageSection .section-header,

#comments-section.pageSection .section-title,

#children-section.pageSection .section-header,

#children-section.pageSection .section-title,

.children-show-hide {

    padding-left: 0;

    margin-left: 0;

}

.children-show-hide.icon {

    display: none;

}

/\* personal sidebar \*/

.has-personal-sidebar #content {

    margin-right: 0px;

}

.has-personal-sidebar #content .pageSection {

    margin-right: 0px;

}

-->

    </style>

</head>

<body>

    <h1>WeCrowd API</h1>

    <div class=3D"Section1">

        <p>The WeCrowd API is an API written in Ruby on Rails for the exist=

ing wecrowd-rails repository, which contains the source code for the WeCrow=

d website. The API currently has endpoints for viewing all campaigns, viewi=

ng a specific campaign, donating to a specific campaign, a WeCrowd user log=

ging in, and a WeCrowd user viewing his/her respective campaigns upon loggi=

ng in. The API was created for the purpose of a client being able to easily=

 interact with the WeCrowd server. A specific case of this interaction will=

 be in the mobile demo of WeCrowd (currently in progress). </p>

<p>The specifics of the endpoints are as follows:</p>

<p><strong><span style=3D"color: rgb(0,0,0);">API endpoint: </span><span st=

yle=3D"color: rgb(0,0,0);">/api/campaigns  (This is a HTTP GET request=

).</span></strong></p>

<p><span style=3D"color: rgb(0,0,0);">No parameters needed for this API cal=

l</span></p>

<p><strong><span style=3D"color: rgb(0,0,0);">Response Object:</span></stro=

ng></p>

<p><span style=3D"color: rgb(0,0,0);">The response object will be an array =

of campaign objects which contain the campaign name and goal.</span></p>

<p><span style=3D"color: rgb(0,0,0);"><br /></span></p>

<div style=3D"margin-left: 0.0pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Response</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_i=

d</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID of the campaign</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_n=

ame</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The name o=

f the campaign</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_g=

oal</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">How much m=

oney the campaign host/merchant  is trying to raise</span></p></td>

</tr>

</tbody>

</table>

</div>

<p>Error codes:</p>

<p>100: no\_campaigns\_error: &quot;There are no campaigns available.&quot;</=

p>

<p>502: only\_get\_and\_post\_error: &quot;The only HTTP requests that are asso=

ciated with this API endpoint are GET and POST. Please try again with the a=

ppropriate HTTP request configuration.&quot;</p>

<p>503: cannot\_edit\_error: &quot;Please make edits through the website. Thi=

s API endpoint does not allow for edits.&quot;</p>

<p>504: cannot\_create\_campaigns\_error: &quot;Please create a new campaign t=

hrough the website. This API endpoint does not allow for creating campaigns=

.&quot;</p>

<p> </p>

<p> </p>

</div>

<p><strong><span style=3D"color: rgb(0,0,0);">API endpoint: </span><span st=

yle=3D"color: rgb(0,0,0);">/api/campaigns (This is a HTTP Post request)</sp=

an></strong></p>

<p><span style=3D"color: rgb(0,0,0);">Parameters:</span></p>

<div style=3D"margin-left: 1.5pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Parameter<=

/span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Required</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_i=

d</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID of the campaign </span></p></td>

</tr>

</tbody>

</table>

</div>

<p> </p>

</div>

<p><span style=3D"color: rgb(0,0,0);">Example:</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">{</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);"> </span><span style=3D"color: rgb(0,0,0);">=E2=80=9Ccampaig=

n\_id=E2=80=9D : 1234567</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">}</span></p>

<p><span><span><br /></span></span></p>

<p><strong><span style=3D"color: rgb(0,0,0);">Response:</span></strong></p>

<div style=3D"margin-left: 0.0pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Response</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_i=

d</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID of the campaign</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_n=

ame</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The name o=

f the campaign</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_d=

escription</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String </s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The descri=

ption of the campaign (cause, purpose, etc.)</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_g=

oal</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">How much m=

oney the campaign host/merchant  is trying to raise</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_p=

rogress</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer </=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">How much o=

f the goal has been met so far</span></p></td>

</tr>

</tbody>

</table>

</div>

<p>Error codes:</p>

<p>101: campaign\_does\_not\_exist\_error: &quot;There are no campaigns that ex=

ist corresponding to the campaign ID provided. Please try a different campa=

ign ID&quot;</p>

<p>502: only\_get\_and\_post\_error: &quot;The only HTTP requests that are asso=

ciated with this API endpoint are GET and POST. Please try again with the a=

ppropriate HTTP request configuration.&quot;</p>

<p>503: cannot\_edit\_error: &quot;Please make edits through the website. Thi=

s API endpoint does not allow for edits.&quot;</p>

<p>504: cannot\_create\_campaigns\_error: &quot;Please create a new campaign t=

hrough the website. This API endpoint does not allow for creating campaigns=

.&quot;</p>

<p> </p>

</div>

<p><strong><span style=3D"color: rgb(0,0,0);">API Endpoint: </span><span st=

yle=3D"color: rgb(0,0,0);">/api/donate (This is a HTTP POST request)</span>=

</strong></p>

<p><span style=3D"color: rgb(0,0,0);">Parameters:</span></p>

<div style=3D"margin-left: 1.5pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Parameter<=

/span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Required</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_i=

d</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID of the campaign </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">user\_name<=

/span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The name o=

f the payer</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">user\_email=

</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The payer=

=E2=80=99s e-mail address</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">credit\_car=

d\_id</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String </s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Payer=E2=

=80=99s credit card token </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">amount</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The amount=

 the payer wants to donate to the campaign</span></p></td>

</tr>

</tbody>

</table>

</div>

<p> </p>

</div>

<p><span style=3D"color: rgb(0,0,0);">Example:</span></p>

<p><span style=3D"color: rgb(0,0,0);">{</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);"> </span><span style=3D"color: rgb(0,0,0);">=E2=80=9Ccampaig=

n\_id=E2=80=9D : 1234567,</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);"> </span><span style=3D"color: rgb(0,0,0);">=E2=80=9Camount=

=E2=80=9D: 200.00,</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);"> </span><span style=3D"color: rgb(0,0,0);">=E2=80=9Cname=E2=

=80=9D: =E2=80=9CBob Smith=E2=80=9D,</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);"> </span><span style=3D"color: rgb(0,0,0);">=E2=80=9Cemail=

=E2=80=9D: =E2=80=9C</span><a href=3D"mailto:test@example.com" class=3D"ext=

ernal-link" rel=3D"nofollow"><span style=3D"color: rgb(17,85,204);text-deco=

ration: underline;">test@example.com</span></a><span style=3D"color: rgb(0,=

0,0);">=E2=80=9D,</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);"> </span><span style=3D"color: rgb(0,0,0);">=E2=80=9Ccc\_toke=

n=E2=80=9D: =E2=80=9C0a1b2c3d4e=E2=80=9D</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">}</span></p>

<p><span><span><br /></span></span></p>

<p><strong><span style=3D"color: rgb(0,0,0);">Response:</span></strong></p>

<p> </p>

<div style=3D"margin-left: 0.0pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Response</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">checkout\_i=

d</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID (from the checkout/create call)</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"> </td>

<td class=3D"confluenceTd"> </td>

<td class=3D"confluenceTd"> </td>

</tr>

</tbody>

</table>

</div>

<p> </p>

<p>Error codes:</p>

<p>200: user\_invalid\_error:  &quot;This user is invalid. Please try sp=

ecifying a different user name and email address.&quot;</p>

<p>300:  payment\_invalid\_error: &quot;The payment was unable to be pro=

cessed due to invalid information.&quot;</p>

<p>301: wepay\_checkout\_create\_error: &quot;There was an error with the WePa=

y /checkout/create call.&quot;</p>

<p>302: donation\_amount\_error: &quot;The donation amount must be greater th=

an 1. Please enter in a different amount to donate.&quot;</p>

<p>501: only\_post\_error: &quot;The only HTTP request that is associated wit=

h this API endpoint is POST. Please try again with the appropriate HTTP req=

uest configuration.&quot;</p>

<p> </p>

</div>

<p><span><span><strong><span style=3D"color: rgb(0,0,0);">Merchant Side</sp=

an></strong></span></span></p>

<p><span style=3D"color: rgb(0,0,0);">The merchant should be able to login =

to their WeCrowd account. They should be able to view their campaigns (that=

 they have posted). They should be able to view the details of a campaign t=

hey have selected. Finally, the merchant should be able to charge a card fo=

r their campaign.</span></p>

<p><strong><span style=3D"color: rgb(0,0,0);">API Endpoint: </span><span st=

yle=3D"color: rgb(0,0,0);">/api/login (This is a HTTP POST request)</span><=

/strong></p>

<p><span style=3D"color: rgb(0,0,0);">Parameters:</span></p>

<div style=3D"margin-left: 1.5pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Parameter<=

/span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Required</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">user\_email=

</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">User=E2=80=

=99s email address </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">password</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String </s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">User=E2=80=

=99s password</span></p></td>

</tr>

</tbody>

</table>

</div>

<p> </p>

</div>

<p><span style=3D"color: rgb(0,0,0);">Example:</span></p>

<p><span style=3D"color: rgb(0,0,0);">{</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">=E2=80=9Cemail=E2=80=9D: =E2=80=9C</span><a href=3D"mailto:test@=

example.com" class=3D"external-link" rel=3D"nofollow"><span style=3D"color:=

 rgb(17,85,204);text-decoration: underline;">test@example.com</span></a><sp=

an style=3D"color: rgb(0,0,0);">=E2=80=9D,</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">=E2=80=9Cpassword=E2=80=9D: =E2=80=9Ctestpassword123=E2=80=9D</s=

pan></p>

<p><span style=3D"color: rgb(0,0,0);">}</span></p>

<p><span><span><br /></span></span></p>

<p><strong><span style=3D"color: rgb(0,0,0);">Response:</span></strong></p>

<p><strong><span style=3D"color: rgb(0,0,0);"><br /></span></strong></p>

<div style=3D"margin-left: 0.0pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Response</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">user\_id</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID corresponding to the user </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">token</spa=

n></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The token =

returned, necessary for api/users call</span></p></td>

</tr>

</tbody>

</table>

</div>

<p>Error codes:</p>

<p>400: password\_auth\_error: &quot;The user could not be authenticated with=

 the given user email and password. Please try again.&quot;</p>

<p>501: only\_post\_error: &quot;The only HTTP request that is associated wit=

h this API endpoint is POST. Please try again with the appropriate HTTP req=

uest configuration.&quot;</p>

</div>

<p><strong><span style=3D"color: rgb(0,0,0);">API Endpoint:</span><span sty=

le=3D"color: rgb(0,0,0);"> /api/users (This is a HTTP POST request)</span><=

/strong></p>

<p><span style=3D"color: rgb(0,0,0);">Parameters:</span></p>

<div style=3D"margin-left: 1.5pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Parameter<=

/span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Required</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">user\_id</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID corresponding to the user </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">token</spa=

n></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Yes</span>=

</p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The token =

the user receives after logging into WeCrowd</span></p></td>

</tr>

</tbody>

</table>

</div>

<p> </p>

</div>

<p><span style=3D"color: rgb(0,0,0);">Example:</span></p>

<p><span style=3D"color: rgb(0,0,0);">{</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">=E2=80=9Cuser\_id=E2=80=9D : 1234342,</span></p>

<p><span style=3D"color: rgb(0,0,0);"> </span><span style=3D"color: rg=

b(0,0,0);">=E2=80=9Ctoken=E2=80=9D: =E2=80=9C1a3v56x7p89ac=E2=80=9D</span><=

/p>

<p><span style=3D"color: rgb(0,0,0);">}</span></p>

<p><strong><span style=3D"color: rgb(0,0,0);">Response:</span></strong></p>

<p><span style=3D"color: rgb(0,0,0);">The response object will be an array =

of campaign objects that are associated with this user/merchant. Each campa=

ign object will have its campaign ID, campaign name, campaign goal, and cam=

paign progress (how much of goal has been so far). The following contains t=

he fields of one of those arbitrary campaign objects:</span></p>

<p><span><span><br /></span></span></p>

<div style=3D"margin-left: 0.0pt;">

<p> </p>

<div class=3D"table-wrap">

<table class=3D"confluenceTable">

<colgroup>

<col />

<col />

<col />

</colgroup>

<tbody>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Response</=

span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Type</span=

></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Descriptio=

n </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_i=

d</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The unique=

 ID of the campaign</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_n=

ame</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The name o=

f the campaign</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_d=

escription</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">String</sp=

an></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">The campai=

gn description </span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_g=

oal</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);"> How much =

money the campaign host/merchant  is trying to raise</span></p></td>

</tr>

<tr>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">campaign\_p=

rogress</span></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">Integer</s=

pan></p></td>

<td class=3D"confluenceTd"><p><span style=3D"color: rgb(0,0,0);">How much o=

f the goal has been met so far</span></p></td>

</tr>

</tbody>

</table>

</div>

<p>Error codes:</p>

<p>401: token\_auth\_error: &quot;The user could not be authenticated with th=

e given user ID and token. Please try again.&quot;</p>

</div>

<p><span>501: only\_post\_error: &quot;The only HTTP request that is associat=

ed with this API endpoint is POST. Please try again with the appropriate HT=

TP request configuration.&quot;<br /><br /><br /><br /><br /></span></p>

<p> </p>

<p> </p>

<p> </p>

    </div>

</body>

</html>

------=\_Part\_9192\_1549132452.1435183331134--