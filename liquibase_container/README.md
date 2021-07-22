# Liquibase Container

Start docker compose environment. This should setup the database locally and run the available migrations.

```bash
# Launch docker compose app.
make startup
```


### View Migrations Service Meta Data

You can view the liquibase metadata in the `public` schema.

```sql
SELECT* FROM databasechangelog;
```