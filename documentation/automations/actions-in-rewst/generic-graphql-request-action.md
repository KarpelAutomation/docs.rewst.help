# Generic GraphQL request action

This action is available in the Rewst actions section of the workflow builder's actions list, but is open-ended in its capabilities.&#x20;

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-05 at 10.08.02 AM.png" alt=""><figcaption></figcaption></figure>

\
**Description:** A generic action for making authenticated requests against Rewst''s GraphQL API. The Generic GraphQL Request action is part of the Rewst action pack and enables:

* **Direct API access**: Execute custom GraphQL queries and mutations against Rewst's backend
* **Advanced data retrieval**: Access data structures not available through standard actions
* **Custom automation**: Build sophisticated workflows with precise data control
* **Administrative operations**: Perform bulk operations and administrative tasks programmatically

{% hint style="warning" %}
Before using the Generic GraphQL Request action, ensure that you have:

* Staff organization privileges or appropriate permissions for allowed operations
* Understanding of GraphQL query structure and syntax
* Familiarity with Rewst's data model and available schema
* The necessary feature flag enabled for your organization

This action requires the `ENABLE_ACTION_REWST_GENERIC_GRAPH_REQUEST` feature flag to be enabled for your organization. Contact Rewst staff if you need access to this advanced functionality.
{% endhint %}

**Parameters:**

* **Operation Type:** The type of GraphQL operation: `query` or `mutation`
* **Graph Operation:** The name of the specific GraphQL operation to execute
* **Variable Values:** Variables to pass to the GraphQL operation
* **Response Fields:** Specify the fields to include in the GraphQL response. Only provide the inner content, as it will be wrapped in curly braces. For example, `id orgName email { name }` .
* **Raw Query:** The complete raw GraphQL query string to execute - an alternative to operation-based approach

## Generic GraphQL request action usage examples

### Basic query example

```yaml
operation_type: "query"
operation: "organizations"
variable_values: 
  limit: 50
  order: [["name"]]
fields: "id, name, domain, isEnabled"
```

### Mutation example

```yaml
operation_type: "mutation"
operation: "createOrgVariable"
variable_values:
  orgVariable:
    name: "custom_setting"
    value: "production"
    orgId: "{{ CTX.organization.id }}"
    category: "general"
fields: "id, name, value, category"
```

### Raw query example

```yaml
raw_query: |
  query GetWorkflowDetails($workflowId: ID!) {
    workflow(where: {id: $workflowId}) {
      id
      name
      description
      tasks {
        id
        name
        action {
          name
          pack {
            name
          }
        }
      }
    }
  }
variable_values:
  workflowId: "{{ CTX.workflow_id }}"
```

## Generic GraphQL request action: Allowed operations for non-staff organizations

### Queries

#### **Action and configuration queries**

**`actionOption` -** Retrieves a specific action option configuration.

**GraphQL schema**

```graphql
actionOption(where: ActionOptionWhereInput): ActionOption

type ActionOption {
  actions: [Action!]
  id: ID
  optionLabel: String
  optionValue: String
  organizationId: ID
  organization: Organization
  packConfigId: ID
  resourceName: String
  packConfig: PackConfig
}
```

**Usage example:**

```yaml
operation_type: "query"
operation: "actionOption"
variable_values:
  where:
    packConfigId: "{{ CTX.pack_config_id }}"
    optionLabel: "environment"
fields: "id, optionLabel, optionValue, resourceName"
```

**`actionOptions`**-Retrieves multiple action options with filtering and sorting.

**GraphQL schema:**

```graphql
actionOptions(
  where: ActionOptionWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["optionLabel"]]
): [ActionOption!]!
```

**Usage example:**

```yaml
operation_type: "query"
operation: "actionOptions"
variable_values:
  where:
    organizationId: "{{ CTX.org_id }}"
  limit: 50
  order: [["optionLabel", "asc"]]
fields: "id, optionLabel, optionValue, organization { name }"
```

**`localReferenceOptions`**-Gets dropdown options for local reference models.

**GraphQL schema:**

```graphql
localReferenceOptions(
  modelName: LocalReferenceModel!
  orgId: ID!
  filterArg: JSON
): [DropdownOption!]!

enum LocalReferenceModel {
  Crate
  CustomDatabase
  Organization
  PackConfig
  Role
  Template
  TemplateExport
  User
  Workflow
  Trigger
  Form
  Site
  Page
}

type DropdownOption {
  label: String
  value: String
}
```

**Usage example:**

```yaml
operation_type: "query"
operation: "localReferenceOptions"
variable_values:
  modelName: "Workflow"
  orgId: "{{ CTX.org_id }}"
  filterArg: {"enabled": true}
fields: "label, value"
```

**`resourceTypesByPack`**-Gets resource types organized by pack.

**GraphQL schema:**

```graphql
resourceTypesByPack: [PackResourceTypesContainer!]!

type PackResourceTypesContainer {
  id: ID!
  packName: String!
  resourceTypes: [String!]!
}
```

#### **Action management queries**

**`action`**-Retrieves a specific action definition.

**GraphQL schema:**

```graphql
action(where: ActionInput, search: ActionSearch): Action

type Action {
  actionOptions: [ActionOption!]!
  className: String
  defaultHumanSecondsSaved: Int
  deprecated: Boolean
  deprecationMessage: String
  description: String
  enabled: Boolean
  entryPoint: String
  category: String
  hidden: Boolean
  icon: String
  id: ID
  name: String
  organization: Organization
  orgId: ID
  outputSchema: JSON
  pack(where: PackInput): Pack
  packId: ID!
  parameters(populateOptions: Boolean = true): JSON
  ref: String
  runner: Runner
  uid: ID
  visibleForOrganizations: [Organization!]!
  workflow: Workflow
}
```

**Usage example:**

```yaml
operation_type: "query"
operation: "action"
variable_values:
  where:
    ref: "http_request"
    packId: "core"
fields: "id, name, description, parameters, outputSchema"
```

**`actions`**-Retrieves multiple actions with filtering.

**GraphQL schema:**

```graphql
actions(
  where: ActionInput
  search: ActionSearch
  limit: Int = 100
  offset: Int
  order: [[String!]!] = [["name"]]
): [Action!]!
```

**`actionsForOrg`**-Gets actions available to a specific organization.

**GraphQL schema:**

```graphql
actionsForOrg(
  where: ActionInput
  search: ActionSearch
  limit: Int = 100
  offset: Int
  order: [[String!]!] = [["name"]]
  orgId: ID
): [Action!]!
```

#### **System and Debug Queries**

**`announcement`**-Gets system announcements.

**`debug-`**&#x44;ebug endpoint for system information.

**GraphQL schema:**

```graphql
debug: Boolean
```

#### **Component management queries**

**`component`**-Retrieves a specific component definition.

**GraphQL schema:**

```graphql
component(id: ID!): Component

type Component {
  id: ID!
  orgId: ID!
  name: String!
  description: String
  currentVersion: Int
  createdBy: User
  createdById: ID
  createdAt: String
  updatedAt: String
  versions: [ComponentVersion!]
  updatedBy: User
  updatedById: ID
}
```

**`components`**-Gets multiple components for an organization.

**GraphQL schema:**

```graphql
components(orgId: ID!): [Component]
```

**`componentsByRoots`**-Gets components by their root IDs.

**GraphQL schema:**

```graphql
componentsByRoots(rootIds: [ID]!): [Component]
```

**`componentTree`**-Gets the component tree structure.

**GraphQL schema:**

