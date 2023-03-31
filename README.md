## dbt Fundamentals

My solutions to exercises from courses hosted at [courses.getdbt.com](https://courses.getdbt.com/courses/).

-   [dbt Fundamentals](https://courses.getdbt.com/courses/fundamentals)
-   [Analyses and Seeds](https://courses.getdbt.com/courses/analyses-seeds)
-   [Jinja, Macros, Packages](https://courses.getdbt.com/courses/jinja-macros-packages)

### Repo structure

A dbt project comprising:

-   A `requirements.txt` to reconstruct a Python venv in which to run dbt
-   Project config in `dbt_project.yml`
-   Sources (two of dbt Labs' own BigQuery datasets), a staging layer, and a mart output. These are defined under `models/`
-   Documentation, and tests specified in YAML configs, also under `models/`
-   Some singular tests in SQL scripts within `tests/`
-   A flat file lookup table loaded in as a seed, in `seeds/`

### How to run

This repo is designed to be run in the dbt CLI, using BigQuery (under a personal GCP project) as the data store and the `dbt-bigquery` connector.

#### The first time you run the project

1. Put a profile called `personal-bigquery` into your `~/.dbt/profiles.yml` (how to do this is documented on the dbt website)
2. Make a venv `python -m venv .venv`
3. Activate it `source .venv/bin/activate`
4. Install packages into it `pip install -r requirements.txt`

#### After that, every time you need to run the project

1. If not done already, activate the venv `source .venv/bin/activate`
2. If you've updated anything in `seeds/`, then `dbt seed`
3. `dbt build`
4. If you've updated anything in `analyses`, then `dbt compile`

### 'Jaffle'?

It's another name — used in Australia :australia: — for a toastie / toasted sandwich :sandwich:.
