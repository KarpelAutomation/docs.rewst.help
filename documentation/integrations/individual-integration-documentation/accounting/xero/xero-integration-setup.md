# Xero Integration Setup

Here are the steps on how to setup the Xero API integration:

1. Login to your [Xero Developer Apps Portal](https://developer.xero.com/app/manage)
2. Navigate to My Apps and click on the New App button
3. Fill in the required fields and click on the Create App button
   * Select Web App as the Integration Type
   *   For the Redirect URI, you will need to enter the following URL as a callback URL:

       ```
       {engine_url}/integrations/xero/callback/{pack_config_id}
       ```
4. Go to the configuration of the app you just created and copy the `Client ID` and `Client Secret` to the fields below
   * If there is no client secret, you can generate one by clicking on the `Generate a secret` button
5. Set the scopes for the Xero API by entering the required scopes in the `Xero API Scopes` field below
   * The default scopes are already set, but you can modify them as needed
6. Next please specify the default Organization name you want to use for the connection
   * Go to your my.xero.com dashboard and copy the name of the organization you want to use
   * This is case sensitive so make sure to enter the name exactly as it appears in Xero
7. Click the 'Save Configuration' button and then click the `Authorize` button to connect your Xero account
8. Get automating!

{% hint style="info" %}
**Important**

Make sure to copy the client secret and store it in a secure location. You will not be able to view the client secret again after you close the dialog box.
{% endhint %}
