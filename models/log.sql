select distinct 
    event_name tipo,
    event_timestamp data_hora,
    event_schema schema,
    event_model modelo,
    event_user usuario,
    event_target target
from {{target.schema}}_meta.dbt_audit_log