```graphql
componentTree(id: ID!): ComponentTree

type ComponentTree {
  encoded: String!
  component: Component!
  orgId: ID!
  versionNumber: Int
  createdAt: String
  updatedAt: String
  updatedBy: User
}
```

#### **Crate management queries**

**`crateTokenTypes`**-Gets available crate token types.

**GraphQL schema:**

```graphql
crateTokenTypes: [String!]!
```

**`crate`**-Retrieves a specific crate.

**GraphQL schema:**

```graphql
crate(
  where: CrateWhereInput
  search: CrateSearchInput
  selectedOrgId: ID
): Crate

type Crate {
  associatedPacks: [Pack!]
  category: String
  crateTriggers: [CrateTrigger!]
  createdAt: String
  description: String
  id: ID!
  isPublic: Boolean!
  isUnpackedForSelectedOrg: Boolean
  lastPublishedAt: String
  maturity: CrateMaturity
  name: String!
  orgId: ID!
  primaryPack: Pack
  primaryPackId: ID
  providedValue: String
  replicationRegions: [CrateReplicationRegion!]
  requiredOrgVariables: [String!]
  setupAssistance: Boolean
  setupTime: Int
  sourceEnvironment: String
  status: CrateStatus!
  tags: [Tag!]
  tagIds: [ID!]
  tokens: [CrateToken!]!
  triggers: [Trigger!]
  unpackingCount: Int
  unpackedWorkflowId: ID
  updatedAt: String
  workflow: Workflow
  workflowId: ID
  gid: ID
  updatedById: ID
  createdById: ID
}
```

**`crates`**-Gets multiple crates with filtering and sorting.

**GraphQL schema:**

```graphql
crates(
  where: CrateWhereInput
  search: CrateSearchInput
  selectedOrgId: ID
  limit: Int
  offset: Int
  order: [[String!]!] = [["unpackingCount", "desc"], ["createdAt", "asc"]]
): [Crate!]!
```

**`crateExportInfo`**-Gets export information for a workflow to crate.

**GraphQL schema:**

```graphql
crateExportInfo(workflowId: ID!): JSON
```

**`crateUnpackingArgumentSet`**-Gets crate unpacking argument sets.

**GraphQL schema:**

```graphql
crateUnpackingArgumentSet(
  where: CrateUnpackingArgumentSetWhereInput
): CrateUnpackingArgumentSet

type CrateUnpackingArgumentSet {
  arguments: [CrateUnpackingArgument!]!
  crate: Crate!
  crateId: ID!
  crateTriggerUnpackings: [CrateTriggerUnpacking!]!
  createdAt: String!
  createdBy: User!
  createdById: ID!
  humanSecondsSaved: Int!
  id: ID!
  orgId: ID!
  updatedAt: String
  updatedBy: User
  updatedById: ID
  workflowName: String!
}
```

#### **Feature preview queries**

**`featurePreviewSetting`**-Gets a specific feature preview setting.

**GraphQL schema:**

```graphql
featurePreviewSetting(where: FeaturePreviewSettingWhereInput): FeaturePreviewSetting

type FeaturePreviewSetting {
  description: String!
  id: ID!
  isStaffOnly: Boolean!
  label: String!
}
```

**`featurePreviewSettings`**-Gets multiple feature preview settings.

**GraphQL schema:**

```graphql
featurePreviewSettings(
  where: FeaturePreviewSettingWhereInput,
  order: [[String!]!] = [["createdAt"]]
): [FeaturePreviewSetting]
```

#### **Foreign Object Reference Queries**

**`foreignObjectReference`**-Gets a specific foreign object reference.

**GraphQL schema:**

```graphql
foreignObjectReference(
  where: ForeignObjectReferenceWhereInput
): ForeignObjectReference

type ForeignObjectReference {
  action: Action
  actionId: ID
  id: ID!
  identifier: ID
  organization: Organization!
  orgId: ID!
  packConfig: PackConfig
  packConfigId: ID
  referenceId: ID!
  workflowExecution: WorkflowExecution
  workflowExecutionId: ID
}
```

**`foreignObjectReferences`**-Gets multiple foreign object references.

**GraphQL schema:**

```graphql
foreignObjectReferences(
  where: ForeignObjectReferenceWhereInput
): [ForeignObjectReference!]!
```

#### **Form management queries**

**`form`**-Retrieves a specific form definition.

**GraphQL schema:**

```graphql
form(
  where: FormWhereInput
  search: FormSearchInput
  orgContextId: ID
): Form

type Form {
  clonedFrom: Form
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Form]
  createdBy: User
  createdById: ID
  createdAt: String
  description: String
  fields(orgContextId: ID): [FormField]
  id: ID!
  isSynchronized: Boolean
  name: String!
  organization: Organization!
  orgId: ID!
  tags: [Tag!]!
  triggers: [Trigger!]
  unpackedFrom: Crate
  unpackedFromId: ID
  updatedAt: String
  updatedBy: User
  updatedById: ID
  warrant: Warrant
}
```

**`forms`**-Gets multiple forms with filtering.

**GraphQL schema:**

```graphql
forms(
  where: FormWhereInput
  search: FormSearchInput
  limit: Int
  offset: Int
  hasTagIds: [ID]
  order: [[String!]!] = [["name"]]
): [Form!]!
```

**`packConfigsForForm`**-Gets pack configurations associated with a form.

**GraphQL schema:**

```graphql
packConfigsForForm(formId: ID!, orgId: ID!, triggerId: ID): [PackConfig!]!
```

**`evaluatedForm`**-Gets an evaluated form for a specific trigger.

**GraphQL schema:**

```graphql
evaluatedForm(
  where: EvaluatedFormWhereInput
  orgContextId: ID
): Form
```

#### **Microsoft CSP Queries**

**`microsoftCSPCustomer`**-Gets Microsoft CSP customer information.

**GraphQL schema:**

```graphql
microsoftCSPCustomer(
  cspPackConfigId: ID!
  where: MicrosoftCSPCustomerWhereInput
): MicrosoftCSPCustomer

type MicrosoftCSPCustomer {
  createdAt: String!
  companyName: String!
  cspTenantId: String!
  hasConsent: Boolean!
  id: ID!
  linkedOrganizations: [Organization!]
  tenantId: String!
  updatedAt: String!
}
```

**`microsoftCSPCustomers`**-Gets multiple Microsoft CSP customers.

**GraphQL schema:**

```graphql
microsoftCSPCustomers(
  cspPackConfigId: ID!
  search: MicrosoftCSPCustomerSearchInput,
  where: MicrosoftCSPCustomerWhereInput
): [MicrosoftCSPCustomer!]!
```

#### **Trigger instance queries**

**`orgTriggerInstance`**-Gets a specific organization trigger instance.

**GraphQL schema:**

```graphql
orgTriggerInstance(
  where: OrgTriggerInstanceWhereInput
  search: OrgTriggerInstanceSearchInput
): OrgTriggerInstance

type OrgTriggerInstance {
  id: ID!
  isManualActivation: Boolean
  organization: Organization
  orgId: ID
  lastSearchedAt: String
  trigger: Trigger
  triggerId: ID
  state: JSON
  createdAt: String!
  updatedAt: String!
}
```

**`orgTriggerInstances`**-Gets multiple organization trigger instances.

**GraphQL schema:**

```graphql
orgTriggerInstances(
  where: OrgTriggerInstanceWhereInput
  search: OrgTriggerInstanceSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["createdAt"]]
): [OrgTriggerInstance!]!
```

#### **Organization variable queries**

**`orgVariable`**-Gets a specific organization variable.

