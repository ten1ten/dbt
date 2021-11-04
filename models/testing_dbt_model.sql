-- if don't specify materialized=table, then it's automatically view (which is configured in the dbt_project.yml file)
{{
    config(
        materialized="table"
    )
}}

select SPECIES, count(*) as counting from s3_to_snowflake.PUBLIC.Iris_dataset group by 1