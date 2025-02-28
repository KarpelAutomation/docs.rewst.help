---
description: Understand how APIs make automation possible.
---

# APIs

## Module overview

:egg: APIs power every automation in Rewst by acting as translators between systems, making complex tasks happen behind the scenes. In this module, you’ll learn what APIs are, how they work, and why they’re essential for building automations that do the heavy lifting for you.

## API basics (part 1) video _(4:17 minutes)_

{% embed url="https://youtu.be/aq-WrVzkOkc" %}

<details>

<summary>What is an API?</summary>

An API (Application Programming Interface) is a contract that lets different software systems talk to each other. It defines what you can ask for, how to ask for it, and what to expect in return. While it sounds technical, it's more familiar than you think—like a menu at a restaurant.

</details>

<details>

<summary>APIs are like restaurant menus</summary>

Think of an API as a **menu**:

* The **request** is your order (what you ask for). You can’t ask for anything that’s not on the API’s menu.
* The **parameters** are your instructions (e.g., “no olives”).
* The **response** is the meal you receive. You don’t need to know how the kitchen works—you just need to follow the menu’s guidelines to get exactly what you ordered.

</details>

<details>

<summary>Why APIs matter for Rewst</summary>

Rewst works like a **concierge** using APIs to handle tasks across systems.

For example, planning a **“Night on the Town”** involves multiple requests: booking a restaurant, securing concert tickets, and calling a ride. Instead of managing these tasks individually, Rewst handles them all through APIs, bundling them into a single automated workflow.

</details>

<details>

<summary>How Rewst uses APIs behind the scenes</summary>

Every automation in Rewst is powered by API requests and responses. When you set up a workflow—like pulling a user from Microsoft Graph or sending a message in Slack—you’re making API calls without needing to know the details. Rewst simplifies the process for you.

</details>

<details>

<summary>The big takeaway</summary>

APIs are essential for automation, and Rewst acts as your API concierge, managing complex API conversations on your behalf. By using APIs, Rewst connects with other systems to automate tasks and processes seamlessly—without you having to interact with each system directly.

</details>

## API basics (part 2) video _(3:43 minutes)_

{% embed url="https://youtu.be/-WUmpkm1HzA" %}

<details>

<summary>APIs speak in verbs: The four main HTTP methods</summary>

APIs use **HTTP methods**—like action verbs—to specify what kind of task you want to perform:

* **GET**: Retrieve data (like checking the menu).
* **POST**: Add new data (like placing an order).
* **PUT**: Update existing data (like changing a reservation).
* **DELETE**: Remove data (like canceling a reservation).

For example, Rewst might use a GET request to check restaurant availability, a POST to book tickets, and a DELETE to cancel plans—all handled automatically through APIs.

</details>

<details>

<summary>Requests and responses: The API conversation</summary>

Every interaction with an API is a two-way **conversation**:

* You send a **request** (asking for data or performing an action).
* The system sends a **response** (giving you what you asked for or an error message if something went wrong).

A request includes:

* **The method** (like GET or POST).
* **The URL** (where the request is sent, like the restaurant's address).

For example:

**Base URL:** `https://restaurantapi.com` (the address).

**Endpoint:** `/reservation/123` (what you're asking for).

</details>

<details>

<summary>Rewst handles the heavy lifting</summary>

With Rewst, you don’t need to manually craft these requests. It automates the conversation by handling all the requests and responses behind the scenes. Whether it's pulling user data from Microsoft or sending a Slack message, Rewst makes sure your workflows communicate with other systems seamlessly.

</details>

<details>

<summary>The big picture: Simplifying complexity</summary>

APIs might seem complex, but it all comes down to understanding the verbs and conversations. Rewst simplifies this process, allowing you to build automations without worrying about the technical details of each request. With this foundation, you're ready to create smarter, more efficient workflows with confidence.

</details>

## Practice activities

* Take the API knowledge check:&#x20;

{% embed url="https://www.surveymonkey.com/r/ZCQ5RKG" %}

* Check out our [API practice activities](api-activities.md) to solidify your understanding even more!&#x20;

## Keep on cluckin'