**GraphQL schema:**

```graphql
orgVariable(
  where: OrgVariableWhereInput
  search: OrgVariableSearchInput
  maskSecrets: Boolean
): OrgVariable

type OrgVariable {
  cascade: Boolean!
  category: OrgVariableCategory!
  createdAt: String!
  id: ID!
  name: String!
  organization: Organization!
  orgId: ID!
  packConfig: PackConfig
  packConfigId: ID
  updatedAt: String
  value: String
}

enum OrgVariableCategory {
  contact
  general
  secret
  system
}
```

**`orgVariables`**-Gets multiple organization variables.

**GraphQL schema:**

```graphql
orgVariables(
  where: OrgVariableWhereInput
  search: OrgVariableSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  maskSecrets: Boolean
): [OrgVariable!]!
```

**`visibleOrgVariables`**-Gets organization variables visible to a specific organization.

**GraphQL schema:**

```graphql
visibleOrgVariables(
  search: OrgVariableSearchInput
  visibleForOrgId: ID!
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [OrgVariable!]!
```

#### **Organization management queries**

**`organization`**-Gets a specific organization.

**GraphQL schema:**

```graphql
organization(
  where: OrganizationWhereInput
  search: OrganizationSearchInput
): Organization

type Organization {
  actions: [Action!]!
  activatedTriggers: [Trigger!]!
  createdAt: String
  createdTags: [Tag!]!
  domain: String
  deletedAt: String
  forms: [Form!]!
  id: ID
  isMsp: Boolean
  isStaff: Boolean
  isEnabled: Boolean
  isDeleted: Boolean
  isInternal: Boolean
  installedPacks: [Pack!]!
  featurePreviewSettings: [OrganizationFeaturePreviewSetting]
  managedOrgAutoInstallingWorkflows: [Workflow!]!
  managedAndSubOrgs: [Organization!]!
  managedOrgs: [Organization!]!
  managingOrg: Organization
  managingOrgId: ID
  name: String!
  orgSlug: String
  packConfigs: [PackConfig!]!
  resultsRetentionDays: Int
  rocSiteId: String
  tags: [Tag!]!
  templates: [Template!]!
  tid: ID
  triggerInstances: [OrgTriggerInstance!]!
  triggers: [Trigger!]!
  users: [User!]!
  variables: [OrgVariable!]!
  visibleActions: [Action!]!
  visiblePackConfigs: [PackConfig!]!
  visibleWorkflows: [Workflow!]!
  workflowExecutions: [WorkflowExecution!]!
  workflows: [Workflow!]!
  supportAccessStatus: SupportAccessStatus
}
```

**`organizations`**-Gets multiple organizations.

**GraphQL schema:**

```graphql
organizations(
  where: OrganizationWhereInput
  search: OrganizationSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Organization!]!
```

**`orgSearch`**-Performs organization search with breadcrumbs.

**GraphQL schema:**

```graphql
orgSearch(
  search: String
  rootOrgId: ID!
  breadcrumbRootOrgId: ID!
): [OrgSearchResult!]!

type OrgSearchResult {
  id: ID!
  name: String!
  hasChildren: Boolean!
  breadcrumbs: [OrgBreadcrumb]
  managingOrgId: ID
  supportAccessStatus: SupportAccessStatus
  isInternal: Boolean
}
```

**`softDeletedOrgs`**-Gets soft-deleted organizations.

**GraphQL schema:**

```graphql
softDeletedOrgs(managingOrgId: ID!): [Organization!]!
```

#### **Pack action option queries**

**`packActionOption`**-Gets a specific pack action option.

**GraphQL schema:**

```graphql
packActionOption(where: PackActionOptionWhereInput): PackActionOption

type PackActionOption {
  id: ID!
  name: String!
  packId: ID!
  path: String!
  method: HTTPMethod
  paginate: Boolean
  queryParams: JSON
  pathParams: JSON
  headers: JSON
  requiredPathVars: [String!]
  requiredQueryVars: [String!]
  requiredHeaderVars: [String!]
  resultsKey: String
  valueField: String!
  label: String!
  labelIsTemplate: Boolean
  valueFieldIsPath: Boolean
  maxPages: Int
  pageSize: Int
}
```

**`packActionOptions`**-Gets multiple pack action options.

**GraphQL schema:**

```graphql
packActionOptions(
  where: PackActionOptionWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["label"]]
): [PackActionOption!]!
```

#### **Pack bundle queries**

**`packBundle`**-Gets a specific pack bundle.

**GraphQL schema:**

```graphql
packBundle(where: PackBundleWhereInput!): PackBundle

type PackBundle {
  configSchema: JSON
  description: String
  id: ID!
  name: String!
  packs: [Pack!]!
  ref: String!
}
```

**`packBundles`**-Gets multiple pack bundles.

**GraphQL schema:**

```graphql
packBundles(
  where: PackBundleWhereInput
  search: PackBundleSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [PackBundle]!
```

#### **Pack configuration queries**

**`packConfig`**-Gets a specific pack configuration.

**GraphQL schema:**

```graphql
packConfig(
  where: PackConfigWhereInput
  search: PackConfigSearch
  includeSpec: Boolean
): PackConfig

type PackConfig {
  appliedToTriggers: [Trigger!]!
  config: JSON
  default: Boolean
  description: String
  id: ID
  metadata: JSON
  name: String!
  organization: Organization
  foreignObjectReferences: [ForeignObjectReference!]!
  orgId: ID
  orgVariables: [OrgVariable!]!
  pack: Pack
  packId: ID
  actionOptions: [ActionOption!]!
  updatedAt: String
  createdAt: String
  visibleForOrganizations: [Organization!]!
}
```

**`packConfigs`**-Gets multiple pack configurations.

**GraphQL schema:**

```graphql
packConfigs(
  where: PackConfigWhereInput
  search: PackConfigSearch
  resourceNames: String
  order: [[String!]!]
  includeSpec: Boolean
): [PackConfig!]!
```

**`packConfigsForOrg`**-Gets pack configurations for a specific organization.

**GraphQL schema:**

```graphql
packConfigsForOrg(
  packIds: [ID!]!
  orgId: ID!
  includeSpec: Boolean
): [PackConfig!]!
```

#### **Pack management queries**

**`pack`**-Gets a specific integration pack.

**GraphQL schema:**

```graphql
pack(where: PackWhereInput): Pack

type Pack {
  actions: [Action!]!
  configFormSchema: JSON
  configSchema: JSON
  metadata: JSON
  description: String
  id: String
  orgId: ID
  installedBy: [Organization]
  isDefault: Boolean
  isOauthConfiguration: Boolean
  isMultitenancyEnabled: Boolean
  name: String
  orgVariables: JSON
  packBundle: PackBundle
  packBundleId: ID
  packConfigs: [PackConfig!]!
  packOverrides: [PackOverride]
  packTestAction: Action
  packType: PackType
  ref: String
  icon: String
  sensorTypes: [SensorType!]!
  setupInstructions: String
  status: PackStatus!
  tags: [Tag!]!
  triggerTypes: [TriggerType!]!
  uid: String
  version: String
}
```

**`packsAndBundlesByInstalledState`**-Gets packs and bundles organized by installation state.

**GraphQL schema:**

```graphql
packsAndBundlesByInstalledState(
  orgId: ID!
  includeCustomPack: Boolean
): PacksAndBundlesByInstalledState!

type PacksAndBundlesByInstalledState {
  installedPacksAndBundles: [PackOrPackBundle!]
  marketplacePacksAndBundles: [PackOrPackBundle!]
}
```

