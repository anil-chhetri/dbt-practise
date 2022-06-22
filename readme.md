## DBT (Data Build Tool)

### **Introduction of dbt:**
dbt(data build tool) is the command line tool that enables analytics engineer to transform data in their warehouse by simply writing select statements. dbt handles turning these select statements into tables and views.

**dbt is the T in ETL.** It doesn't extract or load data, but it's extremely good at transforming data that's already loaded into your warehouse. **"This transform after load" architecture is becoming know as ELT(Extract Load Transform)**. *dbt's only function is to take code, compile it to sql, and then run against your database.* simple process of using dbt tool would be, a user writes dbt code in their text editor, and then invoke dbt from the command line, dbt compiles all the code into raw SQL and executes that code against the configured data warehouse.


dbt code will generally be a model written as single SQL statement. Each dbt model are then materlized as view or table depending on the configuration provided.
Materlialization is the strategy by which a data model is built in the warehouse. Models can be materlized as table, view, Incremental, Ephemeral.  for more infomation on materializations:  [=>Materializations](https://docs.getdbt.com/docs/building-a-dbt-project/building-models/materializations#materializations)


Apart from SQL, dbt will also support jinja, a common templating language used in teh python ecosystem. jija templates are the code that are written between two curly braces `{{ code }}`


#### using  pip to install dbt.

- make sure you have python installed on your system.
- know about which adapter you are using dbt with. for now it's going to postgres
- ``` pip install dbt-postgres``` run this command to install dbt for postgres databse.
- running this comamnd will install `dbt-core` and `dbt-postgres` only.
- ``` dbt --version ``` use this command to verify if dbt is installed properly or not.


## important files used in dbt projects.

### profiles.yml
This file contains the database connection that dbt will use to connect to the data warehouse. Since this file can have sensitive information such as project name and database credentials, it is not in your dbt project. By default, the file is created in the home folder location (` ~/.dbt/`). This file is created when you run `dbt init` command. if we have multiple project of dbt locally, different project names will allow to set up various profiles.

Beside configuring the database connection, we can also configure a target. Target is how we can have different configuration for different environments (dev, test, prod). for eg: when developing locally,  tema would want separate datasets/database to work on. But when deploying to production, it is best to have all tables in a single dataset/database. The default target is dev.

### dbt_project.yml
### models
### macros
### package.yml
### snapshot
### tests



