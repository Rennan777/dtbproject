with shippers as(
        select * from {{source('sources','shippers')}}
),
    mails as (
        select * from {{ref('shippers_email')}}
),
    shippers_new as (
        select sh.*,
               ml.shipper_email as email
        from shippers sh 
        left join mails ml
            on sh.shipper_id = ml.shipper_id
    )

select * from shippers_new