#### **Page management queries**

**`page`**-Gets a specific page definition.

**GraphQL schema:**

```graphql
page(where: PageWhereInput!): Page

type Page {
  createdBy: User
  createdById: ID
  createdAt: String
  id: ID!
  loader: Loader
  name: String!
  path: String!
  site: Site
  siteId: ID
  updatedAt: String
  updatedBy: User
  updatedById: ID
  workflows: [Workflow!]!
  nodes: [PageNode]
  permission: Permission
  orgId: ID
  variables: [JSON]
  organization: Organization
  isSynchronized: Boolean
  clonedFromId: ID
  clonedFrom: Site
  cloneOverrides: JSON
  clones: [Page]
  title: String
}
```

**`pageVars`**-Gets page variables.

**GraphQL schema:**

```graphql
pageVars(id: ID!, query: JSON): JSON
```

**`pages`**-Gets multiple pages.

**GraphQL schema:**

```graphql
pages(
  where: PageWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  search: PageSearchInput
): [Page!]!
```

#### **Permission queries**

**`permission`**-Gets a specific permission.

**GraphQL schema:**

```graphql
permission(where: PermissionWhereInput): Permission

type Permission {
  id: ID
  templateId: ID
  authorizedForOrganizations: [Organization]
  authorizedForSubOrganizations: [Organization]
  excludeOrganizations: [Organization]
  roleIds: [String]
  override: String
  objectType: String
  objectId: String
  orgId: ID
  relation: String
  permissionType: String
  subjectType: String
  subjectId: String
}
```

**`permissions`**-Gets multiple permissions.

**GraphQL schema:**

```graphql
permissions(where: PermissionWhereInput): [Permission!]!
```

#### **Sensor type queries**

**`sensorType`**-Gets a specific sensor type.

**GraphQL wchema:**

```graphql
sensorType(
  where: SensorTypeInput
  search: SensorTypeSearchInput
): SensorType

type SensorType {
  description: String
  enabled: Boolean
  entryPoint: String
  id: ID
  name: String
  notifyOnTriggerChanges: Boolean
  pack: Pack
  ref: String
  triggerTypes: [TriggerType!]!
}
```

**`sensorTypes`**-Gets multiple sensor types.

**GraphQL schema:**

```graphql
sensorTypes(
  where: SensorTypeInput
  search: SensorTypeSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [SensorType!]!
```

#### **Site and app management queries**

**`site`**-Gets a specific site/app.

**GraphQL schema:**

```graphql
site(where: SiteWhereInput, search: SiteSearchInput): Site

type Site {
  createdBy: User
  createdById: ID
  createdAt: String
  domain: String
  id: ID!
  isLive: Boolean
  statusCode: Int
  statusMessage: String
  name: String!
  organization: Organization
  orgId: ID!
  shared: Boolean
  updatedAt: String
  updatedBy: User
  updatedById: ID
  template: String
  theme: JSON
  themeReferenceOrgVariable: String
  pages: [Page]
  permission: Permission
  customDomain: String
  isDnsValidated: Boolean
  useCustomDomain: Boolean
  isSynchronized: Boolean
  clonedFromId: ID
  clonedFrom: Site
  cloneOverrides: JSON
  clones: [Site]
  faviconUrl: String
}
```

**`sites`**-Gets multiple sites/apps.

**GraphQL schema:**

```graphql
sites(where: SiteWhereInput, search: SiteSearchInput): [Site!]!
```

**`getAppPermissions`**-Gets app permissions for an organization.

**GraphQL schema:**

```graphql
getAppPermissions(orgId: ID!): [Site!]!
```

**`getSiteTheme`**-Gets site theme configuration.

**GraphQL schema:**

```graphql
getSiteTheme(id: ID, domain: String): JSON
```

#### **Tag management queries**

**`tag`**-Gets a specific tag.

**GraphQL schema:**

```graphql
tag(where: TagWhereInput, search: TagSearchInput): Tag

type Tag {
  crates: [Crate!]
  createdAt: String
  description: String
  id: ID
  name: String
  organization: Organization
  organizations: [Organization!]!
  orgId: ID
  packs: [Pack!]!
  triggers: [Trigger!]!
  updatedAt: String
  color: String
}
```

**`tags`**-Gets multiple tags.

**GraphQL schema:**

```graphql
tags(
  where: TagWhereInput
  search: TagSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  includeTagsWithNoOwner: Boolean = false
): [Tag!]!
```

**`crateTags`**-Gets tags associated with crates.

**GraphQL schema:**

```graphql
crateTags(
  where: TagWhereInput
  search: TagSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Tag!]!
```

#### **Task and execution analytics queries**

**`dailyTaskCountsByDateRange`**-Gets daily task counts within a date range.

**GraphQL schema:**

```graphql
dailyTaskCountsByDateRange(
  orgId: ID!
  startDate: String!
  endDate: String!
): [TaskCountByDate!]!

type TaskCountByDate {
  date: String!
  count: Int!
}
```

**`taskExecutionStats`**-Gets task execution statistics.

**GraphQL schema:**

```graphql
taskExecutionStats(orgId: ID!, createdSince: String): Int!
```

**`taskLog`**-Gets a specific task log entry.

**GraphQL schema:**

```graphql
taskLog(
  where: TaskLogWhereInput
  search: TaskLogSearchInput
): TaskLog

type TaskLog {
  createdAt: String
  executionId: String
  executionTime: String
  id: ID
  input: JSON
  message: String
  originalParentTaskId: String
  originalPrincipalOrgId: ID
  originalPrincipalOrgName: String
  originalRunAsOrgId: String
  originalRunAsOrgName: String
  originalWorkflowExecutionId: String
  originalWorkflowTaskId: String
  originalWorkflowTaskName: String
  parentTask: WorkflowTask
  parentTaskId: ID
  result: JSON
  runAsOrg: Organization
  runAsOrgId: ID
  principalOrg: Organization
  principalOrgId: ID
  status: String
  taskExecutionId: ID
  updatedAt: String
  workflow: Workflow
  workflowExecution: WorkflowExecution
  workflowExecutionId: String
  workflowTask: WorkflowTask
  workflowTaskId: ID
}
```

**`taskLogs`**-Gets multiple task log entries.

**GraphQL schema:**

```graphql
taskLogs(
  where: TaskLogWhereInput
  search: TaskLogSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["createdAt"]]
): [TaskLog!]!
```

#### **Template management queries**

**`template`**

Gets a specific template.

**GraphQL schema:**

```graphql
template(where: TemplateInput): Template

type Template {
  body: String!
  clonedFrom: Template
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Template]
  contentType: String!
  context: JSON
  createdAt: String!
  description: String
  id: ID!
  isShared: Boolean
  isSynchronized: Boolean
  language: String!
  name: String!
  organization: Organization!
  orgId: ID!
  permission: Permission
  tags: [Tag!]!
  unpackedFrom: Crate
  unpackedFromId: ID
  updatedAt: String!
  updatedBy: User
  updatedById: ID
}
```

**`templates`**-Gets multiple templates.

**GraphQL schema:**

```graphql
templates(
  where: TemplateInput
  search: TemplateSearch
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Template!]!
```

**`jinjaTemplate`**-Gets a Jinja template for rendering.

**GraphQL schema:**

```graphql
jinjaTemplate(where: TemplateInput): Template
```

#### **Trigger type queries**

**`triggerType`**-Gets a specific trigger type.

**GraphQL schema:**

