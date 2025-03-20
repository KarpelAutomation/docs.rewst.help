# Actions & Endpoints

## Introduction

The Dns Filter Integration with Rewst delivers a robust set of actions and endpoints for interacting with Dns Filter. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Dns Filter Integration:

* [**Agent Local User**](actions-and-endpoints.md#agent-local-user)
* [**Billings**](actions-and-endpoints.md#billings)
* [**Block Pages**](actions-and-endpoints.md#block-pages)
* [**Categories**](actions-and-endpoints.md#categories)
* [**Collection Users**](actions-and-endpoints.md#collection-users)
* [**Collections**](actions-and-endpoints.md#collections)
* [**Domains**](actions-and-endpoints.md#domains)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Invoices**](actions-and-endpoints.md#invoices)
* [**IP Addresses**](actions-and-endpoints.md#ip-addresses)
* [**Mac Addresses**](actions-and-endpoints.md#mac-addresses)
* [**Network Lan IPs**](actions-and-endpoints.md#network-lan-ips)
* [**Network Subnets**](actions-and-endpoints.md#network-subnets)
* [**Networks**](actions-and-endpoints.md#networks)
* [**Organization Users**](actions-and-endpoints.md#organization-users)
* [**Organizations**](actions-and-endpoints.md#organizations)
* [**Policies**](actions-and-endpoints.md#policies)
* [**Policy IPs**](actions-and-endpoints.md#policy-ips)
* [**Scheduled Policies**](actions-and-endpoints.md#scheduled-policies)
* [**Traffic Reports**](actions-and-endpoints.md#traffic-reports)
* [**User Agents**](actions-and-endpoints.md#user-agents)
* [**Users**](actions-and-endpoints.md#users)

## Actions

### Agent Local User

## List Agent Local Users

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/agent_local_users`

Gets the agent local users associated to an organization with basic information

## List All Agent Local Users

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/agent_local_users/all`

Gets ALL agent local users associated to an user organization with basic information

## Get Agent Local User

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/agent_local_users/{id}`

Gets basic information of the specified agent local user

## Update Agent Local User

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/agent_local_users/{id}`

Updates an agent local user with the specified data

### Billings

## List User Organization Billing

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/billing`

List basic billing information of the user organization registered in Stripe platform

## Create Payment Method

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/billing`

Register a newly created payment method in database

### Block Pages

## List Block Pages

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/block_pages`

Gets the list of block pages associated with the current user

## Create Block Page

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/block_pages`

Creates a new block page

## List All Block Pages

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/block_pages/all`

Gets ALL block pages associated with the current user

## Get Block Page

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/block_pages/{id}`

Gets the specified block page

## Update Block Page

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/block_pages/{id}`

Updates a block\_page in the database with the specified data

## Delete Block Page

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/block_pages/{id}`

Removes a block page from the database

### Categories

## List Categories

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/categories`

List categories basic information

## List All Categories

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/categories/all`

List all categories including internal categories

## Get Category

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/categories/{id}`

Gets basic information of a specific category

### Collection Users

## Create Collection User With Filter And Sort

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/collections/{collection_id}/users/`

Add a new user to a specific collection with the specified id

## Create Collection User

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/collections/{collection_id}/users/`

Add a new user to a specific collection with the specified id

## Get User Permissions

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/collections/{collection_id}/users/{id}`

Gets the user details and permissions for the specified organization

## Delete User From Collection

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/collections/{collection_id}/users/{id}`

Deletes a user from a collection

### Collections

## List Agent Local Users With Class Type

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/sync_tool/:class_type/:id/users`

Gets the agent local users associated to a collection or group

## List Agent Local Users In Organization

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/sync_tool/`

Gets the agent local users associated to a collection or group

### Domains

## List Domains By FQDN

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/domains/user_lookup`

Gets all the domains associated for a particular FQDN

## List Domains And Categories For FQDNs

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/domains/bulk_lookup`

Gets the domains and categories associated for each FQDN of the specified list

## Mark FQDN For Categorization Verification

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/domains/suggest_categories`

Mark a FQDN to verify its categorization with suggested ones

## Update FQDN Threat Categorization

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/domains/suggest_threat`

Mark a FQDN to verify its threat categorization

### Generic Request

## DNS API Request

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/<url_path>`

Generic action for making authenticated requests against the DNS Filter API

### Invoices

## Get User Estimated Invoice For Next Month

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/invoices/current`

Gets user estimated invoice for next month. WARNING: almost all invoice data are \`null\` values, take that into consideration when using this endpoint

## List User Invoices

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/invoices`

Gets user associated invoices, most recent first

## Get Invoice

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/invoices/{id}`

Gets basic information of the specified invoice

### Ip Addresses

## Get User IP Addresses

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/ip_addresses`

Gets user associated IP addresses basic information

## Create IP Address

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/ip_addresses`

Creates a new IP address with the specified data

## List User IP Addresses

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/ip_addresses/all`

Gets ALL user associated IP addresses basic information

## Get IP Address

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/ip_addresses/{id}`

Gets basic information of the specified IP address

## Update IP Address

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/ip_addresses/{id}`

Updates an IP address with the specified data

## Delete IP Address

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/ip_addresses/{id}`

Removes an IP address

## List IP Addresses

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/ip_addresses/verify`

Verification call to ensure IP address is not already in the system \`TODO:\` make this API friendly and return different status codes for responses

## Get Requester IP Address

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/ip_addresses/myip`

Responds with the requester reported IP address

### Mac Addresses

## List MAC Addresses

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/mac_addresses`

Gets the MAC addresses associated to an organization with basic information

## Create MAC Address

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/mac_addresses`

Creates a new MAC address with the specified data

## List User MAC Addresses

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/mac_addresses/all`

Gets ALL MAC addresses associated to an user with basic information

## Get MAC Address Info

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/mac_addresses/{id}`

Gets basic information of the specified MAC address

## Update MAC Address

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/mac_addresses/{id}`

Updates a MAC address with the specified data

## Delete MAC Address

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/mac_addresses/{id}`

Removes a MAC address

### Network Lan Ips

## List Network Lan IPs

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/{id}/lan_ips`

Gets network associated LAN IPs with basic information

## Get Network Lan IP

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/{id}/lan_ips/{lan_ip_id}`

Gets network associated LAN IP with basic information

## Update Network Lan IP

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/networks/{id}/lan_ips/{lan_ip_id}`

Updates a network LAN IP in the database with the specified data

### Network Subnets

## List Site Subnets

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/subnets`

List site subnets with basic information

## List Network Subnets

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/{id}/subnets`

Gets network associated subnets with basic information

## Create Network Subnet

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/networks/{id}/subnets`

Creates a network subnet in the database with the specified data

## Get Network Subnet

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/{id}/subnets/{subnet_id}`

Gets network associated subnet with basic information

## Update Network Subnet

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/networks/{id}/subnets/{subnet_id}`

Updates a network subnet in the database with the specified data

## Delete Network Subnet

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/networks/{id}/subnets/{subnet_id}`

Deletes a network subnet in the database with the specified data

### Networks

## List User Associated Networks

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks`

Gets users associated networks with basic information

## Create Network

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/networks`

Creates a new network with the specified data

## List User Networks

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/all`

Gets ALL networks associated to the user with its basic information

## List Msp User Networks

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/msp`

Gets MSP user associated networks with basic information

## List All Msp User Networks

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/msp/all`

Gets ALL networks associated to the MSP user with its basic information

## Get Network Info By IP Addresses

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/lookup`

Gets basic information of a network based on its associated IP addresses

## Get Network

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/networks/{id}`

Gets basic information of the specified network

## Update Network

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/networks/{id}`

Updates a network with the specified data

## Delete Network

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/networks/{id}`

Deletes a network

## Create Network Secret Key

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/networks/{id}/secret_key`

Creates a new network secret key to be used by agents

## Delete Network Secret Key

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/networks/{id}/secret_key`

Revokes a network secret key

## Update Network Secret Key

<mark style="color:purple;">`PATCH`</mark> `api.dnsfilter.com/v1/networks/{id}/secret_key`

Rotates (renew) a network secret key to be used by agents

### Organization Users

## List Organization Users

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/organizations/{organization_id}/users/`

Gets the users for the specified organization

## Get Organization User

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/organizations/{organization_id}/users/{id}`

Gets the user details and permissions for the specified organization

## Update User Or Permissions

<mark style="color:purple;">`PATCH`</mark> `api.dnsfilter.com/v1/organizations/{organization_id}/users/{id}`

Updates a user or permissions with the specified data

## Delete Organization User

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/organizations/{organization_id}/users/{id}`

Removes a user from the organization. This will not actually delete the user account.

## Create Organization User

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/organizations/{organization_id}/users`

Adds a new or existing user with the specified email to the specified organization.

### Organizations

## List User Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/organizations`

Gets users associated organizations basic information

## Create Organization

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/organizations`

Creates a new organization with the specified data

## List Organizations Basic

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/organizations/all`

Gets all organizations basic information

## Get Organization Information

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/organizations/{id}`

Gets basic information of the specified organization

## Update Organization

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/organizations/{id}`

Updates an organization with the specified data

## Delete Msp Customer

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/organizations/{id}`

Deletes an MSP customer

## Update Organization Status To Canceled

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/organizations/{id}/cancel`

Sets an organization as 'Canceled'

## Promote Organization To Msp

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/organizations/promote_to_msp/`

Promote an organization to a MSP

### Policies

## Get User Associated Policies

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/policies`

Gets user associated policies basic information from database

## Create Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies`

Creates a new policy with the specified data

## List User Policies

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/policies/all`

Gets ALL user associated policies basic information from database

## Get Policy

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/policies/{id}`

Gets basic information of the specified policy

## Update Policy

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/policies/{id}`

Updates a policy with the specified data

## Delete Policy

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/policies/{id}`

Deletes a policy

## Add Blacklist Domain to Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/add_blacklist_domain`

Adds a domain to the blacklist of the specified policy

## Remove Domain from Blacklist of Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/remove_blacklist_domain`

Removes a domain from the blacklist of the specified policy

## Add Whitelist Domain to Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/add_whitelist_domain`

Adds a domain to the whitelist of the specified policy

## Remove Domain from Whitelist of Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/remove_whitelist_domain`

Removes a domain from the whitelist of the specified policy

## Add Blacklist Category to Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/add_blacklist_category`

Adds a category to the blacklist of the specified policy

## Remove Category from Blacklist of Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/remove_blacklist_category`

Removes a category from the blacklist of the specified policy

## Add Allowed Application to Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/add_allowed_application`

Adds an application to the allowed list of the specified policy

## Remove Allowed Application from Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/remove_allowed_application`

Removes an application from the allowed list of the specified policy

## Add Blocked Application to Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/add_blocked_application`

Adds an application to the blocked list of the specified policy

## Remove Blocked Application from Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/policies/{id}/remove_blocked_application`

Removes an application from the blocked list of the specified policy

### Policy Ips

## Get User Policies Ips

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/policy_ips`

Gets user associated policies IPs basic information from database

## Get Policy IP

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/policy_ips/{id}`

Gets basic information of the specified Policy IP

### Scheduled Policies

## List Scheduled Policies

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/scheduled_policies`

Gets the list of scheduled policies associated with the current user

## Create Scheduled Policy

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/scheduled_policies`

Creates a new scheduled policy

## List All Scheduled Policies

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/scheduled_policies/all`

Gets ALL scheduled policies associated with the current user

## Get Scheduled Policy

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/scheduled_policies/{id}`

Gets the specified scheduled policy

## Update Scheduled Policy

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/scheduled_policies/{id}`

Updates a scheduled policy in the database with the specified data

## Delete Scheduled Policy

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/scheduled_policies/{id}`

Removes a scheduled policy from the database

### Traffic Reports

## Get Total Requests

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_requests`

Gets the total number of requests for sites in a period of time

## Get Total Requests For Organizations In Time Period

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_requests_organizations`

Gets the total number of requests for organizations in a period of time

## Get Total Requests For Roaming Clients

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_requests_agents`

Gets the total number of requests for roaming clients in a period of time

## Get Total Requests For Users

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_requests_users`

Gets the total number of requests for users in a period of time

## Get Total Requests For Collections

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_requests_collections`

Gets the total number of requests for collections in a period of time

## Get Total Threats For Sites In Time Period

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_threats`

Gets the total number of threats for sites in a period of time

## Get Total Threats For Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_threats_organizations`

Gets the total number of threats for organizations in a period of time

## Get Total Threats For Roaming Clients

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_threats_agents`

Gets the total number of threats for roaming clients in a period of time

## Get Total Threats For Users In Time Period

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_threats_users`

Gets the total number of threats for users in a period of time

## List Total Threats For Collections

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_threats_collections`

Gets the total number of threats for collections in a period of time

## List Total Requests By Category

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_categories`

Gets the total number of requests by category for sites in a period of time

## List Total Requests By Category For Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_categories_organizations`

Gets the total number of requests by category for organizations in a period of time

## List Requests By Category For Roaming Clients

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_categories_agents`

Gets the total number of requests by category for roaming clients in a period of time

## List Requests By Category

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_categories_users`

Gets the total number of requests by category for users in a period of time

## List Requests By Category For Collections

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_categories_collections`

Gets the total number of requests by category for collections in a period of time

## Get Total Requests By Domain

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_domains`

Gets the total number of requests by domain for sites in a period of time

## Get Total Requests By Domain For Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_domains_organizations`

Gets the total number of requests by domain for organizations in a period of time

## Get Total Requests By Domain For Roaming Clients

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_domains_agents`

Gets the total number of requests by domain for roaming clients in a period of time

## List Domain Requests

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_domains_users`

Gets the total number of requests by domain for users in a period of time

## List Total Requests By Domain For Collections

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_domains_collections`

Gets the total number of requests by domain for collections in a period of time

## Get Total Requests By Collection

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_collections`

Gets the total number of requests by collection for sites in a period of time

## Get Total Requests By Collection For Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_collections_organizations`

Gets the total number of requests by collection for organizations in a period of time

## List Total Requests By Collection For Roaming Clients In Time Period

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_collections_agents`

Gets the total number of requests by collection for roaming clients in a period of time

## Gets The Total Number Of Requests By Collection For Users In A Period Of Time

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/total_collections_users`

Gets the total number of requests by collection for users in a period of time

## List Qps For Sites

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/qps`

Gets the total number of queries per second in a period of time for sites

## Get Total Qps For Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/qps_active_organizations`

Gets the total number of queries per second in a period of time (maximum 20 minutes) for organizations

## Get Roaming Clients Qps

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/qps_active_agents`

Gets the total number of queries per second in a period of time (maximum 20 minutes) for roaming clients

## Get Qps For Users

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/qps_active_users`

Gets the total number of queries per second in a period of time (maximum 20 minutes) for users

## Get Total Qps For Collections

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/qps_active_collections`

Gets the total number of queries per second in a period of time (maximum 20 minutes) for collections

## Gets The Top Requested Domains In A Period Of Time

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_domains`

Gets the top requested domains in a period of time

## List Top Categories Domains

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_categories`

Gets the top categories domains in a period of time

## List Top Organizations

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_organizations`

Gets the top organizations in a period of time

## List Top Networks

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_networks`

Gets the top networks in a period of time

## List Top Agents

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_agents`

Gets the top agents in a period of time

## List Top Users

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_users`

Gets the top users in a period of time

## List Top Collections

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/top_collections`

Gets the top collections in a period of time

## List Query Raw Logs

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/traffic_reports/query_logs`

Gets the query raw logs in a period of time

_NOTE: maximum time range is 72 hours_

### User Agents

## List User Agents

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/user_agents`

Gets a list of user agents with basic information

## List All User Agents

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/user_agents/all`

Gets a list of ALL user agents with basic information

## Get User Agent

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/user_agents/{id}`

Gets the specified user agent with basic information

## Update User Agent

<mark style="color:orange;">`PUT`</mark> `api.dnsfilter.com/v1/user_agents/{id}`

Updates an user agent with the specified data

## Delete User Agent

<mark style="color:red;">`DELETE`</mark> `api.dnsfilter.com/v1/user_agents/{id}`

Soft deletes an user agent

## List User Agent Tags

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/user_agents/tags`

Gets ALL tags used by user agents on a network or organization

### Users

## List Users Basic Information

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/users`

Gets users basic information

## List All Users Basic Information

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/users/all`

Gets ALL users basic information

## Get Information of User

<mark style="color:blue;">`GET`</mark> `api.dnsfilter.com/v1/users/{id}`

Gets basic information of the specified user

## Update Email Verification Status

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/users/check_email_verification`

Sets the specified email address as verified

## Create User Email Verification

<mark style="color:green;">`POST`</mark> `api.dnsfilter.com/v1/users/send_email_verification`

Sends an email to the user to verify his email address
