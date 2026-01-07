---
hidden: true
noIndex: true
---

# 2024 Alerts archive

## 2024

<details>

<summary>⚠️ Upgrade to V4 of ConnectSecure needed by December 31st, 2024</summary>

We’re excited to share an important update regarding your ConnectSecure integrations (formerly CyberCNS). To enhance functionality and ensure seamless performance, we’ve developed a new V4 version of the ConnectSecure integration. This update is designed to provide improved capabilities and long-term support as we transition from the V3 integration, which will reach its end-of-life on December 31st, 2024.

While the migration to V4 requires a few configuration steps, we’ve made the process straightforward. Simply reach out to your ConnectSecure representative or log in to your ConnectSecure instance to obtain your V4 credentials and hostname. Please note that related endpoints in your existing generic actions will also need to be updated to the new URLs.

To make the transition as smooth as possible, we’ve created detailed migration documentation, which you can find here: [https://docs.rewst.help/documentation/integrations/security/cybercns/connectsecure-integration-migration-v3-to-v4](https://docs.rewst.help/documentation/integrations/security/cybercns/connectsecure-integration-migration-v3-to-v4).

We’re here to support you every step of the way. If you have any questions or need assistance, don’t hesitate to reach out to our team.Thank you for partnering with Rewst as we continue to enhance your experience with ConnectSecure!

</details>

<details>

<summary>⚠️ Resolved: App Builder domains not provisioned in UK - November 13th, 2024</summary>

### Issue Resolved

**Date**: Friday, November 13th, 2024\
**Time**: 7:38 PM EDT

We were performing upgrades across all Rewst instances to how we provision domains for live sites. The upgrades were successful in all of our instances, but failed in prod US at 6:33 PM EST. We were troubleshooting for 50 minutes and managed to roll back at 7:23PM bringing rew.st domains back up. There was additional work needed to get custom domains back, which was completed at 7:38PM.

### Issue Identified

**Date**: Friday, November 13th, 2024\
**Time**: 6:33 PM EDT

App Builder domains were not being provisioned in UK leading to live sites not being available.&#x20;

### **Updates**&#x20;

For the latest information, please refer to [https://status.rewst.io/](https://status.rewst.io/)

Please contact our support team if you have any questions or need further assistance.

* **Discord** - The ROC is always available here: [https://discord.gg/rewst](https://discord.gg/rewst)
* **Create a Ticket** - [E-mail the team](mailto:roc@rewst.io) and someone will be in touch ASAP!

</details>

<details>

<summary>⚠️ Resolved: Platform disruption to workflow processes for US customers - November 6th, 2024</summary>

**Date:** Wednesday, November 6th, 2024

**Time:** 10:53 AM - 11:40AM EST

On November 6, 2024, from 10:53 AM EST to 11:40 AM EST, an unintended disruption occurred in our production environment, impacting workflow processing for our US customers. While working towards a resolution, there were failures of workflows running at the time. This temporarily affected real-time processing across parts of our application. The issue was resolved and workflows are running as normal.&#x20;

Thank you for your understanding as we work to strengthen our safeguards. We are committed to maintaining the reliability and resilience of our platform and will continue to enhance our processes to prevent such incidents in the future.

**Updates**&#x20;

For the latest information, please refer to [https://status.rewst.io/](https://status.rewst.io/)

Please contact our support team if you have any questions or need further assistance.

* **Discord** - The ROC is always available here: [https://discord.gg/rewst](https://discord.gg/rewst)
* **Create a Ticket** - [E-mail the team](mailto:roc@rewst.io) and someone will be in touch ASAP!

</details>

<details>

<summary>⚠️ Resolved: Rewst experiencing performance degradation for US Region - November 1st, 2024</summary>

### Issue Resolved

**Date**: Friday, November 1st, 2024\
**Time**: 4:30 PM EDT

After further investigation, it was discovered that a previous settings change intended to improve performance was causing timeouts because of the large number of connections in the environment. Upon reverting the setting, performance returned back to normal around 4:30PM EDT.

### Issue Identified

**Date:** Friday, November 1st, 2024

**Time:** 11:58 AM EST

ReOn Friday, November 1, 2024 beginning at 10:23AM EDT, the workflow engine began exhibiting slow performance while executing tasks. Our platform team was alerted when the pending task queue grew out of normal boundaries and began investigating the problem.

### Updates

**Time:** 2:00 PM EST\
\
Investigation showed that increasing the number of worker nodes had an adverse affect on workflow processing, pointing to a potential issue with the message queue system experiencing timeouts. To stabilize the task queues, the team adjusted the number of worker nodes until processing normalized, while continuing to troubleshoot the root cause. By 2PM EDT, the task processing rate was normalized, although still slower than normal.

For the latest information, please refer to [https://status.rewst.io/](https://status.rewst.io/)

Please contact our support team if you have any questions or need further assistance.

* **Discord** - The ROC is always available here: [https://discord.gg/rewst](https://discord.gg/rewst)
* **Create a Ticket** - [E-mail the team](mailto:roc@rewst.io) and someone will be in touch ASAP!

</details>

<details>

<summary>⚠️ Resolved: Workflows failing to execute in app.rewst.eu - October 31st, 2024</summary>

**Date:** Thursday, October 31st, 2024

**Time:** 8:20 UTC / 4:20 AM EDT

October 31st, 2024 at 8:20 UTC Rewst discovered an issue with workflow executions initializing in the European instance. UK Customers were not affected. This was escalated internally for review per the standard process. Rewst traced the issue to a partition issue. This issue was fixed and Rewst is currently operating as normal while we work to publish a long-term fix to ensure this doesn't happen again.

**Updates**&#x20;

For the latest information, please refer to [https://status.rewst.io/](https://status.rewst.io/)

Please contact our support team if you have any questions or need further assistance.

* **Discord** - The ROC is always available here: [https://discord.gg/rewst](https://discord.gg/rewst)
* **Create a Ticket** - [E-mail the team](mailto:roc@rewst.io) and someone will be in touch ASAP!

</details>

<details>

<summary>⚠️  Routine system maintenance -October 26, 2024</summary>

**Date:** Saturday, October 26, 2024

**Time:** 3PM to 3:30PM ET

During this period, the system will remain online; however, you may experience temporary performance degradation, such as slower response times. We appreciate your understanding as we work to enhance the performance and reliability of our platform. If you have any concerns or experience significant issues, please reach out to our support team or your CSM.

</details>
