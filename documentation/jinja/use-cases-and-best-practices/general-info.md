# Combine Jinja lists

Quite often, you will be in a situation where you have two lists and want to combine them, ensuring that the data matches between the two lists.

For example, if you pull a list of users and then want to add a list of groups that the user belongs to, which is not a part of the initial list.

There are a couple of ways to achieve this, both are outlined below

## Step one - List M365 users on a tenant

We have a data alias called `CTX.m365_users` with a bunch of relevant information, we want to pull.

```django
{{-
    [
        {
            "displayName": user_info.displayName,
            "user_id": user_info.id,
            "jobTitle": user_info.jobTitle,
            "mail": user_info.mail,
            "username": user_info.userPrincipalName,
            "accountEnabled": user_info.accountEnabled,
            "licences": user_info.assignedLicenses,
            "businessPhone": user_info.businessPhones,
            "mobilePhone": user_info.mobilePhone,
            "city": user_info.city,
            "user_created_date": user_info.createdDateTime,
            "department": user_info.department,
            "last_password_change": user_info.lastPasswordChangeDateTime,
            "is_synced_user": user_info.onPremisesSyncEnabled,
            "street_address": user_info.streetAddress,
            "user_type": user_info.userType
        }
        for user_info in TASKS.list_m365_users.result.result.data.value
    ]
-}}
```

We then use a "With Items" action to loop through each of those users, getting a list of the groups they are a part of.

Because of the way our [With Items](../../automations/workflows/advanced-workflow-operations-menu.md) works, we have a data alias

`CTX.all_group_info_collected`

```django
{{ TASKS.list_groups_of_m365_user.collected_results }}
```

This then gives us a list of users, with the group they are a part of - **in the same output order that we put into the action**

`CTX.all_groups_info`

```django
{{
    [
        userinfo.result.output for userinfo in CTX.all_group_info_collected
    ]
}}
```

This will then give us two lists - a list of users with general information, then a list of each user and the groups they are a part of.

```json
{
  "city": null,
  "mail": "mailaddress@mail.com",
  "user_id": "33aa9471-****-434b-8502-05dde4f42fe2",
  "jobTitle": null,
  "licences": [],
  "username": "mailaddress@mail.com",
  "user_type": "Member",
  "department": null,
  "is_mailbox": true,
  "displayName": "Test User",
  "mobilePhone": null,
  "businessPhone": [],
  "accountEnabled": false,
  "is_synced_user": null,
  "street_address": null,
  "user_created_date": "2016-05-16T15:55:16Z",
  "last_password_change": "2019-05-21T21:12:20Z"
}
```

```json
[
  {
    "groups": [
      {
        "user_id": "33aa9471-****-434b-8502-05dde4f42fe2",
        "group_id": "8ae1b2bc-5254-4230-****-772f430d80b1",
        "group_displayName": "Sharepoint"
      },
      {
        "user_id": "33aa9471-****-434b-8502-05dde4f42fe2",
        "group_id": "*******-a216-4ff5-a09a-a6492e6bbfa2",
        "group_displayName": "All Users"
      }
    ],
  },
]
```

In our example above, this is the first entry in each list. You can see the IDs match.

We now want to combine these lists. So we create a new alias, let's call it `CTX.final_user_information`

{% code overflow="wrap" %}
```django
{{ [dict(user_info, **groups_res) for user_info, groups_res in CTX.m365_users|zip(CTX.all_groups_info)] }}
```
{% endcode %}

Using the **ZIP** method, along with our own custom comprehension, we take each entry in the list and combine them together in the same index that they exist. This means that index \[0] in CTX.m365\_users, combines with index \[0] in CTX.all\_groups\_info

The end result?

```json
{
  "city": null,
  "mail": "mailaddress@mail.com",
  "groups": [
      {
        "user_id": "33aa9471-****-434b-8502-05dde4f42fe2",
        "group_id": "8ae1b2bc-5254-4230-****-772f430d80b1",
        "group_displayName": "Sharepoint"
      },
      {
        "user_id": "33aa9471-****-434b-8502-05dde4f42fe2",
        "group_id": "*******-a216-4ff5-a09a-a6492e6bbfa2",
        "group_displayName": "All Users"
      }
  ],
  "user_id": "33aa9471-****-434b-8502-05dde4f42fe2",
  "jobTitle": null,
  "licenses": [],
  "username": "mailaddress@mail.com",
  "user_type": "Member",
  "department": null,
  "is_mailbox": true,
  "displayName": "Test User",
  "mobilePhone": null,
  "businessPhone": [],
  "accountEnabled": false,
  "is_synced_user": null,
  "street_address": null,
  "user_created_date": "2016-05-16T15:55:16Z",
  "last_password_change": "2019-05-21T21:12:20Z"
}
```

We can see the lists have combined and we now have access to all that information in a single list.

## Alternative method

Using the **ZIP** function is probably the most effective way to do this, however, the alternative is the **enumerate** function

```django
{{
    [
        {
            "mail": CTX.users[index].mail,
            "displayName": CTX.users[index].displayName,
            "azure_id": CTX.users[index].id,
            "ms_licenses": CTX.users[index].assignedLicenses|d,
            "breaches": [ breach.Name for breach in qr.result.result.data ] or []
        }
        for index,qr in enumerate(CTX.query_results)
        if qr.result.result.data|d
    ]
}}
```

In this example, we have two lists again - `CTX.users` and `CTX.query_results`. The first is a list of users from M365, the second is a list of results - again using a With Items, on each of those users.

We then want to combine those two lists, so we format the users with the relevant data we want such as mail, displayName, etc.\
We then want the results in a key called `breaches`. We then use `enumerate` it to ensure that index\[0] matches index\[0] in both lists.