```graphql
triggerType(where: TriggerTypeWhereInput): TriggerType

type TriggerType {
  description: String
  id: ID
  name: String
  pack: Pack
  parametersSchema(filterArg: JSON, orgId: ID): JSON
  outputSchema: JSON
  ref: String
  isPoll: Boolean
  isWebhook: Boolean
  sensorType: SensorType
  triggers: [Trigger!]!
  webhookUrlTemplate: String
  canRunForManagedOrgs: Boolean
  enabled: Boolean
}
```

**`triggerTypes`**-Gets multiple trigger types.

**GraphQL schema:**

```graphql
triggerTypes(
  where: TriggerTypeWhereInput
  search: TriggerTypesSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [TriggerType!]!
```

#### **Trigger management queries**

**`trigger`**-Gets a specific trigger.

**GraphQL schema:**

```graphql
trigger(
  where: TriggerWhereInput
  search: TriggerSearchInput
): Trigger

type Trigger {
  activatedForOrgs: [Organization!]!
  autoActivateManagedOrgs: Boolean!
  clonedFrom: Trigger
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Trigger]!
  criteria: JSON
  description: String
  enabled: Boolean
  id: ID!
  isSynchronized: Boolean
  name: String
  organization: Organization!
  orgId: ID
  orgInstances: [OrgTriggerInstance]
  packOverrides: [PackOverride!]
  parameters: JSON
  state: JSON
  tags: [Tag!]!
  triggerType: TriggerType
  triggerTypeId: ID!
  unpackedFrom: Crate
  unpackedFromId: ID
  vars: [JSON]
  workflowId: ID!
  form: Form
  formId: ID
  workflow: Workflow!
}
```

**`workflowCompletionListeners`**-Gets workflow completion listeners.

**GraphQL schema:**

```graphql
workflowCompletionListeners(
  where: TriggerWhereInput
  search: TriggerSearchInput
): [Trigger!]!
```

**`triggers`**-Gets multiple triggers.

**GraphQL schema:**

```graphql
triggers(
  includeUnlisted: Boolean
  where: TriggerWhereInput
  search: TriggerSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Trigger!]!
```

**`triggerDbNotificationErrors`**-Gets database notification errors for a trigger.

**GraphQL schema:**

```graphql
triggerDbNotificationErrors(triggerId: ID!): [DatabaseNotificationError!]!

type DatabaseNotificationError {
  detail: String!
  raised_at: String!
  type: String!
}
```

#### **User invite queries**

**`userInvite`**-Gets a specific user invite.

**GraphQL schema:**

```graphql
userInvite(
  where: UserInviteWhereInput
  search: UserInviteSearchInput
): UserInvite

type UserInvite {
  acceptedAt: String
  createdAt: String
  createdBy: User
  createdById: ID
  email: String!
  id: ID!
  isAccepted: Boolean
  organization: Organization!
  orgId: ID!
  roleIds: [String]
  roles: [JSON]
  sendEmail: Boolean
}
```

**`userInvites`**-Gets multiple user invites.

**GraphQL schema:**

```graphql
userInvites(
  where: UserInviteWhereInput
  search: UserInviteSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["email"]]
): [UserInvite]
```

#### **User management queries**

**`me`**-Gets current user information.

**GraphQL schema:**

```graphql
me: User

type User {
  createdAt: String
  favoriteActions: [UserFavoriteAction!]!
  id: ID
  isApiUser: Boolean
  isSuperuser: Boolean
  isTestUser: Boolean
  managedOrgs: [Organization!]!
  orgId: ID
  organization: Organization
  preferences: UserPreferences!
  roleIds: [String!]!
  roles: [JSON]
  sub: String
  username: String
  parentUserId: ID
  parentUsername: String
}
```

**`userOrganization`**-Gets the user's organization.

**GraphQL schema:**

```graphql
userOrganization: Organization
```

**`user`**-Gets a specific user.

**GraphQL schema:**

```graphql
user(where: UserWhereInput, search: UserSearchInput): User
```

**`users`**-Gets multiple users.

**GraphQL schema:**

```graphql
users(
  where: UserWhereInput
  search: UserSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["username"]]
): [User!]!
```

**`getTestUsers`**-Gets test users.

**GraphQL schema:**

```graphql
getTestUsers(where: UserWhereInput): [User!]!
```

**`getTestUserSession`**-Gets current test user session.

**GraphQL schema:**

```graphql
getTestUserSession: User
```

#### **Workflow analytics queries**

**`timeSavedGroupByWorkflow`**-Gets time saved statistics grouped by workflow.

**GraphQL schema:**

```graphql
timeSavedGroupByWorkflow(
  orgId: ID!
  workflowStatus: String
  updatedAt: String!
  useStatsTable: Boolean! = true
): [TimeSavedGroupByWorkflow!]!

type TimeSavedGroupByWorkflow {
  workflowId: ID!
  workflowName: String
  secondsSaved: Int
  totalExecutions: Int
  successfulExecutions: Int
  failedExecutions: Int
}
```

**`timeSavedGroupBySubOrg`**-Gets time saved statistics grouped by sub-organization.

**GraphQL schema:**

```graphql
timeSavedGroupBySubOrg(
  orgId: ID!
  workflowStatus: String
  updatedAt: String!
  useStatsTable: Boolean! = true
): [TimeSavedGroupByOrg!]!

type TimeSavedGroupByOrg {
  workflowId: ID!
  workflowName: String
  secondsSaved: Int
  totalExecutions: Int
  ranForOrg: String
}
```

**`workflowExecutionStats`**-Gets workflow execution statistics.

**GraphQL schema:**

```graphql
workflowExecutionStats(
  orgId: ID!
  createdSince: String!
  rollUpTimeSaved: Boolean
  includeSubWorkflows: Boolean
): WorkflowExecutionStats

type WorkflowExecutionStats {
  delayed: Int!
  failed: Int!
  humanSecondsSaved: Int!
  paused: Int!
  pending: Int!
  running: Int!
  succeeded: Int!
}
```

**`workflowExecution`**-Gets a specific workflow execution.

**GraphQL schema:**

```graphql
workflowExecution(
  where: WorkflowExecutionWhereInput
  search: WorkflowExecutionSearchInput
): WorkflowExecution

type WorkflowExecution {
  childExecutions: [WorkflowExecution!]!
  completionHandledExecution: WorkflowExecution
  completionHandlerExecutions: [WorkflowExecution!]!
  conductor: WorkflowExecutionConductor
  createdAt: String
  id: ID
  numAwaitingResponseTasks: Int
  numSuccessfulTasks: Int
  organization: Organization!
  orgId: ID!
  originatingExecutionId: ID
  parentExecution: WorkflowExecution
  parentExecutionId: ID
  parentTaskExecutionId: ID
  pendingTasks: [PendingTask]
  processedCompletionAt: String
  status: String
  subExecutions: [WorkflowExecution!]!
  taskLogs: [TaskLog!]!
  updatedAt: String
  workflow: Workflow!
}
```

**`workflowExecutions`**-Gets multiple workflow executions.

**GraphQL schema:**

```graphql
workflowExecutions(
  where: WorkflowExecutionWhereInput
  search: WorkflowExecutionSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["createdAt"]]
  includeSubOrgs: Boolean
): [WorkflowExecution]
```

**`workflowExecutionContexts`**-Gets workflow execution contexts.

**GraphQL schema:**

```graphql
workflowExecutionContexts(workflowExecutionId: ID!): JSON
```

**`dailyTimeSavedByDateRange`**-Gets daily time saved within a date range.

**GraphQL schema:**

