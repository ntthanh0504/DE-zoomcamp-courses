with 

source as (

    select * from {{ source('staging', 'yellow_tripdata') }}

),

renamed as (

    select
        vendor_id,
        tpep_pickup_datetime,
        tpep_dropoff_datetime,
        passenger_count,
        trip_distance,
        ratecode_id,
        store_and_fwd_flag,
        pu_location_id,
        do_location_id,
        payment_type,
        fare_amount,
        extra,
        mta_tax,
        tip_amount,
        tolls_amount,
        improvement_surcharge,
        total_amount,
        congestion_surcharge,
        tpep_pickup_date,
        tpep_dropoff_date,
        __index_level_0__

    from source

)

select * from renamed
