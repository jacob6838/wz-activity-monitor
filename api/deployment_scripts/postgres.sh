# First, create a storage account
az storage account create \
    --name wzampostgres \
    --resource-group WZAM \
    --location <your-region> \
    --sku Standard_LRS

# Get the storage account key
STORAGE_KEY=$(az storage account keys list \
    --resource-group WZAM \
    --account-name wzampostgres \
    --query "[0].value" -o tsv)

# Create the file shares
az storage share create \
    --name pgdb \
    --account-name wzampostgres \
    --account-key $STORAGE_KEY

az storage share create \
    --name sql-scripts \
    --account-name wzampostgres \
    --account-key $STORAGE_KEY

# Upload SQL scripts to the sql-scripts share
az storage file upload \
    --account-name wzampostgres \
    --account-key $STORAGE_KEY \
    --share-name sql-scripts \
    --source "./resources/sql_scripts/CreateTables.sql"

# If you have multiple SQL scripts, you can upload them all using:
for file in ./resources/sql_scripts/*.sql; do
    az storage file upload \
        --account-name wzampostgres \
        --account-key $STORAGE_KEY \
        --share-name sql-scripts \
        --source "$file"
done


az container create \
  --resource-group WZAM \
  --name wzam-postgres \
  --image postgis/postgis:15-master \
  --ports 5432 \
  --environment-variables \
    POSTGRES_USER=${DB_USER} \
    POSTGRES_PASSWORD=${DB_PASS} \
  --azure-file-volume-account-name wzampostgres \
  --azure-file-volume-account-key $STORAGE_KEY \
  --azure-file-volume-share-name pgdb \
  --azure-file-volume-mount-path /var/lib/postgresql/data \
  --azure-file-volume-share-name sql-scripts \
  --azure-file-volume-mount-path /docker-entrypoint-initdb.d \
  --restart-policy Always \
  --dns-name-label wzam-postgres \
  --location centralus