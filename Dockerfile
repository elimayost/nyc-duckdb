
# Base linux system
FROM debian

# Update packages and install the two we need for now
RUN apt-get -y update && apt-get -y install wget unzip

# Get the latest version of DuckDB
RUN wget https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip \
  && unzip duckdb_cli-linux-amd64.zip \
  && rm -f duckdb_cli-linux-amd64.zip \
  && mv duckdb /usr/local/bin/

# Make sure our shell is Bash
SHELL ["/bin/bash", "-ec"]

