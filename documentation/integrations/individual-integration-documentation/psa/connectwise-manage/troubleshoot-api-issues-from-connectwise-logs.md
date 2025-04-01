# Troubleshoot API issues from ConnectWise logs

## Overview

This guide outlines the steps for Rewst users to pull API logs from ConnectWise PSA. These logs are crucial for troubleshooting and optimizing the Rewst integration with ConnectWise.

## Prerequisites

* Access to ConnectWise PSA with appropriate permissions.
* Familiarity with navigating the ConnectWise Manage system.
* Confirm that your Rewst account is [correctly integrated with ConnectWise](connectwise-integration-setup.md).

## Step by step walkthrough

### Step 1: Log into ConnectWise PSA and navigate to system settings

* **Login** to ConnectWise
* **Navigate** to `System` > `Members`
* **Click** `API Members`

Here, you'll find settings specific to API interactions and configurations.

<figure><img src="../../../../../.gitbook/assets/image (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

### Step 2: Select the Rewst user

Under the API Members tab, locate and select the user associated with Rewst's integration.

<figure><img src="../../../../../.gitbook/assets/image (2) (1) (1).png" alt=""><figcaption></figcaption></figure>

### **Step 3: Open the API logs tab**

After selecting the Rewst user:

* **Navigate** to the `API Logs` tab.
  * This tab contains logs of all API interactions made by the user.
* **Click** on the `Start Debug Mode` hyperlink.
  * This action opens the `Start Debug Mode` pop-up

<figure><img src="../../../../../.gitbook/assets/image (3) (1) (1).png" alt=""><figcaption></figcaption></figure>

### Step 4: Set debug duration

In the Debug Mode pop-up:

* **Enter** length of time (e.g. `5`) in the `Minutes` textbox. This will capture logs for the specified duration.
* **Click** the `Ok` button to start the debug mode.

<figure><img src="../../../../../.gitbook/assets/image (4) (1).png" alt=""><figcaption></figcaption></figure>

### Step 5: Replicate the issue and troubleshoot

* **Replicate** the issue or process you are troubleshooting
* **Return** to the API Logs tab.
* **Click** on the `Download Logs` hyperlink.&#x20;

Once downloaded, you can review these logs, and provide to the ROC for troubleshooting assistance.

