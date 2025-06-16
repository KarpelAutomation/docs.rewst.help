# \[Rewst Master v2] PSA-Halo: Get Agents

This workflow serves as a fundamental data retrieval building block that pulls a complete list of technicians/agents from Halo PSA, providing essential personnel data that can be utilized in more complex automation sequences. MSPs would find this function valuable when building ticket assignment workflows, creating technician availability reports, implementing skill-based routing, or developing any automation that requires filtering or assigning work based on agent attributes. Technically, the workflow executes a straightforward API call to Halo PSA that retrieves all agent records, returning them as a structured array that other workflows can filter, iterate through, or use for decision-making processes without requiring administrators to manually extract this information each time it's needed.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of agent objects.

### Key tasks

* **list\_agents**: HaloPSA integration: List Agents

### Jinja examples

#### Example 1

```jinja
{{ [{"id": agents.id, "label": agents.name, "default": true if agents.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false} for agents in TASKS.list_agents.result.result] }}
```
