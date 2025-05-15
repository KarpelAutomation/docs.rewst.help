# Exchange Online and Multi-Property Values

Many people are familiar with the Exchange Online Management Powershell module and how cmdlets/parameters are structured. There are some differences in how the module sends its commands/parameters and how the Exchange Admin API does them.

One key example is when people grant `send on behalf` permissions.

Here's an example of a Powershell Command:

> Set-Mailbox -Identity seanc@contoso.com -GrantSendOnBehalfTo pedro

This will set the `SendOnBehalf` permission for the mailbox `seanc` to be the user `pedro`. However, in some scenarios, it is necessary to grant multiple people access to the mailbox. Re-running the same command above will overwrite existing values, it is generally a better idea to pass it as a multi-property value.&#x20;

Here's an example:

> Set-Mailbox -Identity "seanc@contoso.com" -GrantSendOnBehalfTo @{Add="pedro@contoso.com"}

This will append the new permission instead of overwriting it. Doing this in Rewst is a little bit different because the Exchange Admin API expects certain formatting in the request when it is sent to the API and you are providing a multi-value property.

### Steps to perform the same action in Rewst:

1. Add your InvokeCommand action to your workflow.
2. For the cmdlet set the value to: Set-Mailbox
3. Add an Identity parameter with the target mailbox
4. Add a GrantSendOnBehalfTo parameter and give it a value similar to\
   (CTX.aad\_user\_id being the user that should get the perms):

```django
{{ {'@odata.type':'#Exchange.GenericHashTable','add': CTX.aad_user_id } }}
```

&#x20;
