# Button component

{% hint style="info" %}
As part of the page builder in App Builder, the button component allows you to integrate clickable buttons that trigger actions within your web applications. These buttons can initiate any number of functions, from submitting forms to redirecting users to other pages or executing custom scripts.
{% endhint %}

## Why we developed the button component

Buttons are essential interactive elements that facilitate user actions and decision-making processes within applications. They serve as a primary interface component for executing commands and are fundamental to improving user interaction, providing clear, actionable steps for users to take.

## What the button component could be used for

* Submitting forms and collecting user inputs.
* Redirecting users to other sections of the application or external resources.
* Initiating downloads or transactions.
* Triggering various functions defined within the application, such as opening a modal window or starting a workflow.

## **Example use case for the button component**

For an MSP’s internal tool that manages client device setups, a Button component labeled "Deploy Software" could be implemented. This button could initiate a rewst workflow install or update software across client systems. By simplifying complex actions into a single button click, MSPs can ensure consistent software deployments, reduce human error, and increase operational efficiency.

## Add a button to your page

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Button' component in the component library, then drag and drop it onto the canvas.

## Configure the button component

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
   * **Margin**: Adjust the distance between the button component and its surrounding components.&#x20;
   * **Padding**: Adjust the size of the button, relative to its label.
   * **Decoration**
     * **Style**: Set the style of the button; 'text', 'outlined', or 'contained'.
     * **Radius**: Adjust the degree of rounded appearance.
   * **Typography**
     * **Override Theme**: Toggle to enable\disable custom styling.
     * **Font Size**: Adjust the font size.
     * **Font Weight**: Adjust the font weight.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.

