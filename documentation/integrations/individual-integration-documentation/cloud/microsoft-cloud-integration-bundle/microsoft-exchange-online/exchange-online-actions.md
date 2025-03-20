# Exchange Online Actions

## Actions

### Invoke Command

Invoke a command in Microsoft Exchange Online (EXO).

**Parameters**[**​**](http://localhost:3000/docs/integrations/Mail/ms-exchange-online#parameters)

<table data-full-width="true"><thead><tr><th width="800">Name</th><th width="780.3333333333333">Type</th><th>Description</th></tr></thead><tbody><tr><td>Cmdlet Name</td><td><code>String</code></td><td><strong>Required</strong>. The name of the cmdlet to run.</td></tr><tr><td>Parameters</td><td><code>Array[[Parameter](#parameter)]</code></td><td><strong>Required</strong>. The parameters to pass to the cmdlet.</td></tr><tr><td>Remove Empty</td><td><code>boolean</code></td><td>If <code>true</code>, any null value will be stripped before sending the request. Default: <code>true</code>.</td></tr><tr><td>Anchor Mailbox</td><td></td><td>Optional. Some cmdlets require an anchor mailbox header to be specified. This can be overridden here if desired or for troubleshooting purposes.</td></tr></tbody></table>
