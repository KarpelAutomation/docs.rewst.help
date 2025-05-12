# Identity provider setup - new user add

### General: Configure organizational variables form

When the New User Add automation gets setup during onboarding, you can use the _General: Configure Organizational Variables_ Form to set the following:

* Default PSA
* Default RMM
* Primary Identity Provider

The Primary Identity Provider field gives you On-premise AD and Azure Active Directory options. A hybrid approach can also be applied.

### Choosing between on-prem and Azure Active Directory

Here are the things you'll want to consider when choosing which setting:

1. **On-Prem AD**: in the case where you need to enforce that the user will only be created on-premise and will have no Azure AD presence. The new employee add workflow will also try to push an AD sync by default so you’ll need to configure an organization variable to suppress the sync under _Configuration_ → _Organization_. That variable is described below:
   * Variable Name: no\_azure\_ad
   * Value: 1
   * Category: General
2. **Azure Active Directory**: If the new employee will only be created in Azure AD and have no on-premise presence then setting the primary identity provider to Azure AD in the Get and Set ORG Variables form will ensure that the user is created in the right place upon creation. This is shown below:

<figure><img src="../../../../.gitbook/assets/primary-on-prem.gif" alt=""><figcaption><p>Setting the Primary Identity Provider to Azure AD</p></figcaption></figure>

### Hybrid with AD sync

If the new employee is going to have both an on-premise and Azure AD presence, setting them to On-Prem and specifying the domain controller that runs the AD Connect service in the Get and Set ORG Variables form will allow the user to first be created in the on-premise environment and then run an AD sync to create the user in Azure AD as well. The required fields are outlined below:

1. **Set** the Primary Identity Provider to On-Prem AD.
2. **Set** the Value for the Preferred ADConnect Server at the Bottom of the Form.

<figure><img src="../../../../.gitbook/assets/adconnect.gif" alt=""><figcaption><p>Setting the Primary Identity Provider to On-Prem AD</p></figcaption></figure>

### Hybrid with no AD sync

You can still have the new employee add workflow create them in both places in the event tha t the user needs to be created both on-premise and in Azure AD with no ADConnect service running in the environment. You can follow these steps:

1. **Set** the primary identity provider to On-Prem AD
2. **Add** an additional variable to specify that there is no AD sync but the user still needs to be created in both locations.
   * This variable is specified below and needs to be manually added under _Configuration_ → _Organization Variables_:
3. **Set** Primary Identity Provider to On-Prem AD
4. **Add** the Additional Organization Variable:
   * Variable Name: onprem\_no\_adsync
   * Value: 1
   * Category: General
