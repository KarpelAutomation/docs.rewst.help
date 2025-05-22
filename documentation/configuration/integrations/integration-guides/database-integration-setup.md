# Database integration setup

## What does the SQL Database integration do?

The SQL Database integration in Rewst allows users to connect to their existing Postgres, MySQL, or MSSQL database and perform queries on the database, including those hosted in Azure SQL or AWS RDS.

## Set up the integration

Once you've set up the database and have the necessary credentials, follow the below steps to configure a new integration:

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Click or search for SQL Database.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.33.16 AM.png>)
3. Click on the integration tile to launch the configuration page.
4. Under **Parameters**, click <img src="../../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.35.44 AM.png" alt="" data-size="line"> to add a new databse.
5.  Complete the fields with your database information.\
    \


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-05-12 at 9.36.24 AM.png" alt=""><figcaption></figcaption></figure>
6. Click **Save Configuration**.



{% hint style="warning" %}
If you are using the database integration to cache information from options generators, follow the [BYOD For Options Generators](byod-for-dattormm.md) document
{% endhint %}
