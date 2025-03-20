---
description: Become familiar with the actions available to use with your Auvik integration
---

# Auvik actions & endpoints

## Introduction

The Auvik Integration with Rewst delivers a robust set of actions and endpoints for interacting with Auvik networks and devices. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Auvik Integration:

* [**Alerts**](actions-and-endpoints.md#alerts)**:** Manage and retrieve alert information.
* [**Components**](actions-and-endpoints.md#components)**:** Access details of device components.
* [**Configurations**](actions-and-endpoints.md#configurations): Handle device configurations.
* [**Devices**](actions-and-endpoints.md#devices): Explore details, warranties, and lifecycle information of devices.
* [**Entities**](actions-and-endpoints.md#entities): Retrieve notes and audits of discovered entities.
* [**Interfaces**](actions-and-endpoints.md#interfaces): List and fetch information about device interfaces.
* [**Networks**](actions-and-endpoints.md#networks): Access networks and specific network details.
* [**SNMP Poller**](actions-and-endpoints.md#snmp-poller-and-history): Retrieve SNMP Poller settings, devices, and history.
* [**Statistics**](actions-and-endpoints.md#statistics): Obtain statistics for devices, interfaces, components, and OIDs.
* [**Tenants**](actions-and-endpoints.md#tenants): Manage tenant details, including listing and specific information retrieval.
* [**Usage**](actions-and-endpoints.md#usage): Retrieve summaries of client and device usage.

## API Actions

### Alerts

The Alerts section encompasses three endpoints, providing capabilities to list alerts, retrieve specific alert information, and dismiss an alert. These functionalities enable you to stay informed and in control of your system's notifications, empowering you to manage alerts triggered by your Auvik collector(s) effectively.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/alert/history/info" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/alert/history/info/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/alert/dismiss/{id}" method="post" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Components

In the Components section, two specific endpoints enable you to access detailed information about device components discovered by Auvik. Whether you need to view multiple components or retrieve details about a specific component associated with a client device, this section provides the necessary tools to manage and understand your device components.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/component/info" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/component/info/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Configurations

The Configurations section of the Auvik Integration provides endpoints to view details about device configurations discovered by Auvik. With specific endpoints for multiple and single device configurations, you can gain a thorough understanding of the device configuration history associated with your Auvik user account, ensuring optimal device management.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/configuration" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/configuration/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Devices

The Devices section of the Auvik Integration offers an extensive suite of endpoints that allow you to access information about individual and multiple devices discovered by Auvik. This includes details, extended details, warranty information, and lifecycle data. These endpoints provide a granular view of the devices, enabling effective management and oversight.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/info/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/detail/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/detail/extended/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/warranty/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/lifecycle/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/info" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/detail" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/detail/extended" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/warranty" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/device/lifecycle" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Entities

The Entities section of the Auvik Integration provides insights into notes and audit trails associated with the entities (devices, networks, and interfaces) discovered by Auvik. With specific endpoints for multiple entity audits and notes, as well as individual entity audit and note retrieval, this section offers detailed information about your client entities, enhancing your understanding and control.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/entity/note/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/entity/audit/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/entity/note" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/entity/audit" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Interfaces

In the Interfaces section, two specific endpoints provide detailed information about device interfaces discovered by Auvik. Whether you need information about multiple interfaces or specific details about an individual interface, this section allows for comprehensive interface management.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/interface/info/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/interface/info" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Networks

The Networks section enables users to view and manage details about networks discovered by Auvik. With specific endpoints for individual and multiple networks, you can access both the general overview of networks and specific details, enhancing your control over network management.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/network/info/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/network/info" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/network/detail/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/inventory/network/detail" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### SNMP Poller & History

The SNMP Poller & History section offers a set of endpoints to view and manage SNMP Poller Settings within Auvik. This includes details about multiple settings, specific SNMP Poller Settings, and historical values. It's designed to provide a comprehensive view of SNMP Polling configurations and their historical data.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/settings/snmppoller" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/settings/snmppoller/{snmpPollerSettingId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/settings/snmppoller/{snmpPollerSettingId}/devices" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/snmppoller/string" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/snmppoller/int" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Statistics

The Statistics section of the Auvik Integration provides six endpoints for viewing various entity statistics monitored by Auvik. This includes device statistics, availability statistics, service statistics, interface statistics, component statistics, and OID statistics. These endpoints offer insights into historical and current statistics, enhancing monitoring capabilities.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/device/{statId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/deviceAvailability/{statId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/service/{statId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/interface/{statId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/component/{componentType}/{statId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/stat/oid/{statId}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Tenants

With three endpoints, the Tenants section of the Auvik Integration enables users to view and manage access details to multi-clients or clients associated with an Auvik user account. It provides insights into permissions and detailed information about multiple tenants and individual tenant details.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/tenants" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/tenants/detail/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/tenants/detail" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

### Usage

The Usage section of the Auvik Integration, comprising two endpoints, allows users to view usage data that informs invoice calculations. Whether you need to access client usage or device usage, this section provides detailed insights into consumption over specified time ranges.

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/billing/usage/device/{id}" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}

{% openapi src="../../../../../.gitbook/assets/auvik-actions.yaml" path="/billing/usage/client" method="get" %}
[auvik-actions.yaml](../../../../../.gitbook/assets/auvik-actions.yaml)
{% endopenapi %}
