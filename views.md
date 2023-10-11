  A Postgres view is a virtual table in Postgres. It represents the result of a query to one or more underlying tables in Postgres. 
  Views are used to simplify complex queries since these queries are defined once in the view, and can then be directly queried via the same.

    syntax : create or replace( modidy the view  ) view viewname as bolck of queries 
    even we can use those query and used to display the result like we want 
    example 
    select * from viewname where condition ; to display the result like we want 
    ther eare two types of views 
    simple view ( it does not allow to store the result physically )
    and materialized views
    that allow you to store the result of a query physically and update the data periodically.
CREATE MATERIALIZED VIEW view_name
AS
query
WITH [NO] DATA;
    
