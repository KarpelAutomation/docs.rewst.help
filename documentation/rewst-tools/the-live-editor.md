# The Live Editor

Access Rewst's Live Editor by navigating to **Tools > Live Editor** in the left side menu of your Rewst platform.

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-17 at 11.02.40 AM.png" alt=""><figcaption></figcaption></figure>

Switch between the two available languages in the editor by clicking the switch button in the top right of your **Editor** panel. The name of the language currently in use for the editor will display in blue on the button.

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-17 at 11.04.07 AM.png" alt=""><figcaption></figcaption></figure>

Click **Render** to display your code's result in the **Result** pane.

Click **Share** to create a link to share your context and code in the editor, to be opened by another individual later. This is particularly helpful for sending to coworkers or Rewst support staff.&#x20;

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-17 at 11.06.02 AM.png" alt=""><figcaption></figcaption></figure>

## Live Editor shortcuts

* Access the Live Editor in other menus in Rewst, in any fields where you see the <img src="../../.gitbook/assets/jinja-burger.png" alt="" data-size="line">button.&#x20;
* Press `F1` within the editor to see menu and shortcut options
* Press `Ctrl + Space` to get the initial root options
* Add `|` to the end of your variables to access [Jinja filters](https://docs.rewst.help/documentation/jinja/list-of-jinja-filters). e.g.: `{{ ORG.ATTRIBUTES.id|default('test default string') }}`&#x20;

{% hint style="info" %}
For more on how to use Jinja in Rewst, see our [Jinja documentation here](https://docs.rewst.help/documentation/jinja), and sign up for courses in [Cluck University](https://docs.rewst.help/cluck-university/getting-started).
{% endhint %}
