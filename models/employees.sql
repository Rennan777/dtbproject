with calc_employees as (
        select
            date_part('year', now()) - date_part('year', birth_date) as age,
            date_part('year', now()) - date_part('year', hire_date) as lenghtofservice,
            first_name || ' ' || last_name as name,
            *
        from {{source('sources', 'employees')}}
    )

select * from calc_employees