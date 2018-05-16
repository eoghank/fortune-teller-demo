#!/usr/bin/env bash

cf cs cleardb spark fortunes-db
cf cs p-config-server standard config-service -c '{ "git": { "uri": "https://github.com/eoghank/fortune-teller-demo-config-repo" }}' 
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
