# SQL Database integration setup

## What does the SQL Database integration do?

The SQL Database integration in Rewst allows users to connect to their existing Postgres, MySQL, or MSSQL database and perform queries on the database, including those hosted in Azure SQL or AWS RDS.&#x20;

Our integration works with [versions of MSSQL that are actively supported by Microsoft](https://docs.sqlalchemy.org/en/20/dialects/mssql.html#dialect-mssql).

{% hint style="info" %}
When enabling SQL Database integration and not using[ BYOD](byod-for-dattormm.md), the following [completion handlers](../../../automations/workflows/completion-handlers-and-workflow-wrappers.md) will still be automatically enabled, and will need to be disabled manually:

* BOYD: Insert Data Into Database
* BYOD: Upsert Cache DB Data Listener<br>

If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## Set up the integration

Once you've set up the database and have the necessary credentials, follow the below steps to configure a new integration:

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Click or search for SQL Database.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.33.16 AM.png>)
3. Click on the integration tile to launch the configuration page.
4. Under **Parameters**, click <img src="../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.35.44 AM.png" alt="" data-size="line"> to add a new database.
5.  Complete the fields with your database information.\
    <br>

    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.36.24 AM.png" alt=""><figcaption></figcaption></figure>
6. Click **Save Configuration**.



{% hint style="warning" %}
If you are using the database integration to cache information from options generators, follow the [BYOD For Options Generators](byod-for-dattormm.md) document
{% endhint %}

## Actions and endpoints

| Category | Action                       | Description                                                     |
| -------- | ---------------------------- | --------------------------------------------------------------- |
| Query    | Custom Query                 | Run custom SQL Query on cloud database                          |
| Query    | Query Tables List            | Get list of tables from database configuration                  |
| Query    | Query Users List             | Get list of users from database configuration                   |
| Query    | Test All Configurations      | Test all databases by getting list of tables from each database |
| Query    | List Database Configurations | Get list of all set up databases                                |
