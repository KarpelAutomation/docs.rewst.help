# App Builder: Components

## What are components?&#x20;

In App Builder, _components_ are the building blocks that enable users to rapidly create and customize their apps. Each component is designed to fulfill a specific function; from basic navigation to data visualization, allowing the construction of robust and user-friendly pages.&#x20;

Components are grouped into logical categories based on their primary functions, making it easier to identify and choose the right ones for a given task. By combining different components, users can craft fully customized pages that align with their brand and business needs.

Each component can be fine-tuned with various settings to meet unique requirements, ensuring that even highly specialized designs can be realized without extensive coding.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-21 at 6.36.34 PM.png" alt="" width="348"><figcaption><p>The Component Library of the Page Builder Canvas, expanded</p></figcaption></figure>

Click <img src="../../.gitbook/assets/Screenshot 2025-08-21 at 6.37.51 PM.png" alt="" data-size="line"> in the left side menu of your Page Builder Canvas to expose the total **Component Library** submenu.&#x20;

Add any component to the canvas by clicking on it in the Component Library, dragging it, and dropping it onto the canvas. Then, click on that component on the canvas to open its configuration settings and expand the hidden right side menu.

<figure><img src="../../.gitbook/assets/drag drop components.gif" alt=""><figcaption></figcaption></figure>

## App Builder components

{% hint style="success" %}
Click on any of the component types below to expand and see information about its setup and purpose.
{% endhint %}

### Essentials

<details>

<summary>Accordion component</summary>

Manage and organize information efficiently, particularly when users need to navigate through large sets of data or content. By showing one section at a time, it reduces visual clutter and enables a focused user experience.

### What the accordion component could be used for&#x20;

* Presenting FAQs, where each question expands into a detailed answer
* Organizing grouped content, like features or categories, for better readability
* Cleaner presentation of sidebar menu items
* Collapsing or expanding informational sections on dashboards or reports
* Providing step-by-step instructions, with each step expandable to reveal more details

<figure><img src="../../.gitbook/assets/Screenshot 2025-05-08 at 12.08.31 PM.png" alt=""><figcaption></figcaption></figure>

1. Click on the Accordion component on the canvas, after it has been added.
2. The **Properties** panel holds various configurable options. You can also edit text-based parts these configurations by clicking into their fields on the component and typing there directly.
   1. **Text Content**
      1. **Title**: Specify the title of the component.
      2. **Render details text**: Check or uncheck to show\hide text defined in the **Details** panel.
      3. **Details**: Text that will be displayed on the component.
   2. **Layout**
      1. **Start Expanded**: Check or uncheck to load component in default expanded\collapsed state.
      2. **Width:** Set the width of the component.
      3. **Override Theme**: Check the box to apply custom styling.
      4. **Colors**
         1. **Background**: Set the color of the component.
         2. **Text**: Set the color of the text in the component.
      5. **Margin**: Set the distance between the accordion and its surrounding components.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Button component</summary>

The button component allows you to integrate clickable buttons that trigger actions within your web applications. These buttons can initiate any number of functions, from submitting forms to redirecting users to other pages or executing custom scripts.

### What the button component could be used for

* Submitting forms and collecting user inputs.
* Redirecting users to other sections of the application or external resources.
* Initiating downloads or transactions.
* Triggering various functions defined within the application, such as opening a modal window or starting a workflow.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.18.40 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the button component** <a href="#example-use-case-for-the-button-component" id="example-use-case-for-the-button-component"></a>

For an MSP’s internal tool that manages client device setups, a Button component labeled "Deploy Software" could be implemented. This button could initiate a rewst workflow install or update software across client systems. By simplifying complex actions into a single button click, MSPs can ensure consistent software deployments, reduce human error, and increase operational efficiency.

### Configure the button component <a href="#configure-the-button-component" id="configure-the-button-component"></a>

1. **Select the component**: Click on the added 'Button' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Button Text:** Specify the label on the button.
   * **Button Behavior**
     * **URL to Redirect on click:** Specify the URL to which the button redirects when clicked.
     * **As new tab**: Toggle to open the redirect URL in a new tab.
     * **Workflow**: Assign workflows to execute when the button is clicked.
     * **Open modal**: Select the modal that will load when the button is clicked. _(optional)_
   * **Colors**
     * **Background**: Set the color of the button.
     * **Text**: Set the color of the button's label.
   * **Margin**: Adjust the distance between the button component and its surrounding components.
   * **Padding**: Adjust the size of the button, relative to its label.
   * **Decoration**
     * **Style**: Set the style of the button; 'text', 'outlined', or 'contained'.
     * **Radius**: Adjust the degree of rounded appearance.
   * **Typography**
     * **Override Theme**: Toggle to enable\disable custom styling.
     * **Font Size**: Adjust the font size.
     * **Font Weight**: Adjust the font weight.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Image component</summary>

The image component allows you to integrate visual content into your web applications. This component is essential for conveying information visually and supporting the textual content within your applications.

### What the image component could be used for <a href="#what-the-image-component-could-be-used-for" id="what-the-image-component-could-be-used-for"></a>

* Showcasing product features or service details.
* Enhancing blog posts or articles with relevant visuals.
* Creating a more engaging user interface with graphical elements.
* Displaying logos or other branding materials to strengthen identity.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.19.50 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the image component** <a href="#example-use-case-for-the-image-component" id="example-use-case-for-the-image-component"></a>

An MSP might use the Image component to enhance a tutorial page on their client portal. By incorporating screenshots and diagrams, they can visually guide clients through the steps to set up a VPN or configure email settings on various devices. This not only makes the instructions clearer and more accessible but also reduces the cognitive load on users, potentially decreasing the number of support calls and increasing client satisfaction with the self-service options provided.

### Configure the image component <a href="#configure-the-image-component" id="configure-the-image-component"></a>

1. **Select the component**: Click on the added 'Image' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Source URL**: Specify the URL of the image.
   * **Link**: Specify the URL to which the image redirects when clicked.
   * **Open link as new tab**: Toggle to open the Link URL in a new tab.
   * **In-line styles**: Define custom CSS properties for the component.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Text component</summary>

The text component allows you to incorporate customizable text blocks into your web applications. This component is essential for adding readable content that informs, guides, or communicates with users, making it a fundamental element for building any web-based interface.

### What the text component could be used for <a href="#what-the-text-component-could-be-used-for" id="what-the-text-component-could-be-used-for"></a>

* Displaying informative content like service descriptions, company information, or user guides.
* Showing dynamic text content, such as user names, statuses, or other personalized information.
* Creating headers, labels, or annotations that help users navigate and understand the layout and functions of the application.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.21.23 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the text component** <a href="#example-use-case-for-the-text-component" id="example-use-case-for-the-text-component"></a>

In a service management application, the Text component could be employed to provide detailed descriptions of each service offered, such as network security monitoring, data backup solutions, or technical support services. Each service page could feature headings, subheadings, and paragraphs that explain what the service includes, its benefits, and how clients can subscribe or inquire for more details.

### Configure the text component <a href="#configure-the-text-component" id="configure-the-text-component"></a>

1. **Select the component**: Click on the added 'Text' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Text**: Define the text that will be displayed in the component
   * **Typography**
     * **Text Variant**: Set the style of the text.
     * **Font Size**: Adjust the size of the text.
     * **Align**: Set the alignment of the text in the component; 'Left', 'Center' or 'Right'.
     * **Weight**: Set the weigh of the font; 'Regular', 'Medium' or 'Bold'.
     * **Appearance**
       * **Text**: Set the color of the text.
       * **Shadow**: Adjust the intensity of the text's shadow.
     * **Margin**: Adjust the distance between the text component and its surrounding components.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Link component</summary>

The link component allows you to embed hyperlinks within your apps, enabling users to navigate to different sections with the app or external sites, or even to download resources with just a click.

### What the link component could be used for <a href="#what-the-link-component-could-be-used-for" id="what-the-link-component-could-be-used-for"></a>

* Navigating to different pages within the application.
* Linking to external websites that provide additional information or resources.
* Downloading files, such as PDFs, directly from the application.
* Initiating email communications by linking to "mailto:" addresses, or other, URL syntaxes.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.22.48 AM (1).png" alt=""><figcaption></figcaption></figure>

### **Example use case for the link component** <a href="#example-use-case-for-the-link-component" id="example-use-case-for-the-link-component"></a>

