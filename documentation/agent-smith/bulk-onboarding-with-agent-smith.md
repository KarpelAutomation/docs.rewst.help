# Bulk onboarding with Agent Smith

When a new agent registers with Rewst, the workflow hits Azure IoT Hub’s identity registry up to five times.

```
Two queries → create → get → tag‑update
```

\
On a standard‑1 (S1) hub, that registry is capped at 100 identity operations per minute, per unit.

```
100 ops ÷ 5 ops / agent ≈ **20 agents / min / unit**
```

{% hint style="warning" %}
**Important — Plan your own throttle or scale‑up**\
\
Rewst deliberately leaves rate‑limiting in your hands so you can tune roll‑outs to match your Azure budget.\
A large, unthrottled burst will exceed IoT Hub limits, pile up HTTP 429 retries, and slow down all of your Rewst workflows during onboarding.\
To avoid this, either add jitter/batching in your RMM script, or do a temporary IoT Hub scale‑up before the push.
{% endhint %}

## What is an IoT hub unit?

A _unit_ is simply a slice of IoT Hub capacity you can dial up or down.\
All per‑minute limits scale linearly with both units and SKU size.

| SKU         | Identity ops / min / unit | Agents / min / unit, 5‑call workflow |
| ----------- | ------------------------- | ------------------------------------ |
| **S1 / S2** | 100                       | \~20                                 |
| **S3**      | 5 000                     | \~1 000                              |

***

### Scenarios

| Choose one                          | How to do it                                                                                                                                                     | Throughput                          | Cost example\*                                         |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------- | ------------------------------------------------------ |
| **Scale the hub (fast)**            | <p>• <code>bash az iot hub update -n &#x3C;hub> --sku S3 --unit 2</code><br><br>• Run 5 min before deploy; scale back to <code>S1 --unit 1</code> when done.</p> | \~2 000 agents/min                  | S3 ≈ **$3.47 per unit‑hour** → 2 units × 4 h ≈ **$28** |
| **Throttle in RMM (no Azure cost)** | <p>• Deploy ≤ 50 agents / min / S1‑unit.<br><br>• Add jitter: <code>Start‑Sleep (Get‑Random 5 3600)</code> before install.</p>                                   | Current hub limit (\~20 agents/min) | Longer total time; more scripting effort               |

\*US‑East pricing, rounded

## Rules to follow

* Default S1 × 1 → ≈ 20 agents / min.
* Formula: `Agents / min = (100 or 5 000) × units ÷ 5`.
* Scaling is live. Existing connections stay up; a few messages may arrive out of order, which is harmless.

Pick the path that matches your timeline and budget to avoid 429s during mass onboarding.