```graphql
dailyTimeSavedByDateRange(
  orgId: ID!
  startDate: String!
  endDate: String!
): [TimeSavedByDate!]!

type TimeSavedByDate {
  date: String!
  seconds: Int!
}
```

#### **Workflow patch queries**

**`workflowPatch`**-Gets a specific workflow patch.

**GraphQL schema:**

```graphql
workflowPatch(id: ID!): WorkflowPatch!

type WorkflowPatch {
  id: ID!
  patchType: PatchType!
  patch: JSON!
  comment: String!
  commentDescription: String
  user: User
  workflowId: ID!
  foreignId: ID
  createdAt: String!
  updatedAt: String!
}
```

**`workflowPatches`**-Gets multiple workflow patches.

**GraphQL schema:**

```graphql
workflowPatches(
  where: WorkflowPatchWhereInput
  orderBy: WorkflowPatchOrderByInput = createdAt_DESC
  limit: Int
  offset: Int
  createdSince: String
): [WorkflowPatch!]!
```

#### **Workflow management queries**

**`workflow`**-Gets a specific workflow.

**GraphQL schema:**

```graphql
workflow(
  where: WorkflowWhereInput
  search: WorkflowSearch
): Workflow

type Workflow {
  autoInstallingForManagedOrgs: [Organization!]!
  action: Action
  clonedFrom: Workflow
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Workflow]!
  crates: [Crate!]
  completionListeners: [Trigger!]!
  createdAt: String
  createdBy: User
  createdById: ID
  description: String
  humanSecondsSaved: Int!
  id: ID
  input: [String!]!
  inputSchema: JSON
  isSynchronized: Boolean
  name: String
  notes: [WorkflowNote!]
  organization: Organization!
  orgId: ID!
  output: [JSON]!
  outputSchema: JSON
  packsUsed: [Pack!]!
  parentWorkflows: [WorkflowTask]
  permission: Permission
  schemaVersion: String
  tags: [Tag!]!
  tasks: [WorkflowTask!]!
  tasksObject: JSON
  taskActions: [Action!]!
  timeout: Int
  tokens: [JSON!]
  triggers: [Trigger]
  type: WorkflowType!
  unpackedFrom: Crate
  unpackedFromId: ID
  updatedAt: String
  updatedBy: User
  updatedById: ID
  varsSchema: JSON
  version: String
  visibleForOrganizations: [Organization!]!
}
```

**`workflows`**-Gets multiple workflows.

**GraphQL schema:**

```graphql
workflows(
  where: WorkflowWhereInput
  search: WorkflowSearch
  hasListeners: Boolean
  hasParentWorkflows: Boolean
  hasTriggers: Boolean
  hasTriggerOfType: TriggerOfType
  hasTokens: Boolean
  isOptionsGenerator: Boolean
  isClone: Boolean
  isSyncClone: Boolean
  hasClones: Boolean
  isCrate: Boolean
  isCrateSource: Boolean
  hasTagIds: [ID!]
  excludeTagIds: [ID!]
  requireMatchingTasks: Boolean
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Workflow!]!
```

**`workflowNote`**-Gets a specific workflow note.

**GraphQL schema:**

```graphql
workflowNote(where: WorkflowNoteWhereInput): WorkflowNote

type WorkflowNote {
  id: ID
  title: String
  clonedFrom: WorkflowNote
  clonedFromId: ID
  createdAt: String
  content: String
  metadata: JSON
  index: Int!
  updatedAt: String
  workflow: Workflow
  workflowId: ID
}
```

**`workflowNotes`**-Gets multiple workflow notes.

**GraphQL schema:**

```graphql
workflowNotes(
  where: WorkflowNoteWhereInput
  search: WorkflowNoteSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["index"]]
): [WorkflowNote!]!
```

**`workflowTask`**-Gets a specific workflow task.

**GraphQL schema:**

```graphql
workflowTask(where: WorkflowTaskWhereInput): WorkflowTask

type WorkflowTask {
  action: Action
  actionId: ID
  description: String
  humanSecondsSaved: Int
  id: ID
  input: JSON
  isMocked: Boolean
  join: Int
  metadata: JSON
  mockInput: JSON
  name: String
  next: [WorkflowTransition!]!
  packOverrides: [PackOverride!]
  publishResultAs: String
  retry: WorkflowTaskRetry
  runAsOrgId: String
  timeout: Int
  transitionMode: TransitionModes
  with: WorkflowTaskWithItems
  workflow: Workflow
  workflowId: ID
  securitySchema: JSON
}
```

**`workflowTasks`**-Gets multiple workflow tasks.

**GraphQL schema:**

```graphql
workflowTasks(
  where: WorkflowTaskWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [WorkflowTask!]!
```

### Mutations

#### **Action option mutations**

**`createActionOptions`**-Creates multiple action options.

**GraphQL schema:**

```graphql
createActionOptions(
  actionOptions: [ActionOptionInput!]!
  replace: Boolean
): [ActionOption]
```

**Usage example:**

```yaml
operation_type: "mutation"
operation: "createActionOptions"
variable_values:
  actionOptions:
    - optionLabel: "Environment"
      optionValue: "production"
      organizationId: "{{ CTX.org_id }}"
      packConfigId: "{{ CTX.pack_config_id }}"
      resourceName: "server"
  replace: false
fields: "id, optionLabel, optionValue"
```

#### **Clone operations**

**`unlinkClone`**-Unlinks a cloned object from its source.

**GraphQL schema:**

```graphql
unlinkClone(id: ID!, objectType: CloneableObjectType!): ID

enum CloneableObjectType {
  form
  template
  trigger
  workflow
  page
  site
}
```

**Usage example:**

```yaml
operation_type: "mutation"
operation: "unlinkClone"
variable_values:
  id: "{{ CTX.workflow_id }}"
  objectType: "workflow"
```

#### **Component mutations**

**`createComponent`**-Creates a new component.

**GraphQL schema:**

```graphql
createComponent(component: CreateComponentInput!): Component

input CreateComponentInput {
  orgId: ID!
  name: String!
  description: String
  nodeTree: JSON!
  workflows: [ID]
  isSynced: Boolean
}
```

**`updateComponent`**-Updates an existing component.

**GraphQL schema:**

```graphql
updateComponent(component: UpdateComponentInput!): Component
```

**`deleteComponent`**-Deletes a component.

**GraphQL schema:**

```graphql
deleteComponent(id: ID!): Boolean
```

**`duplicateComponent`**-Duplicates an existing component.

**GraphQL schema:**

```graphql
duplicateComponent(id: ID!): Component
```

#### **Foreign object reference mutations**

**`createForeignObjectReference`**-Creates a foreign object reference.

**GraphQL schema:**

```graphql
createForeignObjectReference(
  foreignObjectReference: CreateForeignObjectReferenceInput
): ForeignObjectReference

input CreateForeignObjectReferenceInput {
  actionId: ID
  id: ID
  identifier: ID
  orgId: ID!
  packConfigId: ID
  referenceId: ID!
  workflowExecutionId: ID
}
```

**`createOrUpdateForeignObjectReference`**-Creates or updates a foreign object reference.

**GraphQL schema:**

```graphql
createOrUpdateForeignObjectReference(
  foreignObjectReference: CreateForeignObjectReferenceInput
): ForeignObjectReference
```

#### **Form mutations**

**`createForm`**-Creates a new form.

**GraphQL schema:**

```graphql
createForm(form: FormCreateInput!): Form

input FormCreateInput {
  clonedFromId: ID
  cloneOverrides: JSON
  description: String
  fields: [FormFieldInput!]
  id: ID
  isSynchronized: Boolean
  name: String
  orgId: ID!
  unpackedFromId: ID
}
```

