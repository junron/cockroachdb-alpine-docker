database="${COCKROACH_DB:-helloworld}";
user="${COCKROACH_USER:-helloworld}";

if [  -z "$COCKROACH_SECURE" ]
then
  cockroach start --certs-dir=certs --background;
  echo "CREATE DATABASE ${database}; \
  CREATE USER ${user}; \
  GRANT ALL ON DATABASE ${database} TO ${user};" | cockroach sql -u root;
else
  cockroach start --insecure --background;
  echo "CREATE DATABASE ${database}; \
  CREATE USER ${user}; \
  GRANT ALL ON DATABASE ${database} TO ${user};"  | cockroach sql --insecure -u root;
fi
