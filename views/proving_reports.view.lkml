view: proving_reports {
  sql_table_name: `looker-private-demo.pipeline.proving_reports`
    ;;

  label: "Proving Analysis Reports"

  dimension: unique_id {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${sensor_id} || ${timestamp_raw} ;;
  }

  dimension: cause {
    type: string
    sql: ${TABLE}.cause ;;
  }

  dimension: color_code {
    type: string
    sql: ${TABLE}.color_code ;;
  }

  dimension: density {
    label: "Density Value"
    type: number
    sql: ${TABLE}.density ;;
  }

  measure: density_mean {
    type: average
    #sql: ${density} ;;
    value_format_name: decimal_4
    sql:
    CASE
    WHEN {% parameter measurements.density_unit_conversion %} = 'kg' THEN ${density}
    WHEN {% parameter measurements.density_unit_conversion %} = 'lb' THEN ${density}*0.062
    ELSE 0 END;;
  }

  dimension: flagged {
    type: yesno
    sql: ${TABLE}.flagged ;;
  }

  dimension: meter_factor {
    type: number
    sql: ${TABLE}.meter_factor ;;
    value_format_name: decimal_2
  }

  dimension: sensor_id {
    hidden: yes
    type: string
    sql: ${TABLE}.sensorId ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.temperature ;;
    value_format_name: decimal_2
  }

  measure: temperature_mean {
    type: average
    sql: ${temperature} ;;
    value_format_name: decimal_2
  }

  dimension_group: timestamp {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      minute,
      hour,
      hour_of_day,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: proving_report_yn {
    #hidden: yes
    type: string
    sql: CASE WHEN ${timestamp_raw} IS NOT NULL THEN 1 ELSE NULL END;;
  }

  measure: proving_report_occurence {
    type: sum
    sql: ${proving_report_yn} ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
    value_format_name: decimal_2
  }

  measure: volume_mean {
    type: average
    sql: ${volume} ;;
    value_format_name: decimal_2
  }


  measure: count {
    hidden: yes
    label: "Count of Proving Reports"
    type: count
    drill_fields: []
  }
}