**Usage example:**

```yaml
operation_type: "mutation"
operation: "createForm"
variable_values:
  form:
    name: "User Information Form"
    description: "Collects user information for onboarding"
    orgId: "{{ CTX.org_id }}"
    fields:
      - type: "TEXT_INPUT"
        index: 0
        schema:
          label: "Full Name"
          required: true
fields: "id, name, description, fields { id, type, schema }"
```

**`submitForm`**-Submits form data and triggers associated workflow.

**GraphQL schema:**

```graphql
submitForm(
  id: ID!
  values: JSON!
  triggerId: ID!
  orgId: ID!
): JSON
```

**`setFormTags`**-Sets tags for a form.

**GraphQL schema:**

```graphql
setFormTags(form: SetFormTagsInput!): Form

input SetFormTagsInput {
  id: ID!
  tagIds: [ID!]!
}
```

**`shallowCloneForm`**-Creates a shallow clone of a form.

**GraphQL schema:**

```graphql
shallowCloneForm(
  id: ID!
  orgId: ID!
  overrides: ShallowCloneOverridesInput
): Form
```

**`updateForm`**-Updates an existing form.

**GraphQL schema:**

```graphql
updateForm(form: FormUpdateInput!): Form
```

**`deleteForm`**-Deletes a form.

**GraphQL dchema:**

```graphql
deleteForm(id: ID!): Void
```

#### **Organization trigger instance mutations**

**`updateOrgTriggerInstance`**-Updates an organization trigger instance.

**GraphQL schema:**

```graphql
updateOrgTriggerInstance(
  orgTriggerInstance: OrgTriggerInstanceInput!
): OrgTriggerInstance

input OrgTriggerInstanceInput {
  id: ID
  isManualActivation: Boolean
  organization: OrganizationInput
  orgId: ID
  lastSearchedAt: String
  trigger: TriggerUpdateInput
  triggerId: ID
  state: JSON
}
```

#### **Organization variable mutations**

**`createOrgVariable`**-Creates a new organization variable.

**GraphQL schema:**

```graphql
createOrgVariable(orgVariable: OrgVariableCreateInput!): OrgVariable

input OrgVariableCreateInput {
  cascade: Boolean!
  id: ID
  name: String!
  value: String!
  category: OrgVariableCategory
  orgId: ID!
  packConfigId: ID
}
```

**Usage example:**

```yaml
operation_type: "mutation"
operation: "createOrgVariable"
variable_values:
  orgVariable:
    name: "api_endpoint"
    value: "https://api.example.com/v1"
    category: "general"
    cascade: true
    orgId: "{{ CTX.org_id }}"
fields: "id, name, value, category, cascade"
```

**`deleteOrgVariable`**-Deletes an organization variable.

**GraphQL schema:**

```graphql
deleteOrgVariable(id: ID!): ID
```

**`updateOrgVariables`**-Updates multiple organization variables.

**GraphQL schema:**

```graphql
updateOrgVariables(
  orgVariables: [OrgVariableUpdateInput!]!
): [OrgVariable!]!

input OrgVariableUpdateInput {
  cascade: Boolean
  category: OrgVariableCategory
  id: ID
  name: String!
  value: String
  orgId: ID
  packConfigId: ID
}
```

#### **Organization management mutations**

**`bulkCreateOrganizations`**-Creates multiple organizations in bulk.

**GraphQL schema:**

```graphql
bulkCreateOrganizations(
  organizations: [OrganizationInput!]!
): [Organization!]!
```

**`bulkDeleteOrganizations`**-Deletes multiple organizations in bulk.

**GraphQL schema:**

```graphql
bulkDeleteOrganizations(organizationIds: [ID!]!): Void
```

**`createOrganization`**-Creates a single organization.

**GraphQL schema:**

```graphql
createOrganization(organization: OrganizationInput): Organization

input OrganizationInput {
  domain: String
  id: ID
  isEnabled: Boolean
  managingOrgId: ID
  name: String!
  orgSlug: String
  rocSiteId: String
  tid: String
  tagIds: [ID!]
}
```

**`createOrganizations`**-Creates multiple organizations.

**GraphQL schema:**

```graphql
createOrganizations(
  organizations: [OrganizationInput!]!
): [Organization]
```

**`deleteOrganization`**-Deletes an organization.

**GraphQL schema:**

```graphql
deleteOrganization(id: ID!): Void
```

**`updateManagedAndSubOrganizations`**-Updates managed and sub-organizations.

**GraphQL schema:**

```graphql
updateManagedAndSubOrganizations(
  organization: OrganizationUpdateInput!
): Int
```

**`updateOrganization`**-Updates an organization.

**GraphQL schema:**

```graphql
updateOrganization(organization: OrganizationUpdateInput): Organization
```

**`bulkUpdateOrganizationFeaturePreviewSettingByLabel`**-Bulk updates feature preview settings by label.

**GraphQL schema:**

```graphql
bulkUpdateOrganizationFeaturePreviewSettingByLabel(
  isEnabled: Boolean!
  label: String!
  orgIds: [ID!]!
): [OrganizationFeaturePreviewSetting!]!
```

#### **Pack configuration mutations**

**`synchronizePackBundleConfigs`**-Synchronizes pack bundle configurations.

**GraphQL schema:**

```graphql
synchronizePackBundleConfigs(
  orgId: ID!
  packBundleId: ID!
  primaryPackConfigId: ID!
): [SynchronizedPackConfig!]!
```

**`createPackConfig`**-Creates a new pack configuration.

**GraphQL schema:**

```graphql
createPackConfig(packConfig: PackConfigCreateInput!): PackConfig

input PackConfigCreateInput {
  id: ID
  name: String!
  default: Boolean
  description: String
  config: JSON
  metadata: JSON
  orgId: ID!
  packId: ID!
}
```

**`deletePackConfig`**-Deletes a pack configuration.

**GraphQL schema:**

```graphql
deletePackConfig(id: ID!, orgId: ID!): Void
```

**`refetchPackConfigRefOptions`**-Refetches pack configuration reference options.

**GraphQL schema:**

```graphql
refetchPackConfigRefOptions(
  packConfigId: ID!
  reference: JSON
): JobRequestedResponse
```

**`testPackConfig`**-Tests a pack configuration.

**GraphQL schema:**

```graphql
testPackConfig(packConfig: PackConfigTestInput!): JobRequestedResponse
```

**`updatePackConfig`**-Updates a pack configuration.

**GraphQL schema:**

```graphql
updatePackConfig(packConfig: PackConfigUpdateInput!): PackConfig
```

**`updatePackConfigs`**-Updates multiple pack configurations.

**GraphQL schema:**

```graphql
updatePackConfigs(
  packConfigs: [PackConfigUpdateInput!]!
): [PackConfig!]!
```

#### **Pack mutations**

**`generatePackOrBundleAuthUrl`**-Generates authorization URL for pack or bundle.

**GraphQL schema:**

```graphql
generatePackOrBundleAuthUrl(
  orgId: ID!
  packBundleId: ID
  packConfigId: ID
  extra: JSON
): AuthUrlResponse

type AuthUrlResponse {
  authUrl: String
  error: String
}
```

**`installPack`**-Installs a pack for an organization.

**GraphQL schema:**

```graphql
installPack(orgId: ID!, packId: ID!, name: String): Organization
```

**`getPackInstallations`**-Gets pack installation information.

**GraphQL schema:**

