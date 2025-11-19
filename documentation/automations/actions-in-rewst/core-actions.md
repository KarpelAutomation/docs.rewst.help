# Core actions

_Core actions_ in Rewst are your gateway to the platform's vast array of intrinsic functionalities. These actions, usable right out of the box, offer features ranging from ad-hoc HTTP requests to document parsing.&#x20;

Core actions are used in the same way as regular actions within workflows. They are selected from the list of available actions, configured based on their parameters, and then added to the workflow at the appropriate place.

{% hint style="info" %}
Expand each of the action types below to see their individual information.
{% endhint %}

<details>

<summary><strong>No-Operation (Noop)</strong></summary>

* **Action Name:** `noop`
* **Description:** Does nothing. Often used for logic or as a placeholder in the workflow.
* **Parameters:** None.
* **Output:** None

</details>

<details>

<summary>Ad-hoc HTTP Requests</summary>

**Action Name:** `HTTP Request`

Performs an HTTP request to a specified URL, supporting a variety of methods, body content types, and configurations. This is useful for interacting with APIs or other web services within a workflow, or for performing any other tasks that involve HTTP requests.

**Parameters**

* **URL**: The URL to which the HTTP request is sent.
* **Request Method**: The HTTP method to use for the request. You can select from the dropdown options (`HEAD`, `GET`, `POST`, `PUT`, `DELETE`, `OPTIONS`, `TRACE`, `PATCH`, `PURGE`).
* **Auth Username**: The username for basic HTTP Authentication, if needed.
* **Auth Password**: The password for basic HTTP Authentication, if needed. _(This parameter is secret to ensure security.)_
* **Allow Redirects**: Specifies whether the HTTP request will follow redirects. By default, it's set to `true`.
* **Body**: The body to send with the request. This parameter is not required if `JSON` or `Files` is provided.
* **JSON**: The JSON body to send with the request. This field is not required if `Body` or `Files` is provided.
* **Files**: Here, you can add files to be uploaded with the HTTP request using `multipart/form-data`. Each file requires the following information:
  * **Field Name**: The name of the form field (not the filename).
  * **File Name**: The name of the file.
  * **File Contents**: Contents of the file to upload.
  * **File URL**: A publicly-accessible URL to the file contents to upload.
  * **Content Type**: The MIME type of the file to include in the multipart field.
* **Cookies**: Input the cookies to send with the request. You can add more than one cookie by clicking on the `+` icon.
* **Headers**: Specify the custom HTTP headers to be sent with the request. You can add more than one header by clicking on the `+` icon.
* **Params**: Enter the query parameters to be used with the HTTP request. You can add more than one parameter by clicking on the `+` icon.
* **Timeout**: Enter the timeout for the HTTP request in seconds. The default value is `5`.
* **Require Success Status**: If you check this box, the task will fail if a non-2xx HTTP status code is returned. This is useful for identifying and handling HTTP errors during the task's execution.

**Output**: The action returns the content returned by the server in response to the HTTP request. This could be a success message, a failure message, a data object, or any other content that the server sends as a response.

_<mark style="color:blue;">**Note**</mark><mark style="color:blue;">:</mark>_ _If you need more advanced security around calling particular endpoints, you can also use a_ [_Custom Integration_](../../configuration/integrations/custom-integrations/) _in addition to this HTTP Request action. This allows for enhanced security and customization when interacting with your external APIs._

</details>

<details>

<summary>Create and Await Webhook Actions</summary>

***

**Action Name:** `Create Webhook`

Allows for the creation of a one-off webhook for which can then be used by the `Await Webhook` action.

* **Parameters**: This action requires the methods allowed to access the webhook, the response status, response headers, response body, and an expiration timeout.
* **Output**: The output of this action is the webhook ID and the full URL of the webhook.

***

**Action Name:** `Await Webhook Request`

Waits for a request to a created one-off webhook. Once a request is received, the workflow continues.

* **Parameters**: This action only requires the ID of the webhook created from the `Create Webhook` action.
* **Output**: The output includes the HTTP method, query params, headers, JSON or form/multipart data in the body of the request, and the timestamp when the request was received.

</details>

<details>

<summary>Email, SMS &#x26; Confirmation Actions</summary>

**Action Name:** `sendmail`

Allows for the sending of an email.

* **Parameters:** This action requires a sender prefix (`sender`), with multiple options available, the recipient's email address (`to`), the subject of the email (`subject`), the title of the email (`title`), and the message body (`message`). It also has the option to render markdown as HTML (`render_markdown`). You can also fully control the HTML of the email with `(Custom HTML)`. This can also reference a template using the `{{ template(“guid”) }}` function.&#x20;
  * Note that if using the `Custom HTML` field, the message and title fields will be ignored
  * You cannot upload images to Rewst, so any image will need to be externally referenced
  * Emails will still be sent from the rewst.io domain
