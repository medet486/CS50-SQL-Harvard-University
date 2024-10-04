# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Distributing the data across 3 boats could improve accessibility and provide a backup in case one boat loses data, but it also uses more space than necessary. A more space-efficient approach would be for each boat to operate in its own time zone.

## Partitioning by Hour

If the data is divided into 3 sections based on time periods, each database only uses the space it needs. This approach can be more efficient because each database operates according to its specific time period.

## Partitioning by Hash Value

Using hash values can reduce database search time by allowing the system to look for smaller hash values rather than entire dates. Indexing can further speed up the process. However, assigning the same hash value to the same date can sometimes lead to complications if all hash values are not consistently managed.