```graphql
getPackInstallations(packId: ID!): PackInstalledByResponse
```

**`getPackPageUrl`**-Gets the URL for a pack page.

**GraphQL schema:**

```graphql
getPackPageUrl(integrationRef: String!, pagePath: String!): String
```

**`updatePack`**-Updates a pack.

**GraphQL schema:**

```graphql
updatePack(pack: PackUpdateInput!): Pack
```

#### **Page mutations**

**`createPage`**-Creates a new page.

**GraphQL schema:**

```graphql
createPage(
  page: PageCreateInput!
  preset: String
  nodes: [PageNodeInput]
): Page

input PageCreateInput {
  id: ID
  loader: Loader
  siteId: ID
  workflows: [WorkflowInput]
  name: String!
  path: String!
  variables: [JSON]
  orgId: ID!
  clonedFromId: ID
  isSynchronized: Boolean
  cloneOverrides: JSON
}
```

**`updatePage`**-Updates an existing page.

**GraphQL schema:**

```graphql
updatePage(
  page: PageUpdateInput!
  nodes: [PageNodeInput]
): Page
```

**`deletePage`**-Deletes a page.

**GraphQL schema:**

```graphql
deletePage(id: ID!): Void
```

**`updatePageNode`**-Updates a page node.

**GraphQL schema:**

```graphql
updatePageNode(id: ID!, props: JSON!): PageNode
```

**`updatePageNodeByCraftId`**-Updates a page node by craft ID.

**GraphQL schema:**

```graphql
updatePageNodeByCraftId(
  craftId: String!
  pageId: ID!
  props: JSON!
): PageNode
```

#### **Site mutations**

**`createSite`**-Creates a new site/app.

**GraphQL schema:**

```graphql
createSite(site: SiteCreateInput!): Site

input SiteCreateInput {
  name: String
  domain: String
  orgId: ID!
  template: String
  theme: JSON
  pages: [PagesImportInput]
  clonedFromId: ID
  isSynchronized: Boolean
  cloneOverrides: JSON
}
```

**`updateSite`**-Updates an existing site/app.

**GraphQL schema:**

```graphql
updateSite(site: SiteUpdateInput!): Site
```

**`updateSites`**-Updates multiple sites.

**GraphQL schema:**

```graphql
updateSites(sites: [SiteUpdateInput!]!): [Site!]!
```

**`deleteSite`**-Deletes a site/app.

**GraphQL schema:**

```graphql
deleteSite(id: ID!): Void
```

**`validateSiteCustomDomainDNS`**-Validates custom domain DNS settings.

**GraphQL schema:**

```graphql
validateSiteCustomDomainDNS(id: ID!): DNSValidationResponse

type DNSValidationResponse {
  isValid: Boolean
  message: String
}
```

#### **Tag mutations**

**`createTag`**-Creates a new tag.

**GraphQL schema:**

```graphql
createTag(tag: TagCreateInput!): Tag

input TagCreateInput {
  id: ID
  name: String
  description: String
  orgId: ID!
  color: String
}
```

**`deleteTag`**-Deletes a tag.

**GraphQL schema:**

```graphql
deleteTag(id: ID!): ID
```

**`updateTag`**-Updates a tag.

**GraphQL schema:**

```graphql
updateTag(tag: TagUpdateInput!): Tag
```

**`updateTags`**-Updates multiple tags.

**GraphQL schema:**

```graphql
updateTags(tags: [TagUpdateInput!]!): [Tag!]!
```

**`setOrganizationTags`**-Sets tags for an organization.

**GraphQL schema:**

```graphql
setOrganizationTags(tagIds: [ID!]!, orgId: ID!): Organization
```

#### **Template mutations**

**`createTemplate`**-Creates a new template.

**GraphQL schema:**

````graphql
createTemplate(template: TemplateCreateInput!): Template

input TemplateCreateInput {
  body: String!
  clonedFromId: ID
  cloneOverrides: JSON
  contentType: String
  context: JSON
  description: String
  id: ID
  isShared: Boolean
  isSynchronized: Boolean
  language: String
  name: String!
  orgId: ID!
  tags: [TagInput!]
  unpackedFromId: ID
}

## Best Practices

### Query Optimization

1. **Limit Data Retrieval**: Only request the fields you actually need
2. **Use Pagination**: Implement proper limit and offset for large datasets
3. **Filter Early**: Apply filters at the query level rather than post-processing

### Error Handling

```yaml
# Example workflow task with error handling
- name: execute_graphql_query
  action: rewst.generic_graph_request
  parameters:
    operation_type: "query"
    operation: "workflows"
    variable_values:
      limit: 100
      where:
        orgId: "{{ CTX.org_id }}"
  on_failure:
    - log_error:
        message: "GraphQL query failed: {{ RESULT.error }}"
````

## Security considerations

1. Always validate user inputs before including in queries
2. Use organization and permission filters to restrict data access
3. Track usage patterns for potential security issues

### Common use cases for the Generic GraphQL request action

#### Bulk data operations

**Action configuration:**

* **Operation type**: `mutation`
* **Operation**: `updateOrgVariables`
*   **Variable values**:

    ```json
    {
      "orgVariables": [
        {
          "id": "var1",
          "name": "setting1",
          "value": "updated_value1"
        },
        {
          "id": "var2",
          "name": "setting2",
          "value": "updated_value2"
        }
      ]
    }
    ```

#### Complex reporting

**Action configuration:**

* **Operation type**: `query`
* **Operation**: `workflows`
*   **Variable values**:

    ```json
    {
      "where": {
        "orgId": "{{ CTX.org_id }}"
      },
      "limit": 1000
    }
    ```
*   **Fields**:

    ```
    id
    name
    description
    createdAt
    updatedAt
    tasks {
      id
      name
      action {
        name
        pack {
          name
        }
      }
    }
    triggers {
      id
      name
      enabled
    }
    ```

#### Data synchronization

**Action configuration:**

* **Operation type**: `query`
* **Operation**: `organizations`
*   **Variable values**:

    ```json
    {
      "where": {
        "managingOrgId": "{{ CTX.parent_org_id }}"
      },
      "order": [["name"]]
    }
    ```
* **Fields**: `id, name, domain, createdAt, managedOrgs { id, name }`

## Troubleshoot the Generic GraphQL request action

### **Permission denied**

* Verify the feature flag is enabled for your organization
* Check if your organization has staff privileges for the requested operation
* Ensure the operation is in the allowed list for non-staff organizations

### **Query syntax errors**

* Validate GraphQL syntax using a GraphQL validator
* Check field names against the schema
* Ensure variable types match the expected schema types

### **Rate limiting**

* Implement exponential backoff for retries
* Consider breaking large operations into smaller batches
* Monitor API usage patterns

### Debug tips

1. Begin with basic queries before building complex operations
2. For debugging, use the `raw_query` parameter to see exact queries
3. Review workflow execution logs for detailed error messages
4. Build queries incrementally, adding fields and filters gradually

## Schema Reference

The Generic GraphQL Request action provides access to Rewst's complete GraphQL schema. Key entity types include:

* **Organization**: Core organizational data and settings
* **Workflow**: Automation workflow definitions and execution data
* **Action**: Available actions and their configurations
* **Trigger**: Event triggers and their configurations
* **Form**: Dynamic forms and field definitions
* **Template**: Reusable templates and scripts
* **User**: User accounts and permissions
* **Pack**: Integration packs and their components

For detailed schema information, [contact Rewst support](../../../support-and-community/roc-support/) or refer to the GraphQL schema documentation.