* **Output:** The task doesn't yield an output upon success. It will fail if there are any errors during the process of sending the email.

***

**Action Name:** `Send SMS`

Allows you to send a text message to a specified phone number.

* **Parameters**: This action requires the recipient's phone number (`phone_number`) and the text message (`message`) to be sent.
* **Output**: The output of this action will depend on the implementation details. Usually, it will return a confirmation message or an error message.

***

**Action Name:** `Confirmation Email`

Send a confirmation email with reply options to a specified recipient. \
This action pauses the workflow and places it in an `Awaiting-User-Input` state. The workflow will not proceed until the confirmation email is interacted with via buttons, or the task times out. You can configure task timeout on the **Advanced** tab of the action. Task time out means that the action fails. Note that this setup means that buttons are required for the workflow to proceed. \
\
![](<../../../.gitbook/assets/image (83).png>)

* **Parameters:** This action requires the recipient's email address (`to`), the subject of the email (`subject`), the title of the email (`title`), and the message body (`message`). It also offers user interaction buttons (`buttons`) and has the option to render markdown as HTML (`render_markdown`).
* **Output:** If the action is correctly executed, a confirmation email will be sent. Output variable `inquiry_result` is an output of the task and can be used to route the workflow in a specific path. `Inquiry_result` 's value is that of the button clicked, and is configured as a string value on the action itself in the workflow builder.

<figure><img src="../../../.gitbook/assets/image (80).png" alt=""><figcaption></figcaption></figure>

* **Confirmation email class and confirmation examples**
  * Button classes:
    * Primary; primary
    * Default; default
    * Danger; danger
  * Title class:
    * Title; title
  * Customization options
    * Custom Button CSS - control the CSS styling for the buttons.
    * Custom footer - overwrite the default Rewst footer or remove the footer entirely.
    * Custom Title CSS - customize the title CSS.
    * Logo Link - customize the hyperlink for the logo image.
    * Logo URI:
      * This will take the link to the image itself.
      * **TIP**: This is essentially providing a value for the src param of a img tag. You could also provide a base64 encoded value.

- #### Example custom button CSS

```css
a,

a:visited,

a:hover,

a:active {

color: inherit !important;

}

  

table, td, div, h1, p {

font-family: "Times New Roman", Times, serif;

}

  

.primary {

background: #4d7c0f;

}

  

.default {

background: #365314;

}

  

.danger {

background: #dc2626;

}
```



*   #### Example custom footer



    ```
    <tr>

    <td

    style="text-align:center;padding:30px 0 30px 0;background-color:#1a2e05;color:#ffffff;">

    <p style="display:inline-block;margin-right:10px;">&copy; The Dougnut {% now 'local', '%Y' %}</p>

    <p style="display:inline-block;margin-right:10px;"><a

    href="https://rewst.io/terms-of-service/">Order</a></p>

    <p style="display:inline-block;margin-right:10px;"><a href="https://rewst.io/privacy-policy/">Contact Us</a></p>

      

    <p style="display:inline-block;margin-right:10px;color:#84cc16"><a href="mailto:support@rewst.io">Need

    Delivery?</a></p>

      

    <p style="display:inline-block;margin:0px 4px 0 4px;vertical-align:middle;"><a href="https://www.linkedin.com/company/rewst"><img

    src="https://rewst-splash.s3.us-east-2.amazonaws.com/linkedin.png" width="24" height="24"

    alt="linkedin"></a></p>

      

    <p style="display:inline-block;margin:0px 4px 0 4px;vertical-align:middle;"><a href="https://twitter.com/rewst_dot_io"><img

    src="https://rewst-splash.s3.us-east-2.amazonaws.com/twitter.png" width="24" height="24" alt="twitter"></a>

    </p>

      

    </td>

    </tr>
    ```
* #### Example custom title CSS

```
.title {

font-size: 20px;

line-height: 16px;

font-weight: 700;

font-style: normal;

color: #0c0a09;

text-decoration: none;

letter-spacing: 0px;

padding: 25px 30px 0 30px;

}
```

* #### Example logo link

```
https://google.com
```

* #### Example logo URI

```
https://www.svgrepo.com/download/533811/donuts-cake.svg
```

</details>

<details>

<summary>Delay Workflow Actions</summary>

**Action Name:** `Delay Workflow For Period`

Pauses the workflow for a specified duration.

