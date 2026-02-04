---
name: reddit-research
description: Use this skill whenever you need to research topics, opinions, or trends on Reddit. This includes finding user pain points, market opportunities, product feedback, competitive analysis, sentiment analysis, and discovering niche communities. The skill provides techniques for effective Reddit searches, evaluating source credibility, synthesizing insights from multiple discussions, and presenting actionable findings.
license: MIT
---

# Reddit Research Skill

## Overview

This skill provides techniques and best practices for conducting effective research on Reddit using AI-powered semantic search tools.

## When to Use This Skill

Use this skill when:
- Researching user opinions on products or services
- Finding pain points and complaints about competitors
- Discovering niche market opportunities
- Analyzing sentiment around topics
- Exploring community discussions
- Validating product ideas with real user feedback

## Quick Start

### Basic Reddit Search

```python
# Using Reddit Search API (reddapi.dev)
from reddit_search import search

# Find user complaints about a product
results = search("iphone problems complaints", limit=50)
```

### Finding Pain Points

```python
# Search for frustrations and problems
search("software tool frustrations", mode="pain_points")
search("product disappointments", mode="pain_points")
```

### Competitive Analysis

```python
# Compare user sentiment between competitors
search("product_a vs product_b", mode="comparison")
```

## Techniques

### 1. Effective Query Formulation

**Finding Problems:**
- "[product] problems issues"
- "[product] complaints frustrations"
- "[product] doesn't work broken"

**Finding Preferences:**
- "[product] better than alternatives"
- "[tool] alternatives recommendations"

**Finding Use Cases:**
- "[tool] use cases examples"
- "[product] how do you use"

### 2. Evaluating Source Credibility

Check for:
- Post karma and account age
- Comment depth and engagement
- Cross-post verification
- Community size and activity

### 3. Synthesizing Insights

1. Collect 20+ relevant posts
2. Categorize by theme
3. Quantify frequency of mentions
4. Identify recurring patterns
5. Document actionable insights

## Output Formats

### Summary Report
```
## Key Findings

### Pain Points (Top 3)
1. Issue A - X mentions
2. Issue B - Y mentions  
3. Issue C - Z mentions

### User Sentiment
- Positive: XX%
- Negative: YY%
- Neutral: ZZ%
```

### Action Items
```
## Recommended Actions
1. [Actionable insight based on research]
2. [Next steps]
```

## Best Practices

1. **Use specific queries** - "ios app problems" > "app issues"
2. **Check multiple subreddits** - Different communities have different perspectives
3. **Look for recent posts** - Reddit sentiment changes over time
4. **Verify with cross-references** - Don't rely on a single source
5. **Document sources** - Always cite the posts you reference

## Limitations

- Reddit discussions reflect user opinions, not scientific data
- Vocal minorities may dominate discussions
- Temporal bias - recent events get more attention
- Moderation varies by subreddit

## Tools

- **Reddit Search API** (reddapi.dev) - AI-powered semantic search
- **Reddit Insights MCP** - For programmatic access
- **Manual Search** - reddit.com/r/subreddit/search

## See Also

- Niche Hunter skill - For automated opportunity discovery
- Market Research skill - For comprehensive analysis workflows
