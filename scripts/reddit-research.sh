#!/bin/bash
# Reddit Research Helper - CLI utility

API_KEY="${REDDAPI_API_KEY:-rdi_gr6vzimz1rg12j6xf5x8tm}"
BASE_URL="https://reddapi.dev/api/v1"

usage() {
    echo "Usage: $0 <command> [options]"
    echo ""
    echo "Commands:"
    echo "  search <query>     Search Reddit discussions"
    echo "  subreddits [limit]   List subreddits"
    echo "  subreddit <name>    Get subreddit info"
    echo "  trends             Get trending topics"
    echo ""
    echo "Examples:"
    echo "  $0 search 'iphone problems' --limit 100"
    echo "  $0 subreddits 20"
    echo "  $0 subreddit programming"
}

search() {
    local query=""
    local limit=50
    while [[ $# -gt 0 ]]; do
        case $1 in
            --limit) limit=$2; shift ;;
            *) query="$1" ;;
        esac
        shift
    done
    
    if [[ -z "$query" ]]; then
        echo "Error: Query required"
        usage
        exit 1
    fi
    
    curl -s -X POST "$BASE_URL/search/semantic" \
        -H "Authorization: Bearer $API_KEY" \
        -H "Content-Type: application/json" \
        -d "{\"query\": \"$query\", \"limit\": $limit}"
}

subreddits() {
    local limit=${1:-10}
    curl -s "$BASE_URL/subreddits?limit=$limit" \
        -H "Authorization: Bearer $API_KEY"
}

subreddit() {
    local name=$1
    if [[ -z "$name" ]]; then
        echo "Error: Subreddit name required"
        exit 1
    fi
    curl -s "$BASE_URL/subreddits/$name" \
        -H "Authorization: Bearer $API_KEY"
}

trends() {
    curl -s "$BASE_URL/trends" \
        -H "Authorization: Bearer $API_KEY"
}

case "$1" in
    search) shift; search "$@" ;;
    subreddits) shift; subreddits "$@" ;;
    subreddit) shift; subreddit "$@" ;;
    trends) trends ;;
    *) usage ;;
esac
