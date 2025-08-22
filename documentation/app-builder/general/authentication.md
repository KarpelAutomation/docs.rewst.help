# App Builder: Authentication for apps

## Why App Builder authentication matters

Authentication is a crucial aspect of securing your app and ensuring that only authorized users can access its content. When users attempt to view live pages within your app, authentication is required. We've extended our existing authentication system to App Builder, leveraging Entra ID and Google authentication, just like the rest of Rewst. This ensures a consistent and secure user experience across the platform.

{% hint style="info" %}
Ensure that your app's authentication system aligns with your users' expectations and complies with any relevant privacy and security standards. Regularly update and review your authentication processes to stay ahead of potential security challenges.
{% endhint %}

## How authentication works

1. When a user tries to access live pages within your app, they will be redirected to the login page.
2. Users have the option to authenticate using Entra ID or Google credentials. This provides a seamless and familiar login experience.
3. Once authenticated, the system performs an authorization check to ensure the user has the necessary permissions to view the requested content.
4. If the authentication and authorization checks pass, the user is granted access to the live pages.

## Default login page

Upon creating your app, you'll notice that a login page is automatically included as one of the default pages. This login page is a fundamental part of ensuring that users authenticate themselves before accessing any live content within your app.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-08-21 at 4.37.31 PM.png" alt=""><figcaption></figcaption></figure>

You have the flexibility to customize the login page according to your app's branding and design, creating a cohesive and personalized experience for the users who log into your app. For more on editing pages, see our pages documentation [here](manage-your-pages.md).

{% hint style="info" %}
If you have suggestions for new App Builder features, or general feedback about your experience using this part of Rewst, submit your thoughts to our [Canny](https://rewst.canny.io/app-builder).&#x20;
{% endhint %}
