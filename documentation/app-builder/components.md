# App Builder: Components

## What are components?&#x20;

In App Builder, _components_ are the building blocks that enable users to rapidly create and customize their apps. Each component is designed to fulfill a specific function; from basic navigation to data visualization, allowing the construction of robust and user-friendly pages.&#x20;

Components are grouped into logical categories based on their primary functions, making it easier to identify and choose the right ones for a given task. By combining different components, users can craft fully customized pages that align with their brand and business needs.

Each component can be fine-tuned with various settings to meet unique requirements, ensuring that even highly specialized designs can be realized without extensive coding.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-21 at 6.36.34 PM.png" alt="" width="348"><figcaption><p>The Component Library of the Page Builder Canvas, expanded</p></figcaption></figure>

Click <img src="../../.gitbook/assets/Screenshot 2025-08-21 at 6.37.51 PM.png" alt="" data-size="line"> in the left side menu of your Page Builder Canvas to expose the total **Component Library** submenu.&#x20;

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
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

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

### Add a button to your page <a href="#add-a-button-to-your-page" id="add-a-button-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Button' component in the component library, then drag and drop it onto the canvas.

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
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

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

### Add an image to your page <a href="#add-an-image-to-your-page" id="add-an-image-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Image' component in the component library, then drag and drop it onto the canvas.

### Configure the image component <a href="#configure-the-image-component" id="configure-the-image-component"></a>

1. **Select the component**: Click on the added 'Image' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Source URL**: Specify the URL of the image.
   * **Link**: Specify the URL to which the image redirects when clicked.
   * **Open link as new tab**: Toggle to open the Link URL in a new tab.
   * **In-line styles**: Define custom CSS properties for the component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

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

### Add text component to your page <a href="#add-text-component-to-your-page" id="add-text-component-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Text' component in the component library, then drag and drop it onto the canvas.

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
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

