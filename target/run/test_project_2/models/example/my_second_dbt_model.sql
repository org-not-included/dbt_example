

  create or replace view `ultimate-bit-359101`.`prod_None`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `ultimate-bit-359101`.`prod_None`.`my_first_dbt_model`
where id = 1;

