# Data table component

{% hint style="info" %}
As part of the page builder in App Builder, the data table component allows you to display and manage rows of data in a structured, tabular format. This component is essential for MSPs to handle large datasets efficiently, such as client information, service logs, or performance metrics, providing a clear and interactive view of data.
{% endhint %}

## Why we developed the data table component

The Data Table component facilitates the organization, interaction, and analysis of complex data within web applications. It provides tools for sorting, filtering, and paging through data, which helps users manage large amounts of information without losing track of their data's context or structure. This is particularly useful in environments where quick data retrieval and clear data presentation are crucial for decision-making and operational efficiency.

## What the data table component could be used for

* Displaying detailed lists of customer tickets and their statuses.
* Managing inventory levels across multiple client sites.
* Showcasing performance reports with sortable metrics.
* Organizing billing and transaction records for easy access and analysis.

## **Example use case for the data table component**

Consider a scenario where an MSP needs to monitor and manage network equipment across various client sites. The Data Table component can be used to list all equipment, displaying columns for device type, status, last service date, and location. Technicians can quickly sort by any column to prioritize devices that require immediate attention or filter to view only certain types of equipment. This use of the Data Table simplifies the management of numerous devices, ensuring that maintenance is timely and no critical issues are overlooked.

## Configure the data table component

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

## Detailed example: Add data table component to page

1. Navigate to **App Builder > Apps**. Click on your **Hello World** app.&#x20;
2. Click ![](<../../../.gitbook/assets/Screenshot 2025-03-14 at 10.07.35 AM.png>)in the left side menu of the App Builder canvas. This will open the full component library.
3. Click **Data Table**, under **Data Visualization**. Drag it onto the canvas.
4. Click **No Records Found. Add a Data Source**.
5. Choose **Run Workflow on Load**.&#x20;
   1. Whenever the page is loaded, the latest data will pull into it.&#x20;
   2. Alternatively, **Use Latest Workflow** could be used if you were returning data on a cron and didn't want to load it each time.\
      \
      ![](<../../../.gitbook/assets/data test 1-min.png>)
6. Choose **form\_output** in the **Workflow Output** drop-down selector. Once the workflow has finished, you'll see that option in the available list. \
   \
   ![](<../../../.gitbook/assets/data test 2-min.png>)
7. Click **Submit**.
8. Click **Hide View Column**. This will hide columns that you don't need to display to the user. Next to View and Trigger ID, click **⋮** and select **Hide X Column**.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/a706e094-8e7b-4676-aca4-9abb1d30331a/2.5/72.765285881591/49.511276501204?0)

9\. Click the **Hide Trigger Id** column

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/3b9343ba-92a1-4dbb-bed5-b3769a1ad79d/2.5/87.218387791368/43.755446336741?0)

10\. Click on Add a Column

Now let's make sure the user can actually get to the form, rather than just view a list.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/afb45bf1-5d11-4abc-8f84-bf09180133a2/2.5/95.814812408871/45.048936679245?0)

11\. In the Accessor dropdown, select the **view** key. By leaving the URL blank later on, the action button will automatically use the value from this key. In the Jinja from the last step, we made sure the value was the link to that form.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/454d6415-02d9-4e4b-a24b-f10bca5dd40d/2.2922731242124/50.012881778879/54.584681769507?0)

12\. Change the Type

Change the Type to **action.**

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/0090aae6-a97f-4852-ad90-894040ec6c25/2.2922731242124/50.012881778879/77.418572277013?0)

13\. Change the column name. Add a header, which is the column name for this action button.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/60004a87-993c-4eb8-8c8b-8ef38c0ee908/2.2921757115931/50.000996727961/57.1015980728?0)

14\. Under the Button Function, select the **Open a link** option.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/cf473677-1249-4095-b425-cc2d6186dd55/2.5/32.113830899932/75.584077045205?0)

15\. If you want to make your data table more user friendly, add a tooltip to let them know what's going to happen.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/99dcec75-471a-45bd-a6e2-82ac7217d043/2.5/67.908180496581/65.463212270163?0)

16\. Click the **Play** button in the top right. This is a test button that runs the page as if you navigated to it normally. You should see a list of forms returned with an action column. If you click the link, you should go directly to that form.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/13730382-b4db-43de-a7f9-9b159a18c9b0/2.5/93.848828559866/1.1339103645518?0)

17\. Click **Publish**.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/11591c77-f6f5-4a1a-ab02-e7e0b1cf3c4b/2.5/99.666096453609/0.43721714535275?0)

18\. At the top of the menu bar, you'll see a url that is unique to your app. Clicking this navigates to the page itself, the same one you'll send to your users.

![](https://d3q7ie80jbiqey.cloudfront.net/media/image/zoom/c2fb15ed-2320-42d1-a08a-2c2eb4421de4/2.5/53.71904729945/1.1118548791515?0)