* **Parameters:** The number of days, hours, minutes or seconds to delay the workflow.
* **Output:** No specific output, the workflow resumes after the specified delay.

***

**Action Name:** `Delay Workflow Until Date/Time`

Pauses the workflow until a specified date and time.

* **Parameters:** The date and time when the workflow should resume.
* **Output:** No specific output, the workflow resumes at the specified date and time.

</details>

<details>

<summary>Mock Task</summary>

**Action Name:** `mock`

**Overview**

The `Mock` action is designed to provide you with the capability to simulate the result of a not yet implemented action. This is particularly useful during workflow development and testing phases as it allows you to simulate responses from services that are not yet available or are impractical to call during the development process.

**When to Use**

The `Mock` action comes in handy in scenarios such as:

* When designing new workflows where certain steps are not fully implemented.
* In testing stages, to simulate conditions without making actual calls to the services.
* To create controlled conditions in your workflow for troubleshooting issues.

**Input Parameters**

The `Mock` action accepts the following parameter:

* **Mock Result:** This parameter should contain the key / value pairs that you want to be returned by this action. You can press the `+` to add as many objects as necessary.

**Example Usage**

You are developing a workflow that is expected to interact with a service which is not yet implemented. You know the expected format of the response, and you want to build and test your workflow logic based on that response.

Let's say you know the response will look something like this:

```json
{
  "name": "Rewsty",
  "valid": true,
  "message": "Successfully completed the task."
}
```

You can simulate this response using the `Mock` action as follows:

```yaml
mock_result:
  name: {{ CTX.name }}
  valid: true
  message: Successfully completed the task.
```

While using the `Mock` action, the values can be literal Jinja expressions like `{{ CTX.name }}`above. The action will return this exact input structure wrapped inside a `data` object, and the Jinja expressions will not be evaluated but returned as is. The result of the action on the workflow results page would look like:

**Result:**

```json
{
  "data": {
    "name": "{{ CTX.name }}",
    "valid": true,
    "message": "Successfully completed the task."
  }
}
```

This can be useful for catching issues early in the development phase such as incorrect Jinja expression usage, understanding how the workflow will handle dynamic data, or verifying that your workflow is properly constructed to handle the expected responses from services. It's a way to ensure that your workflow behaves as expected when it starts receiving actual dynamic data.

</details>

<details>

<summary>Debugging with Templates</summary>

**Action Name:** `Debug`

**Overview**

The `Debug` action is a utility feature in our workflow system, specifically designed to assist with debugging and logging purposes. This action can help in understanding the flow of data within your workflows, troubleshoot problems, and generally help you understand what's happening at a certain point in the workflow execution. It logs the input parameters it receives and returns the same as its output.

**When to Use**

You might want to use the `Debug` action in the following scenarios:

* When developing workflows, to see how data is flowing between tasks and actions.
* If you're troubleshooting an issue, to inspect the data that's being passed around.
* When you want to log specific information for auditing or reporting purposes.

**Input Parameters**

The `Debug` action accepts the following parameters:

* **text:** This is a general-purpose text field that will be logged and returned by the `Debug` action.
* **template:** This field takes a reference to a template in your environment that will be rendered and used as part of the action's input. The system will replace any variables in the template with its actual value at the time of template rendering.

**Example Usage**

Let's say we have a template named "Greeting Message" with content `# Hey there {{ CTX.name }}`.

We can use this template in the `Debug` action with the following parameters:

```yaml
text: Testing Debug Action
template: Greeting Message
```

Assuming `CTX.name` is set to `Rewsty`, the rendered template would be `# Hey there Rewsty`.

The `Debug` action will log these parameters and also return them as its output. The results of the action on the workflow results page would look like this:

**Result:**

```json
{
  "template": "# Hey there Rewsty",
  "text": "Testing Debug Action"
}
```

This tells us that `CTX.name` was set to`Rewsty`, and the text provided with this action was `Testing Debug Action`. Using this, you can better understand the state of your workflow at the point this `Debug` action was executed.

</details>

<details>

<summary>Parse HTML Action</summary>

#### Action Name: `Parse HTML`

#### Overview

The Parse HTML action is a versatile tool within Rewst, geared to pinpoint and extract specific elements or data from HTML documents. It leverages the power of BeautifulSoup, a Python library recognized for extracting data from HTML and XML files effectively.

#### When to Use

This action is particularly beneficial in these situations:

* **Data Extraction**: capturing specific information from the response of an HTTP request.
* **Content Clean-Up**: sieving out only the necessary data from complex HTML content.
* **Web Scraping**: automating the extraction of specific information from various web pages using defined tags, classes, or identifiers.

#### Action Parameters

