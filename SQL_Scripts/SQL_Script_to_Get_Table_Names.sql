--query used in lookup to get tablename and schema name
--used these tables names received from lookup passed to for each activity to load all tables

SELECT
    table_schema AS SchemaName,
    table_name AS TableName
FROM
    information_schema.tables 
where
    table_schema = 'saleslt';