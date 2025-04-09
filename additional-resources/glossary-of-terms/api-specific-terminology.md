---
description: >-
  Discover the key terms and concepts that empower your automation. Navigate the
  world of APIs with ease and leverage their full potential in your Rewst
  workflows!
hidden: true
---

# API Specific Terminology

## General Terms

* **API (Application Programming Interface):** A set of protocols that allow actions on a platform in a programmatic manner. APIs power Rewst's integrations, enabling the actions that your workflows perform.
* **HTTP Request Method:** Specifies the action to be performed on a resource within an API. E.g., `GET` (retrieve data), `POST` (create or query data), `PUT` (update data), `DELETE` (remove data).
* **Header:** Additional information sent with an HTTP request. E.g., `content type`.
* **Endpoint:** A specific path added to the URL where an API can call back specific object's properties. E.g., `https://api.example.com/users/123`
* **Path Parameter:** A unique identifier in the URL that identifies specific data, such as an ID in API calls. E.g., the `123` in `/users/123`.
* **Query Parameter:** An optional parameter available to be added to the Endpoint to filter the API call for some endpoints. E.g., `?status=active`.
* **Body:** The part of an HTTP request containing data sent to the API, typically structured in formats like JSON or XML. Example JSON body: `{"username": "john_doe", "password": "secret"}.`
* **Cookies:** Small pieces of data stored on a user's computer by a web server, used by APIs to manage sessions or track user behavior.
* **Timeout:** The maximum time allowed for a request to be processed
* **Status Codes:** Numeric codes returned by a server to indicate the result of an HTTP request. E.g., `200` (success), `404` (not found), and `500` (server error).
* **Output:** Content returned by a server in response to a request, including messages, data objects, or other information. E.g., `{"status": "success", "token": "abc123"}.`
* **Redirects:** The automatic forwarding of an HTTP request from one URL to another. E.g., redirecting from `http://example.com` to `https://example.com` to enforce use of HTTPS.

## Authentication

* **Authentication Method:** The process of verifying the identity of a user or application. The required authentication method will depend on the API you're attempting to access.
* **API Key:** A unique identifier used during integration setup, allowing secure communication between platforms without re-entering the key for each action.
* **Basic Authentication:** A method that requires a username and password, often used for web server login.
* **OAuth:** An open standard for access delegation, often used to grant token-based authentication and authorization.

{% hint style="info" %}
For more detail, or information on more complex authentication methods check out [Mozilla's Developer Network (MDN) documentation on HTTP authentication methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication).
{% endhint %}

## Data Formats and Media Types

* **Content-Type:** A specific header used in HTTP requests to indicate the media type, such as `application/json` for JSON data.
* **XML (Extensible Markup Language):** A markup language used to encode data in a format that is both human-readable and machine-readable.
* **JSON (JavaScript Object Notation):** A format designed for human readability and quick editing, JSON allows you to structure complex data in a way that's both accessible and efficient. It's a go-to choice for sending and receiving data with APIs, making it a vital part of Rewst's functionality.
* **Multipart/Form-Data:** A media type used to send files as part of an HTTP request, allowing for the uploading of files along with textual data.
* **File Upload:** The process of sending files such as images, documents, or other binary data as part of an HTTP request to an API. Typically used with the content type multipart/form-data when passing files within form submissions.

{% hint style="info" %}
For more information on sending form data, including file uploads, see [MDN Web Docs - Sending Form Data](https://developer.mozilla.org/en-US/docs/Learn/Forms/Sending_and_retrieving_form_data).
{% endhint %}
