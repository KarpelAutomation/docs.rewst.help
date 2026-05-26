# April 28th, 2023

Explore what new changes the CS team has made in the last week.

First and foremost, we'd like to welcome Jamie Moore, our new Director of Customer Success!

Now, on to the updates!

<details>

<summary><strong>Important Update Regarding Microsoft DAP to GDAP Transition</strong></summary>

Starting May 22, 2023, Microsoft will be transitioning from DAP (Delegated Access Permissions) relationships to GDAP (Granular Delegated Access Permissions) roles. According to Microsoft, only 35% of users have migrated to GDAP so far.

**Why is this important?**

This change in Microsoft's tenant management system may impact your Rewst account. If no action is taken, Microsoft will force migrate members of the AdminAgents group to a limited role, and Rewst functionality may be impacted. This will cause onboarding and setting items via CSP, Exchange, or Graph APIs to fail.

**How can we help you migrate?**

To assist you in this migration, we've provided some helpful resources:

* Conditional Access Best Practices: https://rewst.help/docs/integrations/Cloud/Best-Practices/conditional-access-best-practices
* Common CSP Error Troubleshooting: https://rewst.help/docs/integrations/Cloud/Best-Practices/common-csp-error-troubleshooting
* Microsoft's Official Announcement: https://learn.microsoft.com/en-us/partner-center/announcements/2023-april

Additionally, you can choose any of the following three tools for migration:

* CIPP: https://cipp.app/ (Open-source solution)
* Microsoft Lighthouse (Requires a free Microsoft Lighthouse license)
* Microsoft's GDAP Migration tool

**Need help or have questions?**

The ROC team at Rewst is committed to helping you through this transition. If you need any assistance or have any questions, please don't hesitate to reach out in your private customer channel in our Discord server. If you're not already in our Discord server, you can join here: https://discord.gg/rewst and use the /verify slash command with your \[company] email address to authenticate.

**Checking your migration status**

If you are unsure if you have already migrated to GDAP, or want to double-check, you can visit https://partner.microsoft.com/en-us/dashboard/commerce2/granularadminaccess/list. This page displays all your current GDAP relationships. If this list is empty, or does not load, you will need to perform the GDAP migration.

</details>

<details>

<summary><strong>Cluck U and Documentation Updates</strong></summary>

* Cluck University Section is now added to rewst.help!
  * Getting Started Section
  * Rewst Foundations section with Rewst 102, 103, and 104!
  * Hands-on exercises for 103 and 104 to come!
* New Documentation for the following:
  * Integration Multi-tenancy
  * Least Privilege Access Requirements for ConnectWise Manage Integration

</details>

<details>

<summary><strong>Tickets</strong></summary>

With the ROC now using Halo for their ticketing system, this is when you should find a ticket created for you!

* [ ] A discussion with a ROC engineer that doesn't result in a fix on first discussion
* [ ] If you have a call to troubleshoot, create workflows or other ROC work
* [ ] For all onboarding or expansion work
* [ ] If a call results in a new workflow idea or request

If you'd like to manually create a ticket yourself, review the "Rewst Support" section at the bottom of this page.

</details>
