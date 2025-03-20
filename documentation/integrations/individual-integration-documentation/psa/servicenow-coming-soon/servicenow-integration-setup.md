---
description: >-
  This document outlines the requirements and setup for the ServiceNow
  integration.
---

# ServiceNow integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## Setting up the ServiceNow  account

1. **Login** to your ServiceNow account with your business credentials.
2. **Navigate** to the ServiceNow instance and find the hostname (i.e `dev12345.service-now.com`).
3. **Obtain** and set up ServiceNow Username and Password for that instance and place these values in the settings.

Once the above steps are completed and saved, an automatic credentials check will run and then you can start using the ServiceNow API within Rewst workflows.

## Endpoint Plugin Requirements

These endpoints requires the following plugins:

* Customer Service plugin (`com.sn_customerservice`) + `csm_ws_integration` role and is provided within the now namespace.
* Order Management for Customer Service Management (`app-csm-order-mgmt`) + `sn_csm_order_mgmt` role.
* Order Management for Telecommunications (`sn_ind_tmt_orm`) - Optional.
* Telecommunications Assurance Workflows.
* Customer Service (`com.sn_customerservice`).
* Customer Service Install Base Management (`com.snc.install_base`).
