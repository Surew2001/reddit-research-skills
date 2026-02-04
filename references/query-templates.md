# Query Templates

## Pain Points

```bash
# Product problems
curl -X POST "$URL" -d '{"query":"PRODUCT problems","limit":100}'

# Service issues
curl -X POST "$URL" -d '{"query":"SERVICE terrible","limit":100}'

# Feature requests
curl -X POST "$URL" -d '{"query":"PRODUCT missing feature","limit":100}'
```

## Competitive Analysis

```bash
# Product comparisons
curl -X POST "$URL" -d '{"query":"A vs B comparison","limit":50}'

# User recommendations
curl -X POST "$URL" -d '{"query":"best ALTERNATIVE","limit":50}'
```

## Use Cases

```bash
# How-tos
curl -X POST "$URL" -d '{"query":"how to use PRODUCT","limit":50}'

# Real examples
curl -X POST "$URL" -d '{"query":"PRODUCT daily workflow","limit":50}'
```

## Sentiment

```bash
# Positive
curl -X POST "$URL" -d '{"query":"PRODUCT love best","limit":100}'

# Negative
curl -X POST "$URL" -d '{"query":"PRODUCT hate worst","limit":100}'
```
