view: measurement_error_view {
  sql_table_name: `looker-private-demo.pipeline.measurement_error_view`
    ;;

  dimension: primary_key_timestamp {
    type: date_raw
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.timestamp ;;
  }

  dimension: balance {
    type: number
    hidden: yes
    sql: ${TABLE}.balance ;;
  }

  dimension: measurement_error {
    type: number
    hidden: yes
    sql: ${TABLE}.measurement_error ;;
  }

  dimension: shrinkage {
    type: number
    hidden: yes
    sql: ${TABLE}.shrinkage ;;
  }

  dimension_group: timestamp {
    type: time
    #hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      year,
      hour_of_day,
      time_of_day,
      second,
      minute
    ]
    sql: ${TABLE}.timestamp ;;
    #sql:CONVERT_TZ(${TABLE}.timestamp,'UTC','America/New_York');;
  }


  measure: count_of_calculations{
    type: count
    drill_fields: []
  }

  measure: total_balance {
    type: sum
    sql: ${balance} ;;
  }

  measure: total_measurement_error {
    type: sum
    sql: ${measurement_error} ;;
  }

  measure: total_shrinkage {
    type: sum
    sql: ${shrinkage} ;;
  }

}