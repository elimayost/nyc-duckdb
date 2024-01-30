
set s3_endpoint='${s3_endpoint}';
set s3_access_key_id='${s3_access_key_id}';
set s3_secret_access_key='${s3_secret_access_key}';

.shell echo "$(date +'%d/%m/%Y %H:%M:%S')|INFO|Getting data for ${month}/${year}"

copy
  'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_${year}-${month}.parquet'
to 
  's3://nyc-data/raw/yellow_tripdata_${year}-${month}.parquet'
(compression 'zstd');
