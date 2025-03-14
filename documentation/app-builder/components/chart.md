# Chart component

{% hint style="info" %}
As part of the page builder in App Builder, the chart component allows you to group and organize various UI elements within a structured and styled section. This component is essential for creating visually coherent and logically organized layouts in your web applications.
{% endhint %}

## Why we developed the chart component

The Chart component enables the display of data analytics and trends visually. By transforming raw data into graphical formats, it helps users quickly grasp underlying patterns, correlations, and insights without needing to delve into complex reports or databases. This visual understanding is crucial for making informed decisions and enhancing user engagement with data.

## What the chart component could be used for

* Displaying sales trends and revenue growth over time.
* Comparing the performance metrics of different products or services.
* Visualizing demographic data and user engagement statistics.
* Showcasing real-time data updates such as stock prices or performance metrics.

## **Example use case for the chart component**

An MSP might use the Chart component to visualize client network usage, system performance or support\ticket metrics over time. For instance, line charts could display changes in bandwidth usage or storage capacity across multiple client sites, helping you identify trends, anticipate needs, and allocate resources more effectively. This visualization aids in proactive management and enhances the strategic advising role of the MSP with their clients.

## Add a chart to your page

1. **Access the Canvas**: Open the page you're working on in edit mode, in App Platform.
2. **Drag-and-Drop**: Locate the 'Chart' component in the component library, then drag and drop it onto the canvas.

## Configure the chart component

1. **Select the component**: Click on the added 'Chart' component to select it.
2. **Properties Panel**: On the properties panel, you'll find various configurable options:
   * **Data Source**
     * **Workflow Input:** Specify the workflow to load.
     * **Max Records to show:** Adjust the number of the records to show.
   * **Chart Options**
     * **Editor View:** Define custom properties for the component.&#x20;
     * **Open Configuration**: An array of component specific toggle's to modify the overall look and feel of the chart component.
   * **Dataset Options**
     * **Editor View:** Define custom CSS properties for the component.&#x20;
     * **Add a new dataset**
       * **Data Source**
         * **Data Load Method**: Specify when the chosen workflow will execute; Use Latest Workflow' or 'Run workflow on load', or 'Use workflow stream'.&#x20;
         * **Workflow**: Specify the workflow to load.
         * **Open in new tab**: Open the specified workflow in a new tab.
         * **Workflow Output**: Specify the output of the workflow to populate the chart.
       * Chart Configuration
         * **Chart Type**: Select the desired chart type, 'line', 'bar', 'doughnut' or 'pie'.&#x20;
         * **X axis data key**: Select the data point to associate to the X axis.
         * **Y axis data key**: Select the data point to associate to the Y axis.
         * **X Scale type**: Select the desired X-scale type; 'linear', 'logarithmic', 'category', 'time' or 'timeseries'.
3. **Live Preview**: The canvas provides a live preview of your configured component(s) once you've made changes.
