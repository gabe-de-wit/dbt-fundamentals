## dbt Fundamentals

My solution to exercises in the course hosted at https://courses.getdbt.com/courses/fundamentals.

A dbt project comprising:

* Project config in `dbt_project.yml`.
* Sources (two of dbt Labs' own BigQuery datasets), a staging layer, and a mart output. These are defined under `models/`.
* Documentation, and tests specified in YAML configs, also under `models/`.
* Some singular tests in SQL scripts within `tests/`.

This repo is managed by dbt Cloud, using BigQuery (under a personal GCP project) as the data store.

The subject matter is data from a shop that sells jaffles, which explains e.g. the naming of the `models/staging/jaffle_shop/` folder. 'Jaffle' is another name — used in Australia :australia: — for a toastie / toasted sandwich :sandwich:.
