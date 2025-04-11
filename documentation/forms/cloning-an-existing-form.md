# Clone an existing form

There may be times when you want to take an existing form and make slight modifications to apply it to another use case. For example, you may be using the Client: New Employee workflow to onboard new users, and want to have two different forms:

1. One for when you hire internal users at your organization
2. One for adding users for your customers

### How to clone and edit a form

1. Navigate to **Automations > Forms**.
2. Click **⋮** and select the **Clone** option on the form you want to clone.
3. Rename your form to something unique and define a few other fields:
   * **New Name**: the new name of the cloned form, make sure this is something unique and describes the use case for the form.
   * **Organization**: the organization that the form will reside under.
     * This doesn’t necessarily mean that you want to select the customer that the form will be for. The best practice is to have the form live at the top-level organization. The customers are tied to the relevant form by a trigger in the workflow. More information can be found in the Intro to Triggers article.
4. Click the **Clone** button to see your cloned form.

<figure><img src="../../.gitbook/assets/clone-form.gif" alt=""><figcaption></figcaption></figure>

## Shallow clone a form

_Shallow cloning_ is a feature of the Rewst platform that allows you to create a copy of an existing workflow or form. This is useful if you have a workflow that is very similar to another workflow, but which requires a few small changes.

Standard cloning copies the entire resource _pack—_ workflow, forms, templates, triggers, etc— and when cloning into your own org, you end up with multiple duplicates of the same resource. Shallow cloning copies that single selected resource, but re-uses all of the dependencies that it has. If you have a sub-workflow that's part of a main workflow, and you shallow clone that sub-workflow, you will end up with a copy of the sub-workflow. This lets you make changes to the sub-workflow without affecting the original workflow.

There is no difference between the steps to clone or shallow clone a resource. Rewst will automatically detect if you are cloning something into your own org. If so, the platform will shallow clone it instead. Note that this removes the **Synchronize** button on the dialog, and instead shows a text to explain.
