# Authentication



Ensuring secure access to your app is crucial, and we've integrated authentication seamlessly using Entra ID or Google credentials.

### Authentication for live pages

When users attempt to view live pages within your app, authentication is required. We've extended our existing authentication system to App Builder, leveraging Entra ID and Google authentication, just like the rest of Rewst. This ensures a consistent and secure user experience across the platform.

### Default login page

Upon creating your app, you'll notice that a login page is automatically included as one of the default pages. This login page is a fundamental part of ensuring that users authenticate themselves before accessing any live content within your app.

### How it works

1. **Accessing Live Pages**: When a user tries to access live pages within your app, they will be redirected to the login page.
2. **Entra ID or Google Authentication**: Users have the option to authenticate using Entra ID or Google credentials. This provides a seamless and familiar login experience.
3. **Authorization Check**: Once authenticated, the system performs an authorization check to ensure the user has the necessary permissions to view the requested content.
4. **Access Granted**: If the authentication and authorization checks pass, the user is granted access to the live pages.

### Customize the login page

While the login page is automatically added as a default page, you have the flexibility to customize it according to your app's branding and design. This allows you to create a cohesive and personalized experience for users logging into your app.

### Why authentication matters

Authentication is a crucial aspect of securing your app and ensuring that only authorized users can access its content. By integrating Entra ID and Google authentication, we aim to provide a convenient and secure login process for your users.

### Important consideration

Ensure that your app's authentication system aligns with your users' expectations and complies with any relevant privacy and security standards. Regularly update and review your authentication processes to stay ahead of potential security challenges.

Now that you understand how authentication works in your app, feel free to explore customization options and create a seamless login experience for your users. If you have any questions or encounter issues, our support team is here to help. Happy app building! 🚀
