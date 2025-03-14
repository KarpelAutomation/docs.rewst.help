# Container component

{% hint style="info" %}
As part of the page builder in App Builder, the container component allows you to group and organize various UI elements within a structured and styled section. This component is essential for creating visually coherent and logically organized layouts in your web applications.
{% endhint %}

## Why we developed the container component

The Container component provides a flexible and straightforward way to manage layout and design consistency across the application. It helps in encapsulating other components, such as buttons, text, links, and images, ensuring that they align correctly and behave responsively within the designated area. This encapsulation is crucial for maintaining a clean and orderly user interface, which enhances user experience.

## What the container component could be used for

* Structuring a page into logical sections to improve visual hierarchy.
* Creating a consistent layout that adapts to different screen sizes, enhancing responsiveness.
* Isolating widget-like components that function independently within a page.
* Serving as a design or thematic boundary for different areas within a single page.

## **Example \ use case for the container component**

Imagine setting up a user profile page within an application on the App Platform. The Container component can be strategically utilized to separate information into distinct blocks, such as personal details, contact information, and account settings. Each container ensures that the elements within it, like text fields, images, and buttons, are well-organized and visually distinct from other sections. This not only improves the aesthetics but also enhances the usability of the profile page, making it easier for users to navigate and update their information efficiently.

## Container versus grid container

* **Container Component**: The Container component is a versatile element for structuring content and styling containers. It allows for flexible arrangements but does not enforce a grid structure.
* **Grid Container Component**: The Grid Container component, on the other hand, is specifically designed to create layouts with a grid structure. It simplifies the process of aligning and organizing content in a grid format. More on the grid container component can be found [here](https://docs.rewst.help/documentation/app-builder/components/grid-container).&#x20;

## Add a container to your page

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Container' component in the component library, then drag and drop it onto the canvas.

## Configure the container component

1. **Select the component**: Click on the added 'Container' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Override Theme**: Toggle to enable custom styling.
   * **Dimension**
     * **Width (%)**: Specify the width of the container in relation to the canvas.
     * **Height (%)**: Specify the height of the container in relation to the canvas.
   * **Colors**
     * **Background**: Set the color of the component's background.
     * **Text**: Set the color of the component's text.
   * **Margin**: Adjust the distance between the button component and its surrounding components.&#x20;
   * **Padding**: Adjust the size of the button, relative to its label.
   * **Decoration**
     * **Radius**: Adjust the degree of rounded appearance.
     * Shadow: Adjust the amount of shadowing around the component.
   * **Alignment**&#x20;
     * **Flex Direction**: Choose the direction of the container's flex items; 'row' or 'column'.
     * **Fill Space**: Toggle to make the container fill all available space.
     * **Align Items:** Align the container's flex items on the cross-axis and main-axis
     * **Justify Content**: Align the container's flex items on the cross-axis and main-axis
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

