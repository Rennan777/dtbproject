
        select count(1) as count,
            company_name,
            contact_name
        from {{ref('customers')}}
        group by company_name, contact_name
        having count(1) > 1
