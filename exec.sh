#!/bin/sh
#url do database
export PGHOST=localhost
export DATABASE_URL="postgres://postgres:pedro1902@localhost:5432"

#para rodar o projeto no activator
rails server $@