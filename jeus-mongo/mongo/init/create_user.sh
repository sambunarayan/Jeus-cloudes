#!/bin/sh

query=$(cat <<EOS
use appdb\n
db.createUser({user: "sampleuser", pwd: "sampleuser", roles: [{role:"readWrite",db: "appdb"}]})\n
EOS
)

echo -e "\n" $query | mongo -u $MONGO_INITDB_ROOT_USERNAME -p$MONGO_INITDB_ROOT_PASSWORD