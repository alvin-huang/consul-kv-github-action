#!/bin/sh

# point to Consul
export CONSUL_HTTP_ADDR="${INPUT_URL}"

# gets Consul KV value
value=$(consul kv get "${INPUT_KEY}")

# sets environment variable in GitHub Action
echo "::set-env name=${INPUT_KEY}::${value}"
