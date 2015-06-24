The WeCrowd API is an API written in Ruby on Rails for the existing wecrowd-rails repository, which contains the source code for the WeCrowd website. The API currently has endpoints for viewing all campaigns, viewing a specific campaign, donating to a specific campaign, a WeCrowd user logging in, and a WeCrowd user viewing his/her respective campaigns upon logging in. The API was created for the purpose of a client being able to easily interact with the WeCrowd server. A specific case of this interaction will be in the mobile demo of WeCrowd (currently in progress).

The specifics of the endpoints are as follows:

**API endpoint: /api/campaigns  (This is a HTTP GET request).**

No parameters needed for this API call

**Response Object:**

The response object will be an array of campaign objects which contain the campaign name and goal.



| Response | Type | Description |
| --- | --- | --- |
| campaign\_id | Integer | The unique ID of the campaign |
| campaign\_name | String | The name of the campaign |
| campaign\_goal | Integer | How much money the campaign host/merchant  is trying to raise |

Error codes:

100: no\_campaigns\_error: "There are no campaigns available."

502: only\_get\_and\_post\_error: "The only HTTP requests that are associated with this API endpoint are GET and POST. Please try again with the appropriate HTTP request configuration."

503: cannot\_edit\_error: "Please make edits through the website. This API endpoint does not allow for edits."

504: cannot\_create\_campaigns\_error: "Please create a new campaign through the website. This API endpoint does not allow for creating campaigns."



**API endpoint: /api/campaigns (This is a HTTP Post request)**

Parameters:

| Parameter | Required | Type | Description |
| --- | --- | --- | --- |
| campaign\_id | Yes | Integer | The unique ID of the campaign |

Example:

 {

  "campaign\_id" : 1234567

 }

**Response:**

| Response | Type | Description |
| --- | --- | --- |
| campaign\_id | Integer | The unique ID of the campaign |
| campaign\_name | String | The name of the campaign |
| campaign\_description | String | The description of the campaign (cause, purpose, etc.) |
| campaign\_goal | Integer | How much money the campaign host/merchant  is trying to raise |
| campaign\_progress | Integer | How much of the goal has been met so far |

Error codes:

101: campaign\_does\_not\_exist\_error: "There are no campaigns that exist corresponding to the campaign ID provided. Please try a different campaign ID"

502: only\_get\_and\_post\_error: "The only HTTP requests that are associated with this API endpoint are GET and POST. Please try again with the appropriate HTTP request configuration."

503: cannot\_edit\_error: "Please make edits through the website. This API endpoint does not allow for edits."

504: cannot\_create\_campaigns\_error: "Please create a new campaign through the website. This API endpoint does not allow for creating campaigns."

**API Endpoint: /api/donate (This is a HTTP POST request)**

Parameters:

| Parameter | Required | Type | Description |
| --- | --- | --- | --- |
| campaign\_id | Yes | Integer | The unique ID of the campaign |
| user\_name | Yes | String | The name of the payer |
| user\_email | Yes | String | The payer's e-mail address |
| credit\_card\_id | Yes | String | Payer's credit card token |
| amount | Yes | Integer | The amount the payer wants to donate to the campaign |

Example:

{

  "campaign\_id" : 1234567,

  "amount": 200.00,

  "name": "Bob Smith",

  "email": "test@example.com",

  "cc\_token": "0a1b2c3d4e"

 }

**Response:**



| Response | Type | Description |
| --- | --- | --- |
| checkout\_id | Integer | The unique ID (from the checkout/create call) |
|   |   |   |

Error codes:

200: user\_invalid\_error:  "This user is invalid. Please try specifying a different user name and email address."

300:  payment\_invalid\_error: "The payment was unable to be processed due to invalid information."

301: wepay\_checkout\_create\_error: "There was an error with the WePay /checkout/create call."

302: donation\_amount\_error: "The donation amount must be greater than 1. Please enter in a different amount to donate."

501: only\_post\_error: "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."

**Merchant Side**

The merchant should be able to login to their WeCrowd account. They should be able to view their campaigns (that they have posted). They should be able to view the details of a campaign they have selected. Finally, the merchant should be able to charge a card for their campaign.

**API Endpoint: /api/login (This is a HTTP POST request)**

Parameters:

| Parameter | Required | Type | Description |
| --- | --- | --- | --- |
| user\_email | Yes | String | User's email address |
| password | Yes | String | User's password |

Example:

{

 "email": "test@example.com",

 "password": "testpassword123"

}

**Response:**



| Response | Type | Description |
| --- | --- | --- |
| user\_id | Integer | The unique ID corresponding to the user |
| token | String | The token returned, necessary for api/users call |

Error codes:

400: password\_auth\_error: "The user could not be authenticated with the given user email and password. Please try again."

501: only\_post\_error: "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."

**API Endpoint: /api/users (This is a HTTP POST request)**

Parameters:

| Parameter | Required | Type | Description |
| --- | --- | --- | --- |
| user\_id | Yes | Integer | The unique ID corresponding to the user |
| token | Yes | String | The token the user receives after logging into WeCrowd |

Example:

{

 "user\_id" : 1234342,

 "token": "1a3v56x7p89ac"

}

**Response:**

The response object will be an array of campaign objects that are associated with this user/merchant. Each campaign object will have its campaign ID, campaign name, campaign goal, and campaign progress (how much of goal has been so far). The following contains the fields of one of those arbitrary campaign objects:



| Response | Type | Description |
| --- | --- | --- |
| campaign\_id | Integer | The unique ID of the campaign |
| campaign\_name | String | The name of the campaign |
| campaign\_description | String | The campaign description |
| campaign\_goal | Integer | How much money the campaign host/merchant  is trying to raise |
| campaign\_progress | Integer | How much of the goal has been met so far |

Error codes:

401: token\_auth\_error: "The user could not be authenticated with the given user ID and token. Please try again."

501: only\_post\_error: "The only HTTP request that is associated with this API endpoint is POST. Please try again with the appropriate HTTP request configuration."