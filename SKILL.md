---
name: reddit-research
description: Use this skill whenever you need to research topics, opinions, or trends on Reddit. Find user pain points, market opportunities, product feedback, competitive analysis, and discover niche communities. Provides techniques for effective Reddit searches using the reddit-search-mcp API.
license: MIT
---

# Reddit Research Skill

## Overview

This skill provides techniques for conducting effective research on Reddit using AI-powered semantic search API.

## When to Use This Skill

- Researching user opinions on products or services
- Finding pain points and complaints about competitors
- Discovering niche market opportunities
- Analyzing sentiment around topics
- Validating product ideas with real user feedback

## Quick Start

### Search Reddit Discussions

```bash
# Search for product problems
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "iphone problems complaints", "limit": 50}'

# Find user frustrations
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "software tool frustrations", "limit": 50}'
```

### Get Subreddit Info

```bash
# List popular subreddits
curl "https://reddapi.dev/api/subreddits?limit=10" \
  -H "Authorization: Bearer $REDDAPI_API_KEY"

# Get specific subreddit
curl "https://reddapi.dev/api/subreddits/programming" \
  -H "Authorization: Bearer $REDDAPI_API_KEY"
```

## Query Techniques

### Finding Pain Points

```bash
# Product problems
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "PRODUCT_NAME problems issues", "limit": 100}'

# User complaints
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "PRODUCT_NAME frustrating annoying", "limit": 100}'
```

### Competitive Analysis

```bash
# Compare products
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "TOOL_A vs TOOL_B", "limit": 50}'

# User recommendations
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "best ALTERNATIVE to PRODUCT", "limit": 50}'
```

### Finding Use Cases

```bash
# How users use a product
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "how do you use PRODUCT", "limit": 50}'

# Real-world examples
curl -X POST "https://reddapi.dev/api/v1/search/semantic" \
  -H "Authorization: Bearer $REDDAPI_API_KEY" \
  -d '{"query": "PRODUCT use cases examples", "limit": 50}'
```

## Analyzing Results

### Synthesize Findings

1. Collect 50+ relevant posts
2. Categorize by theme
3. Count frequency of mentions
4. Identify recurring patterns
5. Document actionable insights

### Output Format

```markdown
## Key Findings

### Pain Points (Top 5)
1. Issue A - X mentions
2. Issue B - Y mentions
3. Issue C - Z mentions

### User Sentiment
- Positive: XX%
- Negative: YY%
- Neutral: ZZ%
```

## Best Practices

1. **Be specific**: "ios app battery problems" > "app issues"
2. **Check multiple subreddits**: Different communities = different perspectives
3. **Look for recent posts**: Sentiment changes over time
4. **Cross-verify**: Don't rely on single sources
5. **Always cite sources**: Reference the posts you analyze

## Limitations

- Reddit reflects opinions, not scientific data
- Vocal minorities may dominate discussions
- Temporal bias exists
- Moderation varies by subreddit

## Environment Variables

```bash
export REDDAPI_API_KEY="your_api_key_here"
```

## See Also

- Niche Hunter skill - Automated opportunity discovery
- Market Research skill - Comprehensive analysis workflows
