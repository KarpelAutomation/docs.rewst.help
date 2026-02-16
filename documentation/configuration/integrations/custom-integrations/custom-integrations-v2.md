# Custom integrations: V2

{% hint style="info" %}
For more on custom integrations in Rewst, see our introductory documentation [here](https://docs.rewst.help/documentation/integrations/custom-integrations). Custom integrations can only be enabled by users with the Rewst Admin role.&#x20;

Note that this is V2 of our custom integrations feature. Customers who previously installed V1 of custom integrations may find that setup documentation [here](https://docs.rewst.help/documentation/integrations/custom-integrations/integration-setup).  V1 of custom integrations is deprecated and should no longer be used. Documentation for V1 remains to assist existing customers with the migration to the V2 method. If you have questions about migrating from V1 to V2, please reach out to Rewst [support](../../../../support-and-community/roc-support/).&#x20;
{% endhint %}

## Two options for adding a custom integration

### Build a new integration



{% columns %}
{% column %}
This is a completely manual, built-from-scratch integration where you'll add and configure each API endpoint, the basis of Rewst actions, one at a time. This option is more time-consuming than option two. You may want to use this advanced option if:

* You're building your own API in the backend
* Your partnered app has an  undocumented API
* You only need a very limited selection of operations
{% endcolumn %}

{% column %}
<figure><img src="../../../../.gitbook/assets/image (1) (5) (1).png" alt="" width="184"><figcaption></figcaption></figure>
{% endcolumn %}
{% endcolumns %}

### Upload an OpenAPI JSON file

{% columns %}
{% column %}
This is the preferred method, if possible, and allows you to import all endpoints from your desired API at once. Not every app you wish to integrate will have an OpenAPI file available. If they do, you can generally retrieve this file from that vendor's public API documentation, or by reaching out to the vendor and asking for the file. If the file is only available as non-compliant YAML, you'll need to convert it to JSON before uploading. Compliant YAML may be imported as-is and will automatically be converted to JSON by Rewst.
{% endcolumn %}

{% column %}
<figure><img src="../../../../.gitbook/assets/image (2) (9).png" alt="" width="182"><figcaption></figcaption></figure>
{% endcolumn %}
{% endcolumns %}

{% hint style="success" %}
Occasionally, some vendors may use [Swagger](https://swagger.io/docs/specification/v2_0/what-is-swagger/) for their API documentation. If this is the case, you can try the following trick to see if their file is available via Swagger.

1. Navigate to the API documentation URL for your desired vendor. For example formatting, consider `https://api-docs.pedroaviary.com/` .
2. Enter swagger.json a the end of the URL. For example, `https://api-docs.pedroaviary.com/swagger.json` .
3. This will retrieve the file if one exists. Right click on the page, then **Save as**. The JSON file will download to your chosen location.
4. Your Swagger file will need to be cleaned up before it can be imported into Rewst. We recommend the tool at [https://schemadoctor.com/](https://schemadoctor.com/) for larger schemas that are too large for Rewst, or its older counterpart [https://schemadoctor.com/archive/](https://schemadoctor.com/archive/) for broader cleaning on smaller schemas.&#x20;
{% endhint %}

{% hint style="warning" %}
For either option, you'll also need to know the pagination and authorization specifics of the app you wish to integrate with Rewst. These are separate pieces of information that will not be included in OpenAPI or Swagger files, but which can frequently be found in their API documentation. Our instructions will guide you through how to choose pagination and authorization settings, but we also recommend confirming via your vendor if possible.
{% endhint %}

## Add a custom integration in Rewst

### Enable custom integrations in your Rewst instance

{% hint style="info" %}
Custom integrations can only be enabled by users with the Rewst Admin role.&#x20;
{% endhint %}

1. Navigate to **Settings > Feature Preview** in the right side menu of your Rewst platform.
2. Click **Custom Integrations V2.**
3. Click **Enable**. A green confirmation message will appear at the top of your screen.
4. Whenever you wish, you may click **Disable** to turn off the custom integrations functionality for your instance, from this same menu.

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-10-23 at 4.57.06 PM.png" alt=""><figcaption><p>The custom integrations screen</p></figcaption></figure>

### Choose the type of custom integration

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Click <img src="../../../../.gitbook/assets/Screenshot 2026-02-05 at 4.52.46 PM.png" alt="" data-size="line">.&#x20;
   1. Click **New Integration** to build your integration from the beginning.
   2. Alternatively, click **Add OpenAPI Integration** if you have an OpenAPI JSON file.

<figure><img src="../../../../.gitbook/assets/custom-integrations-step4.png" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Note that Rewst will automatically convert Swagger, which meets OpenAPI 2.0 standards, to OpenAPI 3.0, if necessary. Then, Rewst will validate the API specification using the vacuum linting tool. If your file is compliant YAML, Rewst will convert it to JSON. This conversion does not negate your need to clean Swagger files before import.
{% endhint %}

## Set up your custom integration

{% hint style="info" %}
For either method of custom integration, you'll need an SVG file of the logo of the tool you wish to integrate with Rewst. Have this file on hand before starting the setup process.
{% endhint %}

### To add OpenAPI integration

1. Drag and drop your OpenAPI file into the upload box.&#x20;
2. Click **Submit**.&#x20;
3. Once you upload your file and there are no validation errors, you can start configuring your integration.
4. If your actions are available, you'll see a new [organization mapping](https://docs.rewst.help/documentation/configuration/integrations#what-is-organization-mapping) menu appear at the bottom of the screen. Note that organization mapping will only appear if a paginated endpoint is in the integration. OpenAPI spec might not have the desired endpoint marked as paginated. In this case, you'll need to manually tag it as such when configuring the actions.

<figure><img src="../../../../.gitbook/assets/custom-integrations-step5.png" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Examples of OpenAPI files for common custom integrations

[Zoho](https://www.zoho.com/creator/help/api/v2/openapi-specification)

[Zendesk](https://developer.zendesk.com/help_center/oas.yaml)

[Syncro](https://api-docs.syncromsp.com/swagger.json)

[Altera](https://docs.altera.co/openapi/quickstart)
{% endhint %}

### To build a new custom integration from the beginning

1. Add a **Name** for your integration. Note that this name is what will show up as the accordion menu header for your integration's list of actions in the Workflow Builder. It shouldn't contain special characters.
2. Upload an **Icon** via an SVG file. Other image file formats will not upload into Rewst. This icon will represent your custom integration across Rewst in the integration tile, actions menu, etc.&#x20;

<br>

<figure><img src="../../../../.gitbook/assets/Screenshot 2026-02-05 at 4.55.36 PM.png" alt="" width="563"><figcaption></figcaption></figure>

4. Add a **Description**.
5. Click **Next**.
6. Enter the **hostname** of the API without https:// at the beginning of your URL. For example, API.example.com.
7. Choose an authentication method from the drop-down selector. Rewst supports:
   1. API Key - this is the most common and simplest method, which should chosen if:
      1. The API provides a single static key or token
      2. &#x20;Requests include a header like `Authorization` or `X-API-Key`
      3. Tokens do not expire or refresh automatically
      4. Vendor documentation mentions API key, token, or bearer token
   2. Basic Auth - this is simple, less secure, and usually avoided if other options exist, but should be chosen if:
      1. The API requires a username and password
      2. Documentation explicitly mentions `basic authentication`
      3. The system is legacy, internal, or appliance-based
      4. Credentials don't rotate automatically
   3. OAuth 2.0 :- this is common for many modern SaaS platforms and has several sub-options
      1. OAuth 2.0 - choose if:
         1. The API requires user login or consent or server-to-server tokens
         2. Tokens expire and refresh automatically
         3. Vendor documentation mentions authorization code, client credentials, access tokens or refresh tokens
      2. OAuth 2.0 Authorization code - this is used when human authorization is required and should be chosen if:
         1. Users must log in or approve access
         2. The API mentions an authorization or consent screen
         3. An `authorization` URL is provided
         4. The integration acts on behalf of a user or tenant
      3. OAuth 2.0 Client Credentials - this is used for automated backend integrations, and should be chosen if:
         1. No user login is required
         2. The integration is server-to-server or machine-to-machine
         3. Only a token endpoint is mentioned
         4. The API references service accounts or application access
   4. No Auth - this is rare and should only be chosen if:
      1. The API explicitly states authentication is not required
      2. Rewst does not support your authentication method - in this case you may be able to use a workflow to pull details into Rewst
      3. No headers, tokens, or credentials are mentioned
      4. Endpoints are read-only and public

![Choose your authentication method, then click on Next](https://images.tango.us/workflows/7bbe9055-9c43-4e0d-9aa1-bee39c08cbb8/steps/c317aa59-3ed0-416e-8f8b-a402dc21e454/856e953b-9f8f-47f7-9832-edb1448511b6.png?mark-x=1297\&mark-y=573\&m64=aHR0cHM6Ly9pbWFnZXMudGFuZ28udXMvc3RhdGljL2JsYW5rLnBuZz9tYXNrPWNvcm5lcnMmYm9yZGVyPTMlMkNGRjc0NDImdz03MiZoPTQ1JmZpdD1jcm9wJmNvcm5lci1yYWRpdXM9MTA%3D)

7. Click **Next**.
8. Fill out the authentication defaults if prompted. Certain authentication methods won't require defaults, but others will. The following fields will be used as the default values for all configurations created for this integration. Don't include any sensitive information if you plan to share this integration with other users, or don't want to use these credentials when installing the integration in your parent organization or child organizations.
   1. For API Key:
      1. **API Key Header Name -** When authentication method is set to API Key, this is the name of the header that will be used to send the API key.
      2. **API Key Preamble -** When authentication method is set to API Key, this is the word that will be sent before the API key. ie. "Bearer \[TOKEN]" for bearer token authentication. Leave blank if not necessary.
      3. **Extra Request Headers -** These are extra headers that will be sent with every request to the API. This is optional but may be required for certain APIs. Please consult vendor documentation for more details.
   2. For OAuth 2.0:
      1. **OAuth Grant Type** - When authentication method is set to OAuth 2.0, this is the grant type that will be used to request an access token.
      2. **OAuth Access Token Scheme** - When authentication method is set to OAuth 2.0, this is the scheme that will be used to send the access token in Authorization headers.
      3. **OAuth Authorization Code URL** - When authentication method is set to OAuth 2.0, this is the URL that will be used to request an authorization code.
      4. **OAuth Access Token URL** - When authentication method is set to OAuth 2.0, this is the URL that will be used to request an access token.
      5. **OAuth Token Expiration Key** - When authentication method is set to OAuth 2.0, this is the key that access token expiration time is returned from the API as in the response from token requests.
      6. **OAuth Token Key** - When authentication method is set to OAuth 2.0, this is the key that access tokens are returned from the API as in the response from token requests.
      7. **OAuth Token Request Content Type** - When authentication method is set to OAuth 2.0, this is value that will be used for the Content-Type header when requesting an access token. This should be application/x-www-form-urlencoded for most APIs.
      8. **OAuth Token Request Method** - When authentication method is set to OAuth 2.0, this is the HTTP method that will be used to request an access token. This should be POST for most APIs.
      9. **OAuth Scope** - When authentication method is set to OAuth 2.0, this is the scope that will be used to request an access token. Leave blank to use the default scope.
      10. **OAuth Token Exchange Requires Basic Auth Headers** - Check this box if the Client ID and Secret should be sent as Basic Auth headers when exchanging an authorization code for an access token. This is required for some APIs, but not others - consult API documentation for more details.
      11. **OAuth Refresh Token Key** - When authentication method is set to OAuth 2.0, this is the key that refresh tokens are returned from the API as in the response from token requests.
      12. **Include Client Config on Refresh** - Some APIs do not allow additional parameters to be sent when refreshing an access token. If this is the case, keep this box unchecked.
      13. **Include Redirect URI on Refresh** - Some APIs do not allow the redirect URI to be sent when refreshing an access token. If this is the case, keep this box unchecked.
      14. **Token Refresh Strategy** - Strategy for refreshing OAuth tokens. 'Automatic' uses actual expiration times from the OAuth provider, 'Custom Interval' uses a fixed interval.
      15. **Custom Refresh Interval (seconds)** - When using Custom Interval strategy, refresh tokens at this fixed interval regardless of expiration time. Range 300-86400 seconds: 5 minutes to 24 hours.
      16. **Refresh Buffer (seconds)** - When using Automatic strategy, refresh tokens this many seconds before they expire. Range 30-3600 seconds: 30 seconds to 1 hour.
      17. **OAuth Authorization Extra Params** - These are extra parameters that will be sent with the authorization request. This is optional but may be required for certain APIs. Please consult vendor documentation for more details.
      18. **Extra Request Headers** - These are extra headers that will be sent with every request to the API. This is optional but may be required for certain APIs. Please consult vendor documentation for more details.
9. Click **Next**.
10. Select your API **Pagination Type** from the drop-down:
    1. **No pagination** - this is best for small, fixed datasets only, and should be chosen if:
       1. The endpoint always returns a small, complete dataset
       2. The response is a single list with no paging metadata
       3. The API documentation from the vendor doesn't mention pages, limits, cursors or links
    2. **Index** - this is common in older or SQL-backed APIs and should be chosen if:&#x20;
       1. The API uses an offset-style parameter
       2. Requests look like `offset=0&limit=50` or `start=100`
       3. Documentation mentions offset, start, skip, or from
       4. You move through results by increasing a number
    3. **Page** - this is common in traditional REST APIs and should be chosen if:&#x20;
       1. The API uses page numbers
       2. Requests look like `page=1&page_size=50`
       3. Vendor documentation mentions page, page number, or pages
       4. You move through results by incrementing page numbers
    4. **Link** - this is common in modern SaaS and REST-first APIs and should be chosen if:
       1. The API returns a full URL to the next page
       2. Responses include `next`, `next_url`, or `Link` headers
       3. Vendor documentation mentions `follow the next link`
       4. The API controls paging rather than you calculating it
    5. **Pointer** - this is best for large datasets and high-volume APIs, and should be chosen if:
       1. The API uses cursors or tokens to continue results
       2. Vendor documentation mentions cursor, after, starting\_after, or next\_token
       3. The response includes a value you pass back to get the next page
       4. Page order must remain consistent as data changes
11. Click **Next**.
12. Fill out the pagination details.&#x20;
    1. For all types except None:
       1. **Results Key** - A path within the action's output to the iterable list of results (which must be an array) - i.e. `results` or `results.foo`
       2. **Page Size Param** - The query parameter used to control the amount of items returned in a response
       3. **Default Page Size** - The default number of items to return in a response. This cannot be higher than 1000.
       4. **Default Page Limit** - The maximum number of items that can be returned in a response. This cannot be higher than 20.
    2. Additionally, if Index:
       1. **Index Param** - The name of the query parameter to identify the starting index for the returned page
    3. Additionally, if Page:
       1. **Page Param** - The query parameter used to control what page of results is returned.
    4. Additionally, if link:
       1. **Response Header Rel** - The rel value of the link header that contains the next link. Defaults to "next" if unset and the location is set to "header". (e.g. "next" for a link header like https://api.example.com/v1/users?page=2; rel="next")
       2. **Response Header Name** - The key within the response headers that contains the link to the next page. Defaults to "link" if unset and the location is set to "header". (e.g. "Link" for a response like Link: https://api.example.com/v1/users?page=2; rel="next")
       3. **Next Page Key** - The query parameter used to identify the next page in the total set of results. Used when the link is in the response body.
       4. **Next Link Location** - The location of the next link in the response headers, either **JSON Response Body** or **Response Header**. This is used to extract the next link from the response.
    5. Additionally, if Pointer:
       1. **After Param** - The query param the identifies the starting pointer/cursor of the returned page.
       2. **Pointer JSONPath** - The JSONPath to the pointer/cursor in the response.
13. Click **Next**.&#x20;
14. The **Edit Actions** screen is where you'll add in your actions for your integration. When the integration is complete, you'll be able to access these actions in the [Workflow Builder](../../../automations/workflows/workflow-builder-how-to-set-up-a-workflow.md#drag-the-action) just like you would for any other integration, only they will show up in a separate accordion section titled with the name you gave your custom integration.

    1. Click ![](<../../../../.gitbook/assets/Screenshot 2026-01-26 at 3.15.05 PM.png>) to add a default action. This will reveal new fields and menus to fill out for that action, and add the action to the left side list.

    ![Edit your actions, then click on Finalize](<../../../../.gitbook/assets/Screenshot 2026-01-26 at 3.17.54 PM.png>)

    1. Click ![](<../../../../.gitbook/assets/Screenshot 2026-01-26 at 3.15.34 PM.png>)to the right of your action to delete it.
    2. Click ![](<../../../../.gitbook/assets/Screenshot 2026-01-26 at 3.22.37 PM.png>)to open the **Regex Replace** dialog. Here you can change the name or description of your action to something else, editing multiple actions at once. For example, `Photo Records Get` could be changed to `Get Photo Records`. In this example it would match `(.*?) Get`.



    <figure><img src="../../../../.gitbook/assets/Screenshot 2026-01-26 at 3.20.00 PM.png" alt="" width="563"><figcaption></figcaption></figure>
15. Click **Finalize** when all desired actions are added.
16. Click **Finalize** again only when you're finished adding actions. You won't be able to edit certain fields again after finalizing.&#x20;

![Click on Finalize](https://images.tango.us/workflows/7bbe9055-9c43-4e0d-9aa1-bee39c08cbb8/steps/ed9090e3-8b17-4f0d-8b7b-843f52c32c45/9c5a32b7-0ee4-4510-a53a-7af43aea21e6.png?mark-x=950\&mark-y=520\&m64=aHR0cHM6Ly9pbWFnZXMudGFuZ28udXMvc3RhdGljL2JsYW5rLnBuZz9tYXNrPWNvcm5lcnMmYm9yZGVyPTMlMkNGRjc0NDImdz05MyZoPTQ1JmZpdD1jcm9wJmNvcm5lci1yYWRpdXM9MTA%3D)

20. If your actions are available, you'll see a new [organization mapping](https://docs.rewst.help/documentation/configuration/integrations#what-is-organization-mapping) menu appear at the bottom of the screen. Note that organization mapping will only appear if a paginated endpoint is in the integration.&#x20;
21. Click **Save**.
22. Select a status from the status list. Note that statuses determine how Rewst handles your custom integration's current state:
    1. **Draft**: The integration is not finalized, can be still be edited, but not installed. Once an integration is finalized it can't be put back in to draft mode.
    2. **Published**: The integration will be installable by your organizations and all sub organizations.
    3. **Hidden**: The integration is not installable by your organizations and all sub organizations, but can be edited.

![](https://images.tango.us/workflows/7bbe9055-9c43-4e0d-9aa1-bee39c08cbb8/steps/fad46f6f-526e-4508-8ef7-a16319b615e7/74ef4c73-39b7-4105-a042-240ea5e150bc.png?mark-x=1161\&mark-y=348\&m64=aHR0cHM6Ly9pbWFnZXMudGFuZ28udXMvc3RhdGljL2JsYW5rLnBuZz9tYXNrPWNvcm5lcnMmYm9yZGVyPTMlMkNGRjc0NDImdz0yMDgmaD00NCZmaXQ9Y3JvcCZjb3JuZXItcmFkaXVzPTEw)

23. Click on the integration tile that appears in the setup wizard to finalize setup of your custom integration. You'll need to authenticate based on the authentication method you selected during previous setup steps. Follow the prompts on screen to complete setup.

<figure><img src="../../../../.gitbook/assets/Screenshot 2026-02-16 at 12.14.25 PM.png" alt="" width="563"><figcaption></figcaption></figure>

## Troubleshoot custom integration setup

#### Imported Swagger file throws red error messages

This occurs when you import the Swagger file without first cleaning it. See our steps for how to clean Swagger files pre-import [here](custom-integrations-v2.md#upload-an-openapi-json-file).&#x20;

<figure><img src="../../../../.gitbook/assets/Screenshot 2026-01-22 at 4.33.58 PM.png" alt="" width="563"><figcaption></figcaption></figure>

#### OpenAPI Swagger vs V3

Many vendors have only released a V2 Swagger file, while the current standard is V3. The file will need to be converted to work with V3. Rewst will not attempt the conversion if you paste the JSON into the editor, but will if you upload the .json file.

#### Description missing error

You must add a description under the **Configuration Details** section.

<figure><img src="../../../../.gitbook/assets/Screenshot 2026-01-23 at 10.41.59 AM.png" alt="" width="563"><figcaption></figcaption></figure>

#### OperationID missing in path error

This means that an OperationID is missing. This can be added under the path as `OperationID`. Make sure that all operation IDs are unique and not repeated.

#### Circular reference detected

There is a reference within an action to the action itself, that if called could result in a loop. The fix is to remove the $ref lines that reference themselves. For example:

```
"FilterExpression”: {**

“items”: {

“description”: “Inner expressions. Can be used only with `and`, `or` and `not` operation.”,

“type”: “array”,

“items”: {

**“$ref”: “#/components/schemas/FilterExpression”**
```

#### Path must not end with a slash

For example:

```
“/organizations/companies/billing/settings/”: {

Fix:

“/organizations/companies/billing/settings”: {
```

#### Regex is not valid

The regex specified in the schema is not valid. To fix, go to [regex101.com](http://regex101.com/) and identify what’s wrong with the regex.

For example:

```
“pattern”: “^(")?(?:[^\."])(?:(?:[\.])?(?:[\w\-!#”,
```

In this example, the regex had the following errors:

* Character range is out of order
* / An unescaped delimiter must be escaped; in most languages with a backslash ()

#### Required field is not defined

For example:

```
“IdentityProviderRoleMappingRule”: {

**“required”: [**

“name”,

“role”,

“attributeMappingRules”,

“organizationMappingSourceClaimType”

],

“type”: “object”,

“properties”: {

“instanceUid”: {

“format”: “uuid”,

“description”: “UID assigned to a mapping rule.”,

“type”: “string”,

“readOnly”: true

},
```

In this case the schema has marked fields as “required”, that do not exist in “properties”, they should be able to be added in properties to resolve this.
