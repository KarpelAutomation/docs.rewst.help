# QuickBooks Online Integration Setup

1. **Open QuickBooks Online Intuit Developer Dashboard.** Navigate to https://developer.intuit.com/app/developer/dashboard 1.1 You might have to switch to classic view if you are not able to see the dashboard. 1.2 Click Dashboard in the top navbar after switching to classic view.
2. **Create a new app.** Click the "Create an app" button in the upper right corner.
3. **Configure your app.** Fill out the required fields and click "Create app". Check the scope for com.intuit.quickbooks.accounting. This is the only one required for QuickBooks Online.
4. **Add Redirect URI to your app**. Click on the newly created app. Under Development Settings(if Sandbox) or Production Settings (if Production) -> Keys & Credentials: Add the following redirect URI:

```
{engine_url}/integrations/quickbooks_online/callback/{pack_config_id}
```

5. **Copy your client ID and client secret.** In the same page, under Development Settings(if Sandbox) or Production Settings (if Production) -> Keys & Credentials: Copy the client ID and client secret to your clipboard. You will need these values to authenticate your API calls.
6. **Navigate back to Rewst.** Paste the Client ID and Client Secret into the form below.
7. **IMPORTANT** If you are using the sandbox environment, use the appropriate sandbox hostname. This will direct API calls to the QuickBooks Online sandbox environment. Note: Sandbox credentials are different from Production credentials. They are under Development Settings and Production Settings respectively.
8. Click **Save Configuration**.
9. Click **Authorize**. You will be redirected to QuickBooks Online to authorize the connection. You may be prompted to log in. 9.1. Choose a Company from the list. This is the company that Rewst will interact with.
