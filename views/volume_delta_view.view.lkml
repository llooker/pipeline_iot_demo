view: volume_delta_view {
  sql_table_name: `looker-private-demo.pipeline.volume_delta_view`
    ;;

  dimension: accum {
    type: number
    hidden: yes
    sql: ${TABLE}.accum ;;
  }

  dimension: direction {
    type: number
    sql: ${TABLE}.direction ;;
  }

  dimension: sensor_id {
    type: string
    sql: ${TABLE}.sensorId ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_accum {
    type: sum
    sql: ${accum} ;;
  }
}