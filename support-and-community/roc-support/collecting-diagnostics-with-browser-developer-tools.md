# Collecting diagnostics with browser developer tools

At times, the support team needs further information to better solve your issue. When asked to provide a HAR file, follow the steps below.

### Sanitize your HAR file prior to sending to support:

If you would like to sanitize your HAR file prior to sending it to our support team you can utilize tools such as:

[Cloudflare - HAR Sanitizer](https://har-sanitizer.pages.dev/)

For more information on why you would want to sanitize your HAR file please refer to:

[Introducing HAR Sanitizer: secure HAR sharing (from Cloudflare)](https://blog.cloudflare.com/introducing-har-sanitizer-secure-har-sharing/)

### Create and export HAR files

1. Open Chrome.
2. Navigate to the page where the issue is occurring.
3. Press **F12** to open the developer console.
4. Click the **Network** tab from the panel.

<figure><img src="../../.gitbook/assets/image (28).png" alt=""><figcaption></figcaption></figure>

5. Find the record button in the upper left corner of the tab.

<figure><img src="../../.gitbook/assets/image (27).png" alt=""><figcaption></figcaption></figure>

6. Confirm that the record button is red. If it's grey, click the button to start recording.
7. Reproduce the issue while the **Network** tab is open.

<figure><img src="../../.gitbook/assets/image (26).png" alt=""><figcaption></figcaption></figure>

8. Click **Export HAR** to download and save the HAR file.

<figure><img src="../../.gitbook/assets/image (25).png" alt=""><figcaption></figcaption></figure>

9. Provide the HAR file via Discord or via the ticket for support to review.
