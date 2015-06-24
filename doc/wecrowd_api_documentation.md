{\rtf1\ansi\ansicpg1252\cocoartf1347\cocoasubrtf570
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red0\green0\blue0;\red213\green213\blue213;
\red109\green109\blue109;\red16\green60\blue192;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl400

\f0\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'a0\
The WeCrowd API is an API written in Ruby on Rails for the existing wecrowd-rails repository, which contains the source code for the WeCrowd website. The API currently has endpoints for viewing all campaigns, viewing a specific campaign, donating to a specific campaign, a WeCrowd user logging in, and a WeCrowd user viewing his/her respective campaigns upon logging in. The API was created for the purpose of a client being able to easily interact with the WeCrowd server. A specific case of this interaction will be in the mobile demo of WeCrowd (currently in progress).\'a0\
The specifics of the endpoints are as follows:\
\
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 API endpoint: /api/campaigns \'a0(This is a HTTP GET request).
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 No parameters needed for this API call\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response Object:
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 The response object will be an array of campaign objects which contain the campaign name and goal.\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \uc0\u8232 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1780\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1780\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1780\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_name\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The name of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1780\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_goal\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 How much money the campaign host/merchant \'a0is trying to raise\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Error codes:\
100: no_campaigns_error: "There are no campaigns available."\
502: only_get_and_post_error: "The only HTTP requests that are associated with this API endpoint are GET and POST. Please try again with the appropriate HTTP request configuration."\
503: cannot_edit_error: "Please make edits through the website. This API endpoint does not allow for edits."\
504: cannot_create_campaigns_error: "Please create a new campaign through the website. This API endpoint does not allow for creating campaigns."\
\'a0\
\'a0\
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 API endpoint: /api/campaigns (This is a HTTP Post request)
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameters:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1380\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth3300\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameter\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Required\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1380\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth3300\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID of the campaign\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'a0\
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Example:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\{\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'a0\'93campaign_id\'94 : 1234567\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\}\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\uc0\u8232 \
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response:
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_name\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The name of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_description\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The description of the campaign (cause, purpose, etc.)\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_goal\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 How much money the campaign host/merchant \'a0is trying to raise\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_progress\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 How much of the goal has been met so far\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Error codes:\
101: campaign_does_not_exist_error: "There are no campaigns that exist corresponding to the campaign ID provided. Please try a different campaign ID"\
502: only_get_and_post_error: "The only HTTP requests that are associated with this API endpoint are GET and POST. Please try again with the appropriate HTTP request configuration."\
503: cannot_edit_error: "Please make edits through the website. This API endpoint does not allow for edits."\
504: cannot_create_campaigns_error: "Please create a new campaign through the website. This API endpoint does not allow for creating campaigns."\
\'a0\
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 API Endpoint: /api/donate (This is a HTTP POST request)
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameters:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5900\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameter\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Required\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5900\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5900\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 user_name\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The name of the payer\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5900\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 user_email\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The payer\'92s e-mail address\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5900\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 credit_card_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Payer\'92s credit card token\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5900\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 amount\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The amount the payer wants to donate to the campaign\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'a0\
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Example:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \{\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'a0\'93campaign_id\'94 : 1234567,\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'a0\'93amount\'94: 200.00,\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'a0\'93name\'94: \'93Bob Smith\'94,\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'a0\'93email\'94: \'93{\field{\*\fldinst{HYPERLINK "mailto:test@example.com"}}{\fldrslt \cf6 \expnd0\expndtw0\kerning0
\ul \ulc6 \outl0\strokewidth0 \strokec6 test@example.com}}\'94,\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'a0\'93cc_token\'94: \'930a1b2c3d4e\'94\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\}\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\uc0\u8232 \
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response:
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1300\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth4820\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1300\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth4820\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 checkout_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID (from the checkout/create call)\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1300\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth4820\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \'a0\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \'a0\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \'a0\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'a0\
Error codes:\
200: user_invalid_error: \'a0"This user is invalid. Please try specifying a different user name and email address."\
300: \'a0payment_invalid_error: "The payment was unable to be processed due to invalid information."\
301: wepay_checkout_create_error: "There was an error with the WePay /checkout/create call."\
302: donation_amount_error: "The donation amount must be greater than 1. Please enter in a different amount to donate."\
501: only_post_error: "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."\
\'a0\
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Merchant Side
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 The merchant should be able to login to their WeCrowd account. They should be able to view their campaigns (that they have posted). They should be able to view the details of a campaign they have selected. Finally, the merchant should be able to charge a card for their campaign.\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 API Endpoint: /api/login (This is a HTTP POST request)
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameters:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1180\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth640\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth2260\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameter\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Required\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1180\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth640\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth2260\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 user_email\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 User\'92s email address\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1180\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth640\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth2260\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 password\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 User\'92s password\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'a0\
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Example:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \{\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'93email\'94: \'93{\field{\*\fldinst{HYPERLINK "mailto:test@example.com"}}{\fldrslt \cf6 \expnd0\expndtw0\kerning0
\ul \ulc6 \outl0\strokewidth0 \strokec6 test@example.com}}\'94,\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'93password\'94: \'93testpassword123\'94\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \}\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\uc0\u8232 \
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response:
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \uc0\u8232 
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1100\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth5080\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1100\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth5080\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 user_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID corresponding to the user\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1100\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth5080\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 token\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The token returned, necessary for api/users call\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Error codes:\
400: password_auth_error: "The user could not be authenticated with the given user email and password. Please try again."\
501: only_post_error: "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."\
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 API Endpoint: /api/users (This is a HTTP POST request)
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameters:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1140\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Parameter\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Required\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1140\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 user_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID corresponding to the user\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth1140\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2160
\clvertalt \clshdrawnil \clwWidth980\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx4320
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx6480
\clvertalt \clshdrawnil \clwWidth5920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 token\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Yes\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The token the user receives after logging into WeCrowd\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \'a0\
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Example:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \{\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'93user_id\'94 : 1234342,\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \'a0\'93token\'94: \'931a3v56x7p89ac\'94\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 \}\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400

\b \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response:
\b0 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 The response object will be an array of campaign objects that are associated with this user/merchant. Each campaign object will have its campaign ID, campaign name, campaign goal, and campaign progress (how much of goal has been so far). The following contains the fields of one of those arbitrary campaign objects:\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\uc0\u8232 \
\'a0\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400

\fs24 \cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 Response\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Type\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_id\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The unique ID of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_name\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The name of the campaign\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_description\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 String\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 The campaign description\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_goal\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 How much money the campaign host/merchant \'a0is trying to raise\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \tamart200 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth2340\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx2880
\clvertalt \clshdrawnil \clwWidth760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx5760
\clvertalt \clshdrawnil \clwWidth6840\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf4 \clbrdrl\brdrs\brdrw20\brdrcf4 \clbrdrb\brdrs\brdrw20\brdrcf4 \clbrdrr\brdrs\brdrw20\brdrcf4 \clpadt140 \clpadl200 \clpadb140 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 campaign_progress\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 Integer\cell 
\pard\intbl\itap1\pardeftab720\sl400
\cf3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 How much of the goal has been met so far\cell \lastrow\row
\pard\pardeftab720\sl400

\fs28 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Error codes:\
401: token_auth_error: "The user could not be authenticated with the given user ID and token. Please try again."\
501: only_post_error: "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."\uc0\u8232 \u8232 \u8232 \u8232 \u8232 \
\'a0\
\'a0\
\'a0\
\'a0\
}