The `Parse HTML` action accepts the following parameters:

* **HTML**: The HTML content to be parsed. This could be HTML content from a webpage, obtained using the `HTTP Request` Core Action.
* **Class**: Optionally finds HTML elements based on their `class` attribute.
* **ID**: Optionally searches for HTML elements based on their `ID` attribute.
* **Query**: Employs [BeautifulSoup filters](https://www.crummy.com/software/BeautifulSoup/bs4/doc/#kinds-of-filters) to specify the operation type:
  * `find_all` returns all instances of the defined HTML tag.
  * `find` returns only the first instance of the defined HTML tag.
  * `select` enables the use of CSS selectors for nested HTML tags.
* **String**: Optionally searches for specific text within the HTML content.
* **Value**: Identifies the tag or selector to search for in the HTML content. For example, `a` would find all anchor (`<a>`) tags in the HTML content.

#### Practical Use Case: Extracting Links from 'Hacker News'

This example involves making a `GET` request to the `Hacker News` website and parsing the returned HTML to extract all `<a>` links.

The first step uses the Core `HTTP Request` action to fetch the HTML content:

```yaml
publish_result_as: news
request_method: GET
URL: https://news.ycombinator.com
```

You can then use the `Parse HTML` action to extract all `<a>` links. The parameters for this action would be set as follows:

```yaml
html: {{ CTX.news }}
style: find_all
value: a
```

#### Example Workflow Results

Here's an example of how the `Parse HTML` action's input and output might look like on the workflow results page:

**Input from the HTTP Request:**

```json
html: {
  cookies: {},
  data: "<html>...</html>",
  headers: {...},
  status_code: 200
},
query: {
  style: "find_all",
  value: "a"
}
```

**Result:**

```yaml
[
  "<a href=\"https://news.ycombinator.com\"><img height=\"18\" src=\"y18.svg\" style=\"border:1px white solid; display:block\" width=\"18\"/></a>",
  "<a href=\"news\">Hacker News</a>",
  "<a href=\"newest\">new</a>",
  "<a href=\"front\">past</a>",
  "<a href=\"newcomments\">comments</a>",
  "<a href=\"ask\">ask</a>",
  "<a href=\"show\">show</a>",
  "<a href=\"jobs\">jobs</a>",
  "<a href=\"submit\">submit</a>",
  "<a href=\"login?goto=news\">login</a>"
]
```

This result contains all `<a>` tags found in the HTML content.

To further refine this output, returning only links for externally referenced pages, use the `select` query style, along with advanced CSS filters:

```yaml
html: {{ CTX.news }},
style: select
value: .titleline a[href^='https://']
```

The result is a list of strings containing all `<a>` tags that meet the newly specified criteria:

```json
[
  "<a href=\"https://arxiv.org/abs/2308.00676\" rel=\"noreferrer\">Electronic Structure of LK-99</a>",
  "<a href=\"https://www.science.org/content/blog-post/room-temperature-superconductor-new-developments\" rel=\"noreferrer\">A room-temperature superconductor? New developments</a>",
  "<a href=\"https://sophiehoulden.com/randomstuff/epitime/?revised\" rel=\"noreferrer\">Epicycle Clock</a>",
  "<a href=\"https://howardism.org/Technical/Emacs/new-window-manager.html\" rel=\"noreferrer\">Emacs is my new window manager</a>",
  "<a href=\"https://ploum.net/2023-08-01-splitting-the-web.html\" rel=\"noreferrer\">Splitting the Web</a>",
  "<a href=\"https://twitter.com/zebulgar/status/1686498517227814912\" rel=\"noreferrer\">Unconfirmed video showing potential LK-99 sample exhibiting the Meissner effect</a>",
  "<a href=\"https://magicloops.dev\" rel=\"noreferrer\">Show HN: Magic Loops – Combine LLMs and code to create simple automations</a>",
  "<a href=\"https://arxiv.org/abs/2307.08378\" rel=\"noreferrer\">eGPU: A 750 MHz Class Soft GPGPU for FPGA</a>"
]
```

To further understand CSS selectors, you can refer to this [w3schools article](https://www.w3schools.com/cssref/css_selectors.php).

_**Tip**: Parse HTML's functionalities include finding elements by tags (`<h1>`), class (`class_="abc"`), text (`string="The content"`), or id (`{"id": "abc"}`). When `string` is the sole argument, only the text is returned, not the whole element, which can help you fine-tune data extraction._

</details>

<details>

<summary>Parse XML Action</summary>

#### Action Name: `Parse XML`

#### Overview

The Core Parse XML action in Rewst is designed to locate and extract specific elements or data from XML documents. This powerful tool, backed by an efficient Python library, facilitates precise data extraction from XML files, simplifying the process of parsing complex data structures.

#### When to Use

Consider using the Parse XML action in these scenarios:

* **Data Extraction and Content Clean-Up:** Capture specific information or filter out necessary data from XML-formatted content. This is particularly useful in processing responses from HTTP requests or handling complex XML documents.
* **Web Scraping:** Automate the extraction of specific information from various XML sources using defined tags, attributes, or identifiers. It enables you to precisely target the data you need from web resources.

#### Action Parameters

The Core Parse XML action requires the following parameters:

* **XML**: The XML content that needs to be parsed. This could be XML content from an API response, obtained using the HTTP Request Core Action.
* **Attributes**: (Optional) Allows you to find XML elements based on their attribute key.
* **ID**: (Optional) Permits searching for XML elements based on their ID attribute.
* **Selector**: Determines the operation type. Options include:
  * `find`: Returns only the first instance of the defined XML tag.
  * `find_all`: Returns all instances of the defined XML tag.
  * `select`: Enables the use of XPath expressions for nested XML tags or conditional searches.
* **String**: (Optional) Allows you to search for specific text within the XML content.
* **Value**: Specifies the tag or selector to search for in the XML content.

#### Practical Use Case: Extracting Books from a Bookstore's XML Data

Before diving into parsing XML data, you'll need to fetch the XML file. In this use case, the XML file is fetched from a public URL which contains bookstore data in XML format. The first task in the workflow, called `get_books`, uses the Core `HTTP Request` action to fetch this XML content:

**Input Parameters:**

```yaml
url: http://books.toscrape.com/catalogue/category/books_1/index.html
request_method: GET
publish_result_as: get_books
```

The result from this task will look something like this:

```json
{
  "cookies": {},
  "data": "<bookstore>...</bookstore>",
  "headers": {...},
  "status_code": 200
}
```

The `data` field contains the XML content, which is the input for the `Parse XML` action. The XML content is passed using the Context (`CTX`) object as `CTX.books.data`.

**Finding the First Book**

In this scenario, we are using the `find` operation to return the first `book` element in the XML:

**Input Parameters:**

```yaml
input:
  xml: {{CTX.books.data}}
  selector: find
  value: book
```

The result from this task will look something like this:

```json
{
  "value": "<book category=\"cooking\"><title lang=\"en\">Everyday Italian</title><author>Giada De Laurentiis</author><year>2005</year><price>30.00</price></book>"
}
```

The output includes the first `book` element in the XML content.

**Selecting All 'Children' Category Books**

For a more complex operation, we can use the `select` operation with an XPath expression to extract all `book` tags where the `category` attribute is `children`.

**Input Parameters:**

```yaml
xml: {{CTX.books.data}}
selector: select
value: book[category='children']
```

**Result:**

```json
{
  "value": "<book category=\"children\"><title lang=\"en\">Harry Potter</title><author>J K. Rowling</author><year>2005</year><price>29.99</price></book>"
}
```

The result includes all `book` tags where the `category` attribute is `children`.

#### Conclusion

The `Parse XML` action provides a powerful way to parse XML data, enabling the extraction of specific data points based on `tags`, `attribute keys`, `text`, or `id`. It provides both simple and advanced operations, catering to various complexity levels of XML parsing requirements.

For additional understanding on XPath expressions, refer to this [w3schools article](https://www.w3schools.com/xml/xpath_intro.asp).

</details>

<details>

<summary>Other Core Actions</summary>

***

**DNS Query**

**Action Name:** `DNS Query`

* **Description:** Queries a nameserver for DNS records associated with a given URL.
* **Parameters:** The URL to query the Nameserver for, the field to query from the nameserver, timeout for the DNS Query (optional, default 60), and the nameserver to use for the query (several options available including Google, Cloudflare, OpenDNS).
* **Output:** The specified DNS records associated with the given URL from the queried nameserver.

***

**Generate Password**

**Action Name:** `Generate Password V2`

* **Description:** An upgrade from the deprecated password generation action. It crafts a cryptographically secure password with user-specified values. (_This is recommended for use over the deprecated Password Action due to its upgraded structure.)_
* **Parameters:** length, minimum counts of numeric and capital letter characters, and optional punctuation characters.
* **Output:** the generated password is presented under the "password" key in the output.

***

**UUID**

**Action Name:** `uuid`

* **Description:** Generates a new UUID (Universally Unique Identifier).
* **Parameters:** UUID type (options include `uuid1` and `uuid4`, defaults to `uuid4`).
* **Output:** The generated UUID.

</details>