Consider an internal company portal where employees need to access various departments. The Link component could be used to create a central dashboard with links to each department. For instance, clicking on a "Human Resources" link might take an employee to an internal HR page where they can find forms and contact information, streamlining navigation and improving the user experience within the portal.

### Configure the link component <a href="#configure-the-link-component" id="configure-the-link-component"></a>

1. **Select the component**: Click on the added 'Link' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Link Text:** Specify the text for the link.
   * **URL Settings**
     * **Select a page**: Select an existing page in the app to which the link redirects when clicked.
     * **URL to Redirect on click**: Specify the URL to which the button redirects when clicked.
     * **Open as new tab**: Toggle to open the page, or URL, in a new ta&#x62;**.**
   * **Style**
     * **Render as list item**: Toggle to render link in list format. (Useful for when then link is nested in a sidebar component).
   * **Icon**
     * **Disable Link Icon**: Toggle to show\hide icon with link.
     * **Icon**: Specify an icon from [Material UI](https://mui.com/material-ui/material-icons) to show next to link.
     * **Icon Size**: Adjust the size of the icon.
   * **Typography**
     * **Override Theme**: Toggle to enable\disable custom styling.
     * **Text Variant**: Set the font style.
     * **Font Size**: Adjust the font size.
     * **Font Weight**: Adjust the font weight; 'Regular', 'Medium' or 'Bold'.
     * **Colors**
       * **Background**: Set the color of the background.
       * **Text**: Set the color of the text.
   * **Spacing**
     * **Margin**: Adjust the distance between the link component and its surrounding components.
     * **Padding**: Adjust the size of the link, relative to its text.
   * **Decoration**
     * **Radius**: Adjust the degree of rounded appearance.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Menu component</summary>

The menu component enables you to create dynamic navigation menus within your web applications. This component is crucial for structuring the navigation of your site, allowing users to easily access various sections and functionalities offered by your application.

### What the menu component could be used for <a href="#what-the-menu-component-could-be-used-for" id="what-the-menu-component-could-be-used-for"></a>

* Organizing site content into accessible categories and sub-categories.
* Providing quick access to important information like contact details, support sections, and user account areas.
* Supporting responsive designs that adapt to different devices, ensuring seamless navigation on desktops, tablets, and smartphones.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.25.26 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the menu component** <a href="#example-use-case-for-the-menu-component" id="example-use-case-for-the-menu-component"></a>

Consider an MSP that manages a complex array of IT services, including cloud storage solutions, network security, and technical support. The Menu component can be used to structure these services into a well-organized menu in the sidebar of the application. For instance, each major service category could be a menu item, with drop-downs for subcategories like FAQs, pricing, setup guides, and case studies. This organization allows clients to quickly navigate through the services, find the information they need without hassle, and understand the full range of what the MSP offers, thereby improving the user experience and engagement with the platform.

### Configure the menu component <a href="#configure-the-menu-component" id="configure-the-menu-component"></a>

1. **Select the component**: Click on the added 'Menu' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Layout**
     * **Minimum width**: Adjust the minimum width for the component.
   * **Links**
     * **Add new Link**: Specify a new link to add to the menu component
     * **Drag\Drop**: Reorder the links in the menu component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

</details>

### Layout

<details>

<summary>Container component</summary>

The container component allows you to group and organize various UI elements within a structured and styled section. This component is essential for creating visually coherent and logically organized layouts in your web applications.

### What the container component could be used for

* Structuring a page into logical sections to improve visual hierarchy.
* Creating a consistent layout that adapts to different screen sizes, enhancing responsiveness.
* Isolating widget-like components that function independently within a page.
* Serving as a design or thematic boundary for different areas within a single page.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.26.41 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the container component** <a href="#example-use-case-for-the-container-component" id="example-use-case-for-the-container-component"></a>

Imagine setting up a user profile page within an application on the App Builder. The Container component can be strategically utilized to separate information into distinct blocks, such as personal details, contact information, and account settings. Each container ensures that the elements within it, like text fields, images, and buttons, are well-organized and visually distinct from other sections. This not only improves the aesthetics but also enhances the usability of the profile page, making it easier for users to navigate and update their information efficiently.

### Container versus grid container <a href="#container-versus-grid-container" id="container-versus-grid-container"></a>

* **Container Component**: The Container component is a versatile element for structuring content and styling containers. It allows for flexible arrangements but does not enforce a grid structure.
* **Grid Container Component**: The Grid Container component, on the other hand, is specifically designed to create layouts with a grid structure. It simplifies the process of aligning and organizing content in a grid format.&#x20;

### Configure the container component <a href="#configure-the-container-component" id="configure-the-container-component"></a>

1. **Select the component**: Click on the added 'Container' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Override Theme**: Toggle to enable custom styling.
   * **Dimension**
     * **Width (%)**: Specify the width of the container in relation to the canvas.
     * **Height (%)**: Specify the height of the container in relation to the canvas.
   * **Colors**
     * **Background**: Set the color of the component's background.
     * **Text**: Set the color of the component's text.
   * **Margin**: Adjust the distance between the button component and its surrounding components.
   * **Padding**: Adjust the size of the button, relative to its label.
   * **Decoration**
     * **Radius**: Adjust the degree of rounded appearance.
     * Shadow: Adjust the amount of shadowing around the component.
   * **Alignment**
     * **Flex Direction**: Choose the direction of the container's flex items; 'row' or 'column'.
     * **Fill Space**: Toggle to make the container fill all available space.
     * **Align Items:** Align the container's flex items on the cross-axis and main-axis
     * **Justify Content**: Align the container's flex items on the cross-axis and main-axis
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Grid container component</summary>

The grid container component allows you to create organized layouts with a grid structure. This documentation provides instructions on adding a grid container to your canvas and customizing its properties.

### What the grid container component could be used for

* Creating complex page layouts with multiple sections and alignment.
* Ensuring content is responsive and adapts to various screen sizes and orientations.
* Aligning components precisely within a page, enhancing the visual structure.
* Organizing text, images, and interactive elements in a clean, navigable format.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.27.46 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the grid container component** <a href="#example-use-case-for-the-grid-container-component" id="example-use-case-for-the-grid-container-component"></a>

Imagine a real estate website where property listings need to be displayed in an organized manner. The Grid Container can be used to create a uniform grid layout where each property's image, description, and key details are presented in individual grid cells. This setup allows users to easily compare listings and navigate through options without overwhelming visual clutter, enhancing user experience and engagement.

### Grid container versus container <a href="#grid-container-versus-container" id="grid-container-versus-container"></a>

* **Grid Container Component**: The Grid Container component is specifically designed to create layouts with a grid structure. It simplifies the process of aligning and organizing content in a grid format.
* **Container Component**: The Container component, on the other hand, is a versatile element for structuring content and styling containers. It allows for flexible arrangements but does not enforce a grid structure.&#x20;

### Grid container versus grid item <a href="#grid-container-versus-grid-item" id="grid-container-versus-grid-item"></a>

* **Grid Container Component**: The Grid Container acts as the foundational element of a grid layout. It defines the overall grid structure within which Grid Items are placed. It sets the framework for how the grid behaves and how items within it are aligned and distributed.
* **Grid Item Component**: The Grid Item component is used within a Grid Container to place individual elements like text, images, buttons, etc. It represents the content blocks that fill the grid defined by the Grid Container.

### Configure the grid container component <a href="#configure-the-grid-container-component" id="configure-the-grid-container-component"></a>

1. **Select the component**: Click on the added 'Grid Container' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **In-line styles**: Define custom CSS properties for the component.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.[<br>](https://docs.rewst.help/documentation/app-builder/components/grid-item)

</details>

<details>

<summary>Grid item component</summary>

The grid item component is used in conjunction with the grid container to structure and align content within a grid layout. This component allows for precise placement and organization of elements like text, images, buttons, and more within individual grid cells, enabling a clean and responsive design for your web applications.

### What the grid item component could be used for

* Organizing content into columns and rows for better visual hierarchy and readability.
* Creating responsive designs that automatically adjust layout elements based on screen size.
* Aligning and distributing space among elements evenly within a grid layout.
* Enhancing the aesthetic appeal of pages by enabling sophisticated layout designs.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.28.39 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the grid item component** <a href="#example-use-case-for-the-grid-item-component" id="example-use-case-for-the-grid-item-component"></a>

In a client reporting dashboard managed by an MSP, the Grid Item component could be used to organize various performance metrics into a structured layout. Each metric, such as network uptime, system load, and incident response times, could be displayed in individual grid items that are part of a larger grid container. This arrangement not only makes the dashboard more navigable and easier to read but also allows each metric to be resized and reordered effortlessly as per the client’s preference or device being used. This structured approach ensures that critical data is presented in a clear, coherent manner, enhancing the usability of the dashboard.

### Grid item versus grid container <a href="#grid-item-versus-grid-container" id="grid-item-versus-grid-container"></a>

* **Grid Item Component**: The Grid Item component is used within a Grid Container to place individual elements like text, images, buttons, etc. It represents the content blocks that fill the grid defined by the Grid Container.
* **Grid Container Component**: The Grid Container acts as the foundational element of a grid layout. It defines the overall grid structure within which Grid Items are placed. It sets the framework for how the grid behaves and how items within it are aligned and distributed.

### Configure the grid item component <a href="#configure-the-grid-item-component" id="configure-the-grid-item-component"></a>

1. **Select the component**: Click on the added 'Grid Item' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **In-line styles**: Define custom CSS properties for the component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

</details>

<details>

<summary>HTML container component</summary>

The HTML container component allows you to embed custom HTML code directly into your web applications. This component is essential for incorporating bespoke elements, custom scripts, or third-party integrations that enhance the functionality and uniqueness of your applications.

### What the HTML container component could be used for <a href="#what-the-html-container-component-could-be-used-for" id="what-the-html-container-component-could-be-used-for"></a>

* Embedding custom HTML or interactive elements that are not natively supported by the platform.
* Integrating third-party widgets, such as live chat support, ticket information, or weather updates.
* Inserting custom scripts for enhanced tracking, analytics, or dynamic content updates.
* Enhancing pages with bespoke multimedia content, like videos or custom graphics.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.30.00 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the HTML container component** <a href="#example-use-case-for-the-html-container-component" id="example-use-case-for-the-html-container-component"></a>

An MSP could use the HTML Container component to enhance the support section of their client portal by embedding a real-time support ticket status widget. This widget, crafted with custom HTML and JavaScript, could connect directly to your ticketing system to display the current status of a client's support tickets, including open issues, pending actions, and resolved cases.

### Configure the HTML container component <a href="#configure-the-html-container-component" id="configure-the-html-container-component"></a>

1. **Select the component**: Click on the added 'HTML Container' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **In-line styles**: Define custom CSS properties for the component.
   * **In-line HTML**: Define custom HTML code for the component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

</details>

<details>

<summary>Row component</summary>

The row component allows you to organize and align content horizontally within a container. This structural component is essential for creating clean, orderly layouts that enhance both the aesthetics and the functionality of your web applications.

### What the row component could be used for <a href="#what-the-row-component-could-be-used-for" id="what-the-row-component-could-be-used-for"></a>

* Structuring content into horizontal blocks within a webpage.
* Aligning multiple elements, such as buttons, images, or text, within a single horizontal line.
* Creating a base for grid systems that require precise control over the placement and alignment of components.
* Supporting responsive design principles by organizing content in rows that adjust to screen width changes.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.30.51 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the row component** <a href="#example-use-case-for-the-row-component" id="example-use-case-for-the-row-component"></a>

You could use the Row component on a service overview page to align icons or buttons that link to different IT services you offer, such as cybersecurity, cloud infrastructure, and network management. Each service could be represented by an icon and a short description in a separate row element, ensuring that the page is easy to scan and that users can quickly find the service they need. This usage not only makes the page visually attractive but also enhances user navigation and improves overall site organization.

### Configure the row component <a href="#configure-the-row-component" id="configure-the-row-component"></a>

1. **Select the component**: Click on the added 'Row' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Layout**
     * **Height**: Adjust the height of the component.
     * **Alignment**: Set the alignment of the content placed within the row component; 'Space between', 'Start', Center' or 'End'.
     * **Reverse order**: Toggle to reverse the order of the components within the row component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

</details>

### Sections

<details>

<summary>Header component</summary>

The header component allows you to design and implement top-level navigation and branding elements for your web applications. This component is crucial for creating a consistent and professional look across your platform, providing users with accessible navigation and clear identification of your brand.

## What the header component could be used for

* Displaying a company logo and tagline.
* Housing primary navigation links to different sections of the application.
* Integrating quick access tools like search bars, notification icons, or user account settings.
* Highlighting important contact information or support links.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.31.47 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the header component** <a href="#example-use-case-for-the-header-component" id="example-use-case-for-the-header-component"></a>

Consider an MSP that provides a variety of IT services and uses the App Platform to manage client interactions. The Header component can be utilized to prominently display your logo for brand recognition and include navigation links to services, support, account management, and contact pages. This setup ensures that clients can easily navigate the platform, find the information they need quickly, and have constant access to assistance, enhancing overall user satisfaction and engagement with the platform.

### Configure the header component <a href="#configure-the-header-component" id="configure-the-header-component"></a>

1. **Select the component**: Click on the added 'Header' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * App Header
     * **Render App Image**: Toggle to show\hide the App's image.
     * **Render App Icon**: Toggle to show\hide the App Title's icon.
     * **Icon**: Specify an icon from [Material UI](https://mui.com/material-ui/material-icons) to show next to the link.
     * **Icon Size**: Adjust the size of the icon.
     * **Render Link Header**: Toggle to show\hide the App's Title.
   * Tabs
     * **Add new tab**: Specify a new link to add to the header component
     * **Drag\Drop**: Reorder the links in the header component.
   * Menu
     * **Icon URL**: Specify the URL of the Profile Menu icon.
     * **Disable Profile Menu**: Toggle to enable\disable the Profile Menu in the header.
     * **Add new menu item**: Specify a new link to add to the Profile Menu.
     * **Drag\Drop**: Reorder the links in the Profile Menu.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

</details>

<details>

<summary>Sidebar component</summary>

The sidebar component allows you to create a vertical navigation menu or information panel that sits alongside the main content of your web applications. This component provides users with easy access to additional functionalities, navigation links, or supplementary information, without cluttering the main view.

### What the sidebar component could be used for <a href="#what-the-sidebar-component-could-be-used-for" id="what-the-sidebar-component-could-be-used-for"></a>

* Housing primary navigation links that remain accessible regardless of the main content being viewed.
* Displaying user profile information, quick settings, or status indicators.
* Providing quick access to tools like search bars, filters, or action buttons.
* Enhancing the functionality of dashboards by including real-time data feeds or notifications.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.33.19 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case** <a href="#example-use-case" id="example-use-case"></a>

You could use the Sidebar component in a client management system to consistently provide users with access to various sections such as Dashboard, Reports, Settings, Support, and Account Information. For instance, when a user navigates to view detailed reports, the sidebar remains visible, offering the ability to quickly jump to other sections or perform actions like updating account settings or returning to the dashboard. This consistent access improves user experience by making navigation straightforward and reducing the number of steps needed to switch between different parts of the application.

### Configure the sidebar component <a href="#configure-the-sidebar-component" id="configure-the-sidebar-component"></a>

1. **Select the component**: Click on the added 'Sidebar' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Layout**
     * **Position**: Toggle to set the position of sidebar on the canvas; 'Left' or 'Right'.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

[<br>](https://docs.rewst.help/documentation/app-builder/components/row)

</details>

### Data visualization

<details>

<summary>Chart component</summary>

The chart component allows you to group and organize various UI elements within a structured and styled section. This component is essential for creating visually coherent and logically organized layouts in your web applications.

### What the chart component could be used for

* Displaying sales trends and revenue growth over time.
* Comparing the performance metrics of different products or services.
* Visualizing demographic data and user engagement statistics.
* Showcasing real-time data updates such as stock prices or performance metrics.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.34.27 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the chart component** <a href="#example-use-case-for-the-chart-component" id="example-use-case-for-the-chart-component"></a>

An MSP might use the Chart component to visualize client network usage, system performance or support\ticket metrics over time. For instance, line charts could display changes in bandwidth usage or storage capacity across multiple client sites, helping you identify trends, anticipate needs, and allocate resources more effectively. This visualization aids in proactive management and enhances the strategic advising role of the MSP with their clients.

### Configure the chart component <a href="#configure-the-chart-component" id="configure-the-chart-component"></a>

1. **Select the component**: Click on the added 'Chart' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Data Source**
     * **Workflow Input:** Specify the workflow to load.
     * **Max Records to show:** Adjust the number of the records to show.
   * **Chart Options**
     * **Editor View:** Define custom properties for the component.
     * **Open Configuration**: An array of component specific toggle's to modify the overall look and feel of the chart component.
   * **Dataset Options**
     * **Editor View:** Define custom CSS properties for the component.
     * **Add a new dataset**
       * **Data Source**
         * **Data Load Method**: Specify when the chosen workflow will execute; Use Latest Workflow' or 'Run workflow on load', or 'Use workflow stream'.
         * **Workflow**: Specify the workflow to load.
         * **Open in new tab**: Open the specified workflow in a new tab.
         * **Workflow Output**: Specify the output of the workflow to populate the chart.
       * Chart Configuration
         * **Chart Type**: Select the desired chart type, 'line', 'bar', 'doughnut' or 'pie'.
         * **X axis data key**: Select the data point to associate to the X axis.
         * **Y axis data key**: Select the data point to associate to the Y axis.
         * **X Scale type**: Select the desired X-scale type; 'linear', 'logarithmic', 'category', 'time' or 'timeseries'.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

[<br>](https://docs.rewst.help/documentation/app-builder/components/container)

</details>

<details>

<summary>Data table component</summary>

The data table component allows you to display and manage rows of data in a structured, tabular format. This component is essential for MSPs to handle large datasets efficiently, such as client information, service logs, or performance metrics, providing a clear and interactive view of data.

### What the data table component could be used for

* Displaying detailed lists of customer tickets and their statuses.
* Managing inventory levels across multiple client sites.
* Showcasing performance reports with sortable metrics.
* Organizing billing and transaction records for easy access and analysis.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.35.18 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the data table component** <a href="#example-use-case-for-the-data-table-component" id="example-use-case-for-the-data-table-component"></a>

Consider a scenario where an MSP needs to monitor and manage network equipment across various client sites. The Data Table component can be used to list all equipment, displaying columns for device type, status, last service date, and location. Technicians can quickly sort by any column to prioritize devices that require immediate attention or filter to view only certain types of equipment. This use of the Data Table simplifies the management of numerous devices, ensuring that maintenance is timely and no critical issues are overlooked.

### Configure the data table component <a href="#configure-the-data-table-component" id="configure-the-data-table-component"></a>

1. **Select the component**: Click on the added 'Data Table' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Data Source**
     * **Add\Edit Data Source**
       * **Data Load Method**: Specify when the chosen workflow will execute; Use Latest Workflow' or 'Run workflow on load'.
       * **Workflow**: Specify the workflow to load.
       * **Open in new tab**: Open the specified workflow in a new tab.
       * **Workflow Output**: Specify the output of the workflow to populate the data table.
   * **Table Configuration**
     * **Add a column**
       * **Accessor**: Specify the accessor (key) to access the data for the column.
       * **Type**: Set the data type; 'none', 'string', 'number', 'boolean', 'object', 'array' or 'action'.
       * **Header**: Specify the Header for the column.
       * **Button**: Select the desired icon for the button.
       * **Button Function**: Set the behavior of the button when clicked; 'Run a Workflow', 'Open a link' or 'Run Typescript'.
         * **Workflow**: Select the workflow to run
         * **Link**: Specify the URL to redirect to.
       * **Run Function on edit**: Toggle to run the button function when the component is edited.
       * **Reload Table after function**: Toggle to allow a refresh of the data table content once the function has completed.
     * **Edit Column**
       * **Accessor**: Specify the accessor (key) to access the data for the column.
       * **Type**: Set the data type; 'none', 'string', 'number', 'boolean', 'object', 'array' or 'action'.
       * **Header**: Specify the Header for the column.
       * **Add a condition**: Set rules to dynamically alter the styling of the cell data.
       * **Column Specific Configuration**
         * **Enable Editing** - Toggle to enable\disable editing of data in the column.
         * **Enable Click To Copy** - Toggle to enable\disable copying of data in the column.
         * **Enable Column Dragging** - Toggle to enable\disable column resizing.
         * **Enable Column Ordering** - Toggle to enable\disable column ordering.
         * **Enable Column Sorting** - Toggle to enable\disable column sorting.
         * **Enable Column Actions** - Toggle to enable\disable column actions.
       * **Column Aggregation Settings**
         * **Aggregate Group Function** - Specify a method to group similar values.
         * **Aggregate Footer Function** - Specify a method to count\visualize values.
       * **Edit Table Configuration**: An array of component specific toggle's to modify the overall look and feel of the data table component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

### Detailed example: Add data table component to page <a href="#detailed-example-add-data-table-component-to-page" id="detailed-example-add-data-table-component-to-page"></a>

1. Navigate to **App Builder > Apps**. Click on your **Hello World** app.
2. Click ![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FCZo6ldGnH6mI54IKvYHU%252FScreenshot%25202025-03-14%2520at%252010.07.35%25E2%2580%25AFAM.png%3Falt%3Dmedia%26token%3D604f834d-4e7b-4ae9-8e89-7f68afc1c8f9\&width=300\&dpr=4\&quality=100\&sign=4f42465e\&sv=2)in the left side menu of the App Builder canvas. This will open the full component library.
3. Click **Data Table**, under **Data Visualization**. Drag it onto the canvas.
4. Click **No Records Found. Add a Data Source**.
5. Choose **Run Workflow on Load**.
   1. Whenever the page is loaded, the latest data will pull into it.
   2.  Alternatively, **Use Latest Workflow** could be used if you were returning data on a cron and didn't want to load it each time.&#x20;

       <figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FmVmXQ4VZuUJ9HXLvrbXU%252Fdata%2520test%25201-min.png%3Falt%3Dmedia%26token%3Dcd1d8f2c-2ed0-4912-a408-6ed28ae1c05f&#x26;width=300&#x26;dpr=4&#x26;quality=100&#x26;sign=e7226764&#x26;sv=2" alt=""><figcaption></figcaption></figure>
6.  Choose **form\_output** in the **Workflow Output** drop-down selector. Once the workflow has finished, you'll see that option in the available list.&#x20;

    <figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2F1835401289-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FAQQ1EHVcEsGKBPVHmiav%252Fuploads%252FeUVPJGuGdqK4ED04AGk9%252Fdata%2520test%25202-min.png%3Falt%3Dmedia%26token%3D534e804a-3afd-4889-9f6f-fd7a7b4b2d35&#x26;width=300&#x26;dpr=4&#x26;quality=100&#x26;sign=ec4d3dac&#x26;sv=2" alt=""><figcaption></figcaption></figure>
7. Click **Submit**.
8. Click **Hide View Column**. This will hide columns that you don't need to display to the user. Next to View and Trigger ID, click **⋮** and select **Hide X Column**.

<figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2Fa706e094-8e7b-4676-aca4-9abb1d30331a%2F2.5%2F72.765285881591%2F49.511276501204%3F0&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=8fea118f&#x26;sv=2" alt=""><figcaption></figcaption></figure>

9\. Click the **Hide Trigger Id** column

10\. Click on Add a Column

Now let's make sure the user can actually get to the form, rather than just view a list.

<figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2Fafb45bf1-5d11-4abc-8f84-bf09180133a2%2F2.5%2F95.814812408871%2F45.048936679245%3F0&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=a61f41ce&#x26;sv=2" alt=""><figcaption></figcaption></figure>

11\. In the Accessor dropdown, select the **view** key. By leaving the URL blank later on, the action button will automatically use the value from this key. In the Jinja from the last step, we made sure the value was the link to that form.



12\. Change the Type

Change the Type to **action.**

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2F0090aae6-a97f-4852-ad90-894040ec6c25%2F2.2922731242124%2F50.012881778879%2F77.418572277013%3F0\&width=768\&dpr=4\&quality=100\&sign=e31ebe81\&sv=2)

13\. Change the column name. Add a header, which is the column name for this action button.



<figure><img src="https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2F60004a87-993c-4eb8-8c8b-8ef38c0ee908%2F2.2921757115931%2F50.000996727961%2F57.1015980728%3F0&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=1b7e348c&#x26;sv=2" alt=""><figcaption></figcaption></figure>

14\. Under the Button Function, select the **Open a link** option.

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2Fcf473677-1249-4095-b425-cc2d6186dd55%2F2.5%2F32.113830899932%2F75.584077045205%3F0\&width=768\&dpr=4\&quality=100\&sign=c204843d\&sv=2)

15\. If you want to make your data table more user friendly, add a tooltip to let them know what's going to happen.

16\. Click the **Play** button in the top right. This is a test button that runs the page as if you navigated to it normally. You should see a list of forms returned with an action column. If you click the link, you should go directly to that form.

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2F13730382-b4db-43de-a7f9-9b159a18c9b0%2F2.5%2F93.848828559866%2F1.1339103645518%3F0\&width=768\&dpr=4\&quality=100\&sign=9f27af7b\&sv=2)

17\. Click **Publish**.

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2F11591c77-f6f5-4a1a-ab02-e7e0b1cf3c4b%2F2.5%2F99.666096453609%2F0.43721714535275%3F0\&width=768\&dpr=4\&quality=100\&sign=3935ad22\&sv=2)

18\. At the top of the menu bar, you'll see a url that is unique to your app. Clicking this navigates to the page itself, the same one you'll send to your users.

![](https://docs.rewst.help/~gitbook/image?url=https%3A%2F%2Fd3q7ie80jbiqey.cloudfront.net%2Fmedia%2Fimage%2Fzoom%2Fc2fb15ed-2320-42d1-a08a-2c2eb4421de4%2F2.5%2F53.71904729945%2F1.1118548791515%3F0\&width=768\&dpr=4\&quality=100\&sign=feefbf6c\&sv=2)



### Data table component settings

#### Data source settings

Configure how your data table loads and displays data from workflows:

| Setting            | Description                                                         | Options                                                                                                                                                                                  |
| ------------------ | ------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Workflow           | The workflow that provides data to the table                        | Select from available workflows                                                                                                                                                          |
| Output Key         | Which key from the workflow result contains your table data         | String (e.g., "data", "results")                                                                                                                                                         |
| Data Load Method   | How the table fetches data                                          | • Run Workflow on Load - Execute workflow when table mounts• Use Latest Workflow - Display most recent workflow execution• Use Workflow Stream - Subscribe to real-time workflow updates |
| Workflow Input     | Input parameters to pass to the workflow                            | Key-value pairs                                                                                                                                                                          |
| Use Page Variables | Automatically pass all page variables as workflow input             | Boolean (default: false)                                                                                                                                                                 |
| Watch Node IDs     | Form components that trigger automatic table refresh when submitted | Array of component IDs                                                                                                                                                                   |
|                    |                                                                     |                                                                                                                                                                                          |

### Column configuration

Each column supports extensive customization through both basic properties and advanced features inherited from Material React Table.

#### Basic column properties

| Setting      | Description                                                                        | Type                                           |
| ------------ | ---------------------------------------------------------------------------------- | ---------------------------------------------- |
| Header       | Display name shown in the column header                                            | Text                                           |
| Accessor Key | The data field path this column displays (supports nested paths like "user.email") | Text                                           |
| Column Type  | Data type for the column                                                           | String, Number, Boolean, Object, Array, Action |
| Show Column  | Whether the column is visible by default                                           | Boolean (default: true)                        |
| Size         | Default column width in pixels                                                     | Number (default: 180px)                        |
| Min Size     | Minimum width when resizing                                                        | Number (default: 40px)                         |
| Max Size     | Maximum width when resizing                                                        | Number (default: 1000px)                       |

#### Column behavior settings

| Setting                | Description                                                           | Default |
| ---------------------- | --------------------------------------------------------------------- | ------- |
| Enable Editing         | Allow inline editing of cell values in this column                    | True    |
| Enable Click to Copy   | Click cell to copy value to clipboard (useful for IDs, emails, URLs)  | False   |
| Enable Column Dragging | Allow users to reorder columns by dragging the header                 | True    |
| Enable Column Ordering | Allow column to participate in reordering                             | True    |
| Enable Sorting         | Allow users to sort table by this column (shift+click for multi-sort) | True    |
| Enable Column Actions  | Show column menu with options to hide, pin, group, or filter          | True    |

#### Column format and display

| Setting             | Description                         | Options                           |
| ------------------- | ----------------------------------- | --------------------------------- |
| Format              | Display format for values           | date-time or custom format string |
| Enum                | Restrict values to specific options | Array of strings                  |
| Edit Variant        | Input type when editing             | text (default), select            |
| Edit Select Options | Options for select dropdown editors | Array of { label, value } objects |

#### Aggregation and grouping

When rows are grouped, columns can display aggregated values:

| Setting                     | Description                                   | Available Functions                                    |
| --------------------------- | --------------------------------------------- | ------------------------------------------------------ |
| Aggregation Function        | How to aggregate values when rows are grouped | sum, avg, count, min, max, median, unique, uniqueCount |
| Aggregation Footer Function | How to display aggregate in table footer      | Same as above                                          |

Custom Aggregation Cells: You can write custom React components to render aggregated values using the Custom Aggregated Cell code editor.

#### Action columns

Action columns display buttons that trigger workflows, open links, run scripts, or show dialogs:

| Setting                  | Description                                      | Options                                                                                                                       |
| ------------------------ | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------- |
| Button                   | Icon displayed on the action button              | Material icon name (e.g., "Edit", "Delete", "Visibility")                                                                     |
| Button Function          | What the button does when clicked                | • Workflow - Execute a workflow• Link - Open a URL• Script - Run custom TypeScript code• Dialog - Open a page as modal dialog |
| Button Function Workflow | Workflow to execute                              | Select from available workflows                                                                                               |
| Button Function Link     | URL to open (supports template variables)        | URL string                                                                                                                    |
| Button Function Script   | Custom TypeScript code to execute                | Code editor                                                                                                                   |
| Button Function Dialog   | Page to open as dialog                           | Select page                                                                                                                   |
| Button Confirmation      | Confirmation style before executing action       | • Default - No confirmation• Icon - Show confirmation icon/tooltip• Dialog - Open confirmation dialog                         |
| Confirmation Tooltip     | Tooltip text shown before action executes        | Text                                                                                                                          |
| Workflow Tooltip         | Tooltip text for the action button               | Text                                                                                                                          |
| Run on Edit              | Automatically execute action when row is edited  | Boolean (default: false)                                                                                                      |
| Reload Table             | Refresh table data after action completes        | Boolean (default: false)                                                                                                      |
| Use Hidden Column Data   | Include hidden column data when executing action | Boolean (default: false)                                                                                                      |

#### Conditional formatting

Apply dynamic styling or behavior based on cell/row values:

| Setting      | Description                                                           |
| ------------ | --------------------------------------------------------------------- |
| Conditions   | Array of condition rules to evaluate                                  |
| Action Type  | What to apply when condition is met: Set Background Color, Set Values |
| Action Value | The value to apply (e.g., hex color #ff5252 for background)           |

Example Use Cases:

* Highlight overdue items in red
* Show "Active" status in green, "Inactive" in gray
* Apply warning colors based on numeric thresholds

#### Custom cell rendering

For maximum flexibility, write custom React/TypeScript components using the built-in code editor:

| Component Type         | Description                                                   |
| ---------------------- | ------------------------------------------------------------- |
| Custom Cell            | Custom React component for normal cell display                |
| Custom Aggregated Cell | Custom component for cells displaying grouped/aggregated data |
| Custom Footer          | Custom component for footer cells                             |

Features:

* Full TypeScript support with IntelliSense
* Access to row data, cell value, and table instance
* RoboRewsty AI assistant for code generation
* Live preview of rendered component

### Table configuration settings

These settings control the overall behavior and appearance of your data table, organized by feature area.

#### Layout and display

| Setting                   | Description                                   | Options                                                                                                          | Default |
| ------------------------- | --------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ------- |
| Layout Mode               | How the table calculates column widths        | • semantic - Browser auto-sizing• grid - CSS grid with proportional growth• grid-no-grow - Fixed absolute widths | grid    |
| Enable Sticky Header      | Keep header visible when scrolling vertically | Boolean                                                                                                          | True    |
| Enable Full Screen Toggle | Show button to expand table to full screen    | Boolean                                                                                                          | True    |

#### Pagination

Control how data is paginated and displayed across multiple pages:

| Setting                | Description                                                     | Default |
| ---------------------- | --------------------------------------------------------------- | ------- |
| Enable Pagination      | Show pagination controls and limit rows per page                | True    |
| Page Size              | Number of rows to display per page                              | 10      |
| Auto Reset Page Index  | Return to first page when sorting/filtering changes             | True    |
| Paginate Expanded Rows | Include expanded detail panels and sub-rows in pagination count | False   |

Note: Pagination is client-side by default. All data is loaded at once and paginated in the browser for optimal performance with datasets up to a few thousand rows.

#### Row expansion and detail panels

Configure how rows expand to show additional information:

| Setting           | Description                                                         | Default |
| ----------------- | ------------------------------------------------------------------- | ------- |
| Enable Expanding  | Allow rows to expand showing hierarchical sub-rows or detail panels | True    |
| Enable Expand All | Show "expand all/collapse all" toggle button                        | True    |
| Hide Detail Panel | Hide the detail panel even if expanding is enabled                  | False   |

Two types of expansion:

1. Sub-Rows -hierarchical data: For nested data structures where each row can contain child rows of the same type. Example: Organization → Departments → Teams
2. Detail panels - supplementary info: For showing additional information about a single row. Example: User row expands to show activity history, preferences, etc.

### Editing

Enable inline or modal editing of table data:

| Setting           | Description                       | Options                                                                                                                                                                       | Default |
| ----------------- | --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| Enable Editing    | Allow users to edit cell values   | Boolean                                                                                                                                                                       | True    |
| Edit Display Mode | How the editing interface appears | • cell - Double-click to edit individual cells• row - Edit entire row inline with save/cancel• modal - Open dialog to edit one row• table - All cells editable simultaneously | cell    |

{% hint style="warning" %}
Important: Enabling editing only updates the table UI. You must configure action columns or workflows to persist changes to your data source.
{% endhint %}

### Column features

Control user interactions with columns:

| Setting                | Description                                                                          | Default |
| ---------------------- | ------------------------------------------------------------------------------------ | ------- |
| Enable Column Pinning  | Allow pinning columns to left or right (keeps them visible during horizontal scroll) | True    |
| Enable Column Resizing | Allow users to drag column borders to resize widths                                  | True    |
| Enable Column Dragging | Allow reordering columns by dragging headers                                         | True    |
| Enable Column Ordering | Allow columns to participate in reordering                                           | True    |

Column Pinning Best Practice: Use layoutMode: 'grid-no-grow' for fixed column widths when pinning to prevent columns from collapsing during horizontal scrolling.

#### Grouping and aggregation

Group rows by column values and display aggregated summaries:

| Setting             | Description                                                    | Options                                                                                                                       | Default |
| ------------------- | -------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ------- |
| Enable Grouping     | Allow users to group rows by dragging columns to the drop zone | Boolean                                                                                                                       | True    |
| Grouped Column Mode | How grouped columns are displayed                              | • false - Keep in original position• reorder - Move to first columns• remove - Hide grouped columns, show only in expand area | False   |

How grouping works:

1. Users drag column headers to the grouping drop zone (or use column menu)
2. Table reorganizes rows into groups based on unique values
3. Grouped rows can be collapsed/expanded
4. Aggregation functions calculate summaries for each group
5. Multi-level grouping supported (group by Status, then by Priority)

### Toolbar customization

Configure the top and bottom toolbars:

| Setting                         | Description                                                             | Default |
| ------------------------------- | ----------------------------------------------------------------------- | ------- |
| Enable Bottom Toolbar           | Show toolbar at bottom of table (typically contains pagination)         | True    |
| Enable Toolbar Internal Actions | Show built-in toolbar buttons (refresh, density, export, columns, etc.) | True    |
| Hide Workflow Input Button      | Hide the button that opens workflow input configuration                 | True    |

Built-in toolbar actions include:

* Refresh table data
* Toggle density (compact/comfortable/spacious)
* Show/hide columns
* Toggle fullscreen
* Export data

### State management

The data table maintains state for various user interactions. These are typically managed automatically but can be controlled programmatically:

| State Property          | Description                                                  |
| ----------------------- | ------------------------------------------------------------ |
| Grouping                | Array of column IDs currently being grouped by               |
| Sorting                 | Array of sort configurations { id: columnId, desc: boolean } |
| Column Visibility       | Object mapping column IDs to visibility boolean              |
| Column Order            | Array of column IDs defining display order                   |
| Column Pinning          | Object with { left: string\[], right: string\[] } arrays     |
| Column Sizing           | Object mapping column IDs to width numbers                   |
| Pagination              | Object with { pageIndex: number, pageSize: number }          |
| Expanded                | Object mapping row IDs to expansion state                    |
| Workflow Output Columns | Auto-generated column definitions from workflow schema       |

### Advanced features

### Automatic table refresh

Configure the table to automatically refresh when specific events occur.

Example: After a user submits a "Create User" form, automatically refresh the users table to show the new entry.

### AI-powered custom components

The RoboRewsty AI assistant helps you write custom cell rendering code:

1. Open column configuration
2. Select "Custom Cell" option
3. Describe what you want in natural language
4. RoboRewsty generates React/TypeScript code
5. Preview and refine the component

Use cases:

* Format currency with custom symbols and decimals
* Display progress bars or badges
* Render images or avatars from URLs
* Create complex layouts combining multiple fields

### Schema-based column generation

#### Multi-column sorting

Hold Shift while clicking column headers to sort by multiple columns simultaneously. The sort order indicator shows the sequence.

Example: Sort by Status (ascending), then by Priority (descending), then by Due Date (ascending).

#### Click to copy

Enable on columns containing data users frequently need to copy (IDs, emails, URLs). A copy button appears on hover, providing one-click clipboard access.

#### Column actions menu

Each column header can display a menu (three dots icon) with options to:

* Hide column
* Pin left/right
* Group by this column
* Adjust column size
* Clear sorting

</details>

### Automation

{% hint style="info" %}
All components in this section of the component library require you to drag a button component to your canvas before adding. Think of the button as the trigger that will kick off the workflow once clicked. Adding any of the automation components with a button is the App Builder way of creating an ad-hoc form.

Whenever you add a button to a page, you'll need to choose the workflow that will execute when you click that button by selecting it from the drop-down in the right side button configuration menu. Then, go to any of the input fields for your automation component. At the bottom you'll find workflow input settings with a drop-down list of inputs you can select. That particular component will be passing the selected info into the workflow. <br>
{% endhint %}

<details>

<summary>Form component</summary>

The form component allows you to present rewst forms for data entry, ensuring that data is collected efficiently from users, clients, or internal staff.

### What the form component could be used for

* Collecting service requests from clients.
* Onboarding new customers or employees.
* Conducting surveys to gauge client satisfaction.
* Scheduling service appointments or calls.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.36.05 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for the form component** <a href="#example-use-case-for-the-form-component" id="example-use-case-for-the-form-component"></a>

Imagine an MSP that needs to onboard new clients and gather detailed information about their IT infrastructure. The Form component can be used to present an existing rewst form that clients fill out online. This form might include fields for company details, types of services required, existing hardware and software inventory, and preferred contact methods. Once submitted, the form data is automatically integrated into a rewst workflow that consumes that data, facilitating a smooth and organized onboarding process that enhances client experience and administrative efficiency.

### Configure the form component <a href="#configure-the-form-component" id="configure-the-form-component"></a>

1. **Select the component**: Click on the added **Form** component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Form**: Specify the workflow to load.
   * **Trigger**: Specify the trigger to load when loading the form.
   * **Colors**
     * **Mode**: Set the color mode of the form to **Light** or **Dark**.
     * **Background**: Set the color of the component's background.
     * **Primary:** Set the color of the component's text.
   * **Functions**
     * **Redirect on Submit**: Specify the URL to which the Submit redirects when a user once clicked.
3. **Live Preview**: The canvas provides a live preview of your configured components once you've made changes.

</details>

<details>

<summary>Text field component</summary>

The text field component allows you to integrate interactive forms or fields that capture user inputs essential for triggering and controlling workflows within your web applications.

### What text field could be used for <a href="#what-workflow-input-could-be-used-for" id="what-workflow-input-could-be-used-for"></a>

* Gathering parameters before executing a workflow, such as user preferences or specific requirements.
* Allowing users to initiate workflows that require real-time data, such as support ticket submissions or service requests.
* Enabling configuration changes that affect how services are delivered, such as scheduling backups or setting notification preferences.
* Facilitating user interactions that trigger complex sequences of tasks, enhancing dynamic response capabilities.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 11.30.09 AM.png" alt=""><figcaption></figcaption></figure>

### **Example use case for text field** <a href="#example-use-case-for-workflow-input" id="example-use-case-for-workflow-input"></a>

In an MSP’s client management system, the text field component might be used on a service configuration page where clients can enter their preferences for data backup services—choices like backup frequency, data cap, and specific folders to include. These inputs could then directly trigger a personalized backup workflow, ensuring that the service aligns perfectly with the client's specified needs. This approach not only automates the process based on real-time inputs but also enhances user satisfaction by providing customized service delivery.

### Add text field to your page <a href="#add-workflow-input-to-your-page" id="add-workflow-input-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Builder.
2. **Drag-and-Drop**: Locate the 'Text Field' component in the component library, then drag and drop it onto the canvas.

### Configure the workflow input component <a href="#configure-the-workflow-input-component" id="configure-the-workflow-input-component"></a>

1. **Select the component**: Click on the added component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * Text Field Settings
     * **Input Label**: Define the label for the input.
     * **Input Type**: Define the type of the expected input; 'Text' or 'Slider'.
     * **Input Variant**: Define the variant of expected input; 'Standard', "Outlined' or 'Filled'.
     * **Input Variabl**e: Define the input variable.
3. **Live Preview**: The canvas provides a live preview of your configured component once you've made changes.

[<br>](https://docs.rewst.help/documentation/app-builder/components/text)

</details>

<details>

<summary>Dropdown component</summary>

The dropdown component allows you to integrate a drop-down selector, triggered by a button, that's similar to what exists in Rewst's regular form builder.

### What dropdown could be used for <a href="#what-workflow-input-could-be-used-for" id="what-workflow-input-could-be-used-for"></a>

* Add options
* Link it to a workflow to get an options generator's information

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-03 at 12.25.41 PM.png" alt=""><figcaption></figcaption></figure>



</details>

<details>

<summary>Number input component</summary>

The number input component allows you to integrate interactive forms or fields that capture number inputs essential for triggering and controlling workflows within your web applications.

### What text field could be used for <a href="#what-workflow-input-could-be-used-for" id="what-workflow-input-could-be-used-for"></a>

* Gathering parameters before executing a workflow, such as specific user requirements.
* Allowing users to initiate workflows that require real-time data, such as support ticket submissions or service requests.
* Facilitating user interactions that trigger complex sequences of tasks, enhancing dynamic response capabilities.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-03 at 12.26.38 PM.png" alt=""><figcaption></figcaption></figure>





</details>

<details>

<summary>Switch component</summary>

The switch component offers an easy on-off toggle for your page. The toggle operates on a true-false logic.

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-03 at 12.27.19 PM.png" alt=""><figcaption></figcaption></figure>

</details>

## Custom components

App Builder's custom components function as a way for you to save your own component grouping, configured in a container, to your component library for future use.&#x20;

{% hint style="info" %}
Custom components can't be deleted from your component library once created. They can be renamed.

Once a custom component has been added, it will show up for you and all Rewst users in your MSP who have App Builder access.
{% endhint %}

### Create a custom component

1. Drag your desired components to the canvas.
2. Click <img src="../../.gitbook/assets/Screenshot 2025-09-03 at 11.48.10 AM.png" alt="" data-size="line"> to the right of **Container** to open the **Custom Component** dialog.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-09-03 at 11.47.13 AM.png>)
3.  Enter text into the **Component Name** and **Description** fields. Note that you can rename custom component as needed, but should give them clear names that explain their intended usage. <br>

    <figure><img src="../../.gitbook/assets/Screenshot 2025-09-03 at 11.47.20 AM.png" alt=""><figcaption></figcaption></figure>
4. Click **Submit**.
5. Your custom component will now be viewable in the separate <img src="../../.gitbook/assets/Screenshot 2025-09-03 at 11.55.44 AM.png" alt="" data-size="line"> tab of the component library.\
   ![](<../../.gitbook/assets/Screenshot 2025-09-03 at 11.55.26 AM.png>)



### Edit custom components

1. Locate your custom component in the **Custom Components** tab of your component library.
2. Click **⋮**. This will open the **Edit Custom Component** dialog.
3. &#x20;Note that you can change settings to your component, but not add or remove components from your original container grouping. For significant changes, you'll want to make a brand new custom component and save it to your library.
4. Click **Submit** when changes are complete.<br>

<figure><img src="../../.gitbook/assets/Screenshot 2025-09-03 at 12.09.04 PM.png" alt=""><figcaption></figcaption></figure>

## App Builder Available MUI icons

App Builder provides a curated selection of [Material-UI (MUI) icons](https://mui.com/material-ui/material-icons/) that can be used throughout your applications. These icons are available for use in buttons, data table columns, and other UI components.

See our total list of available icons by clicking the expanders below, arranged alphabetically.

<details>

<summary>A</summary>

`Abc` · `AccessTime` · `AccessTimeFilled` · `AccountBalance` · `AccountBalanceSharp` · `AccountBalanceWallet` · `AccountCircle` · `AccountTree` · `AccountTreeRounded` · `AccountTreeSharp` · `AcUnit` · `AcUnitRounded` · `Add` · `AddCircle` · `AddCircleOutline` · `AddCircleSharp` · `AddLink` · `AddModerator` · `AddReaction` · `AddTask` · `AdminPanelSettings` · `Alarm` · `AlignHorizontalLeft` · `AllInbox` · `AltRoute` · `Api` · `AppBlocking` · `AppRegistration` · `AppRegistrationSharp` · `Apps` · `Architecture` · `ArrowBack` · `ArrowCircleRightOutlined` · `ArrowCircleUp` · `Article` · `Assessment` · `Assignment` · `AssignmentInd` · `AttachMoney` · `AttachMoneySharp` · `AutoAwesome` · `AutoFixHigh` · `AutoMode` · `AutoStories`

</details>

<details>

<summary>B</summary>

`BackHand` · `Backup` · `Badge` · `Ballot` · `BarChart` · `Bedtime` · `BeenhereSharp` · `Blind` · `Block` · `BlurOn` · `Bolt` · `Book` · `Bookmark` · `BookmarkBorder` · `BugReport` · `BugReportTwoTone` · `Build` · `Business`

</details>

<details>

<summary>C</summary>

`Calculate` · `CalendarMonth` · `Call` · `CallSplit` · `CameraEnhanceTwoTone` · `CancelScheduleSend` · `CardTravel` · `Cast` · `ChangeHistory` · `Chat` · `ChatBubbleRounded` · `Check` · `CheckBox` · `CheckBoxSharp` · `Checklist` · `Cloud` · `CloudDownload` · `CloudQueue` · `CloudUpload` · `ColorLens` · `CompareArrows` · `Computer` · `ComputerTwoTone` · `ConfirmationNumber` · `ConfirmationNumberOutlined` · `ConfirmationNumberTwoTone` · `Construction` · `ContactEmergency` · `ContactMail` · `ContactMailOutlined` · `ContactPage` · `ContactSupport` · `ContactSupportRounded` · `ContentCopy` · `CorporateFare` · `Cottage` · `CreditScore` · `CrisisAlert` · `CurrencyBitcoin` · `CurrencyExchange` · `CurrencyPound`

</details>

<details>

<summary>D</summary>

`Dangerous` · `Dashboard` · `Delete` · `DeleteForever` · `DensityLarge` · `DensityMedium` · `DensitySmall` · `Description` · `DesktopAccessDisabled` · `DesktopMac` · `DesktopMacRounded` · `DesktopWindows` · `DeveloperBoard` · `DeveloperMode` · `Devices` · `Dialpad` · `DirectionsRun` · `Dns` · `DocumentScannerOutlined` · `DoneAll` · `DoNotDisturbOnSharp` · `DownhillSkiing` · `Dvr` · `DynamicFeed` · `DynamicForm`

</details>

<details>

<summary>E</summary>

`Edit` · `EditCalendar` · `EditNote` · `ElectricBolt` · `ElectricCar` · `Elevator` · `Email` · `EmojiEmotions` · `EmojiEvents` · `EmojiPeople` · `Engineering` · `EnhancedEncryption` · `Equalizer` · `Error` · `EventAvailable` · `EventBusy` · `ExitToApp` · `ExitToAppSharp`

</details>

<details>

<summary>F</summary>

`Face` · `Facebook` · `FaceRetouchingOff` · `Fax` · `Feed` · `Feedback` · `FeedRounded` · `FileOpen` · `Filter1TwoTone` · `Filter2TwoTone` · `Filter9Plus` · `Fingerprint` · `FirstPage` · `Flag` · `FlashOn` · `Folder` · `FolderShared` · `FormatAlignJustify` · `FormatListNumbered` · `FormatListNumberedTwoTone` · `ForwardToInbox`

</details>

<details>

<summary>G</summary>

`Gif` · `GiteTwoTone` · `GppGoodOutlined` · `Group` · `GroupAdd` · `GroupRemove` · `Groups` · `Groups2` · `Groups3` · `Groups3TwoTone` · `GroupsRounded`

</details>

<details>

<summary>H</summary>

`Handshake` · `Handyman` · `HeadsetMic` · `Healing` · `Help` · `HelpOutline` · `HighlightOff` · `Home` · `HomeRepairService` · `HomeTwoTone` · `House`

</details>

<details>

<summary>I</summary>

`Image` · `ImportantDevices` · `Inbox` · `Info` · `InfoSharp` · `InsertDriveFile` · `InsertLink` · `InsertPageBreakSharp` · `InstallDesktop` · `Inventory` · `Inventory2Outlined`

</details>

<details>

<summary>K</summary>

`Key` · `KeyboardDoubleArrowLeft`

</details>

<details>

<summary>L</summary>

`Lan` · `Language` · `Laptop` · `LaptopTwoTone` · `Launch` · `LayersClear` · `Leaderboard` · `LibraryBooks` · `Lightbulb` · `LineAxis` · `Link` · `LinkedIn` · `Liquor` · `List` · `ListAltTwoTone` · `LocalFireDepartment` · `LocalOffer` · `LocalPhone` · `LocalShipping` · `LocationOn` · `Lock` · `LockClock` · `LockClockRounded` · `LockPerson` · `LockReset` · `LockResetSharp` · `Logout`

</details>

<details>

<summary>M</summary>

`ManageAccounts` · `Map` · `MarkEmailRead` · `Mediation` · `MemoryRounded` · `Menu` · `MenuBook` · `Message` · `Microsoft` · `MilitaryTech` · `MiscellaneousServices` · `MonitorHeart` · `MoodBad` · `Museum`

</details>

<details>

<summary>N</summary>

`NetworkPing` · `NoAccounts` · `Note` · `NoteAdd` · `Notifications`

</details>

<details>

<summary>O</summary>

`OpenInBrowser` · `OpenInNew`

</details>

<details>

<summary>P</summary>

`Pages` · `Pageview` · `Paid` · `Password` · `Payment` · `PendingActions` · `People` · `PeopleAlt` · `PeopleAltTwoTone` · `PermContactCalendar` · `PermIdentity` · `PermMedia` · `Person` · `PersonAdd` · `PersonAddAlt` · `PersonAddAlt1` · `PersonAddAltRounded` · `PersonAddSharp` · `PersonOff` · `PersonOffSharp` · `PersonRemove` · `PersonRemoveAlt1` · `Phone` · `PhoneAndroid` · `PhoneForwardedOutlined` · `PhoneInTalk` · `Phonelink` · `PhonelinkLock` · `Phishing` · `PlayCircle` · `PlusOne` · `PointOfSale` · `Policy` · `PostAdd` · `PrecisionManufacturing` · `PrecisionManufacturingSharp` · `Preview` · `PriceChange` · `Print` · `PrivacyTip` · `Public` · `PublishedWithChanges` · `PunchClock`

</details>

<details>

<summary>Q</summary>

`QrCode` · `QueryStats` · `QuestionMark` · `Quiz`

</details>

<details>

<summary>R</summary>

`RamenDining` · `Receipt` · `ReceiptLong` · `RecentActors` · `Refresh` · `RemoveCircle` · `RemoveFromQueue` · `RemoveRedEye` · `RemoveRedEyeOutlined` · `Replay` · `Report` · `ReportProblem` · `ReportProblemRounded` · `RequestQuote` · `RestorePage` · `Rocket` · `RocketLaunch` · `RoomService` · `Router` · `Rowing` · `RuleFolder`

</details>

<details>

<summary>S</summary>

`Save` · `SaveAs` · `SaveOutlined` · `SaveRounded` · `ScheduleSend` · `Schema` · `School` · `Science` · `Score` · `ScreenshotMonitor` · `Search` · `Security` · `SecurityRounded` · `SelfImprovement` · `Sell` · `Send` · `SendTimeExtension` · `SentimentSatisfiedAlt` · `Settings` · `SettingsEthernet` · `SettingsRemote` · `SettingsSharp` · `SettingsSuggest` · `ShareLocation` · `Shield` · `ShoppingCart` · `SmartphoneTwoTone` · `SmartToy` · `SmartToyTwoTone` · `SmsFailedRounded` · `Source` · `SpaceDashboard` · `SpeakerNotesOutlined` · `Speed` · `StackedBarChart` · `Star` · `StarRate` · `Storage` · `Store` · `Storefront` · `Subscriptions` · `Summarize` · `SummarizeSharp` · `SupervisedUserCircleSharp` · `SupportAgent` · `Sync` · `SyncAlt`

</details>

<details>

<summary>T</summary>

`TableChart` · `TableChartTwoTone` · `TableRows` · `Task` · `TempleBuddhist` · `Terminal` · `TerminalTwoTone` · `Timeline` · `Timer` · `TipsAndUpdates` · `Toll` · `Tonality` · `TravelExplore` · `Troubleshoot` · `Tune` · `Twitter`

</details>

<details>

<summary>V</summary>

`VerifiedOutlined` · `VerifiedUser` · `VideogameAsset` · `ViewList` · `ViewListTwoTone` · `Visibility` · `VpnKey` · `VpnLock`

</details>

<details>

<summary>W</summary>

`Warehouse` · `WarningRounded` · `Watch` · `WavingHand` · `WavingHandOutlined` · `Wifi` · `WifiOff` · `WorkOutlined` · `WysiwygRounded`

</details>

### MUI icon categories

Here are some common use cases for icons.

| Category                     | Icons                                                                                                                           |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| **Actions and navigation**   | `Add`, `AddCircle`, `ArrowBack`, `Check`, `Delete`, `Edit`, `Launch`, `Menu`, `Refresh`, `Save`, `Search`, `Settings`           |
| **People and users**         | `AccountCircle`, `Badge`, `Face`, `Group`, `Groups`, `People`, `Person`, `PersonAdd`, `PersonRemove`, `SupportAgent`            |
| **Communication**            | `Call`, `Chat`, `Email`, `Message`, `Phone`, `Send`, `Feedback`                                                                 |
| **Business and commerce**    | `AttachMoney`, `Business`, `Payment`, `PointOfSale`, `Receipt`, `ShoppingCart`, `Store`, `Storefront`                           |
| **Technology and devices**   | `Computer`, `DesktopMac`, `Devices`, `Laptop`, `PhoneAndroid`, `Router`, `Smartphone`, `Terminal`, `Wifi`                       |
| **Security and access**      | `AdminPanelSettings`, `EnhancedEncryption`, `Fingerprint`, `Key`, `Lock`, `Password`, `Security`, `Shield`, `VpnKey`, `VpnLock` |
| **Files and documents**      | `Article`, `Description`, `FileOpen`, `Folder`, `InsertDriveFile`, `Note`, `Pages`                                              |
| **Status and alerts**        | `CheckBox`, `Dangerous`, `Error`, `Info`, `Notifications`, `Report`, `Warning`                                                  |
| **Charts and analytics**     | `Assessment`, `BarChart`, `Dashboard`, `Equalizer`, `Leaderboard`, `QueryStats`, `StackedBarChart`, `TableChart`, `Timeline`    |
| **Time and calendar**        | `AccessTime`, `Alarm`, `CalendarMonth`, `EventAvailable`, `Schedule`, `Timer`                                                   |
| **Cloud and storage**        | `Backup`, `Cloud`, `CloudDownload`, `CloudUpload`, `Storage`, `Warehouse`                                                       |
| **Workflows and automation** | `AccountTree`, `Api`, `AutoMode`, `DynamicForm`, `Mediation`, `PublishedWithChanges`, `Sync`, `SyncAlt`                         |

### MUI technical details

| Detail             | Value                                                                              |
| ------------------ | ---------------------------------------------------------------------------------- |
| **Source**         | Material-UI (MUI) Icons Library                                                    |
| **Implementation** | `packages/app/src/utils/iconMap.ts`                                                |
| **Icon variants**  | Some icons have multiple variants: e.g., `Sharp`, `Rounded`, `TwoTone`, `Outlined` |
| **Fallback**       | If an icon cannot be found, the system displays a `HelpOutline` icon as a fallback |

{% hint style="info" %}
If you have suggestions for new App Builder features, or general feedback about your experience using this part of Rewst, submit your thoughts to our [Canny](https://rewst.canny.io/app-builder).&#x20;
{% endhint %}
