# Actions & Endpoints

## Introduction

The N-able N-central Integration with Rewst delivers a robust set of actions and endpoints for interacting with N-able N-central. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Nable Integration:

* [**Customers**](broken-reference)
* [**Devices**](broken-reference)
* [**Generic Request**](broken-reference)
* [**Tasks**](broken-reference)

## Actions

### Customers

{% swagger baseUrl="<environment>.n-able.com" path="/customers" method="get" summary="List Customers" %}
{% swagger-description %}
List Customers
{% endswagger-description %}
{% endswagger %}

### Devices

{% swagger baseUrl="<environment>.n-able.com" path="/devices" method="get" summary="List Computers" %}
{% swagger-description %}
List Computers
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<environment>.n-able.com" path="/devices/{device_id}" method="get" summary="Get Computer" %}
{% swagger-description %}
Get Computer
{% endswagger-description %}
{% endswagger %}

### Generic Request

{% swagger baseUrl="<environment>.n-able.com" path="/<url_path>" method="get" summary="N-central API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the N-Able API
{% endswagger-description %}
{% endswagger %}

### Tasks

{% swagger baseUrl="<environment>.n-able.com" path="/devices/{device_id}/scheduled-tasks" method="get" summary="Get Device Tasks" %}
{% swagger-description %}
Get Scheduled Tasks for a Device
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<environment>.n-able.com" path="/scheduled-tasks/{task_id}" method="get" summary="Get Task Info by ID" %}
{% swagger-description %}
Get Task Info by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<environment>.n-able.com" path="/scheduled-tasks/{task_id}/status" method="get" summary="Get Task Status by ID" %}
{% swagger-description %}
Get Task Status by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<environment>.n-able.com" path="/scheduled-tasks/{task_id}/status/details" method="get" summary="Get Detailed Task Status Info by ID" %}
{% swagger-description %}
Get Detailed Task Status Info by ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="<environment>.n-able.com" path="/scheduled-tasks/direct" method="post" summary="Create Scheduled Task" %}
{% swagger-description %}
Create Scheduled Task
{% endswagger-description %}
{% endswagger %}