[\
](https://docs.rewst.help/documentation/app-builder/components/sidebar)

</details>

<details>

<summary>Link component</summary>

The link component allows you to embed hyperlinks within your apps, enabling users to navigate to different sections with the app or external sites, or even to download resources with just a click.

### What the link component could be used for <a href="#what-the-link-component-could-be-used-for" id="what-the-link-component-could-be-used-for"></a>

* Navigating to different pages within the application.
* Linking to external websites that provide additional information or resources.
* Downloading files, such as PDFs, directly from the application.
* Initiating email communications by linking to "mailto:" addresses, or other, URL syntax's.

<figure><img src="../../.gitbook/assets/Screenshot 2025-08-22 at 9.22.48 AM (1).png" alt=""><figcaption></figcaption></figure>

### **Example use case for the link component** <a href="#example-use-case-for-the-link-component" id="example-use-case-for-the-link-component"></a>

Consider an internal company portal where employees need to access various departments. The Link component could be used to create a central dashboard with links to each department. For instance, clicking on a "Human Resources" link might take an employee to an internal HR page where they can find forms and contact information, streamlining navigation and improving the user experience within the portal.

### Add a link on your page <a href="#add-a-link-on-your-page" id="add-a-link-on-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Link' component in the component library, then drag and drop it onto the canvas.

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
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

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

### Add a menu to your page <a href="#add-a-menu-to-your-page" id="add-a-menu-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Menu' component in the component library, then drag and drop it onto the canvas.

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

Imagine setting up a user profile page within an application on the App Platform. The Container component can be strategically utilized to separate information into distinct blocks, such as personal details, contact information, and account settings. Each container ensures that the elements within it, like text fields, images, and buttons, are well-organized and visually distinct from other sections. This not only improves the aesthetics but also enhances the usability of the profile page, making it easier for users to navigate and update their information efficiently.

### Container versus grid container <a href="#container-versus-grid-container" id="container-versus-grid-container"></a>

* **Container Component**: The Container component is a versatile element for structuring content and styling containers. It allows for flexible arrangements but does not enforce a grid structure.
* **Grid Container Component**: The Grid Container component, on the other hand, is specifically designed to create layouts with a grid structure. It simplifies the process of aligning and organizing content in a grid format. More on the grid container component can be found [here](https://docs.rewst.help/documentation/app-builder/components/grid-container).

### Add a container to your page <a href="#add-a-container-to-your-page" id="add-a-container-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Container' component in the component library, then drag and drop it onto the canvas.

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
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

[\
](https://docs.rewst.help/documentation/app-builder/components/button)

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
* **Container Component**: The Container component, on the other hand, is a versatile element for structuring content and styling containers. It allows for flexible arrangements but does not enforce a grid structure. More on the container component can be found [here](https://docs.rewst.help/documentation/app-builder/components/container).

### Grid container versus grid item <a href="#grid-container-versus-grid-item" id="grid-container-versus-grid-item"></a>

* **Grid Container Component**: The Grid Container acts as the foundational element of a grid layout. It defines the overall grid structure within which Grid Items are placed. It sets the framework for how the grid behaves and how items within it are aligned and distributed.
* **Grid Item Component**: The Grid Item component is used within a Grid Container to place individual elements like text, images, buttons, etc. It represents the content blocks that fill the grid defined by the Grid Container. More on the grid item component can be found [here](https://docs.rewst.help/documentation/app-builder/components/grid-item).

### Add a grid container to your page <a href="#add-a-grid-container-to-your-page" id="add-a-grid-container-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Grid Container' component in the component library, then drag and drop it onto the canvas.

### Configure the grid container component <a href="#configure-the-grid-container-component" id="configure-the-grid-container-component"></a>

1. **Select the component**: Click on the added 'Grid Container' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **In-line styles**: Define custom CSS properties for the component.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

[PreviousForm component](https://docs.rewst.help/documentation/app-builder/components/form)[\
](https://docs.rewst.help/documentation/app-builder/components/grid-item)

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
* **Grid Container Component**: The Grid Container acts as the foundational element of a grid layout. It defines the overall grid structure within which Grid Items are placed. It sets the framework for how the grid behaves and how items within it are aligned and distributed. More on the grid container component can be found [here](https://docs.rewst.help/documentation/app-builder/components/grid-container).

### Add a grid item to your page <a href="#add-a-grid-item-to-your-page" id="add-a-grid-item-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Grid Item' component in the component library, then drag and drop it onto the canvas.

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

### Add an HTML container to a page <a href="#add-an-html-container-to-a-page" id="add-an-html-container-to-a-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'HTML Container' component in the component library, then drag and drop it onto the canvas.

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

### Add a row to a page <a href="#add-a-row-to-a-page" id="add-a-row-to-a-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Row' component in the component library, then drag and drop it onto the canvas.

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

### Add a header to your page <a href="#add-a-header-to-your-page" id="add-a-header-to-your-page"></a>

Only ONE instance of the Header component can be used, per app platform page!

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Header' component in the component library, then drag and drop it onto the canvas.

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

### Add a sidebar to your page <a href="#add-a-sidebar-to-your-page" id="add-a-sidebar-to-your-page"></a>

Only ONE instance of the Sidebar component can be used, per app platform page!

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Sidebar' component in the component library, then drag and drop it onto the canvas.

### Configure the sidebar component <a href="#configure-the-sidebar-component" id="configure-the-sidebar-component"></a>

1. **Select the component**: Click on the added 'Sidebar' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Layout**
     * **Position**: Toggle to set the position of sidebar on the canvas; 'Left' or 'Right'.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

[\
](https://docs.rewst.help/documentation/app-builder/components/row)

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

### Add a chart to your page <a href="#add-a-chart-to-your-page" id="add-a-chart-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Chart' component in the component library, then drag and drop it onto the canvas.

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

[\
](https://docs.rewst.help/documentation/app-builder/components/container)

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

</details>

### Automation

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

### Add a form to your page <a href="#add-a-form-to-your-page" id="add-a-form-to-your-page"></a>

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Form' component in the component library, then drag and drop it onto the canvas.

### Configure the form component <a href="#configure-the-form-component" id="configure-the-form-component"></a>

1. **Select the component**: Click on the added 'Form' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Form**: **S**pecify the workflow to load.
   * **Trigger**: **S**pecify the trigger to load when loading the form.
   * **Colors**
     * **Mode**: Set the color mode of the form; 'Light' or 'Dark'.
     * **Background**: Set the color of the component's background.
     * **Primary**: Set the color of the component's text.
   * **Functions**
     * **Redirect on Submit**: Specify the URL to which the Submit redirects when a user once clicked.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

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

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
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

[\
](https://docs.rewst.help/documentation/app-builder/components/text)

</details>

{% hint style="info" %}
If you have suggestions for new App Builder features, or general feedback about your experience using this part of Rewst, submit your thoughts to our [Canny](https://rewst.canny.io/app-builder).&#x20;
{% endhint %}
