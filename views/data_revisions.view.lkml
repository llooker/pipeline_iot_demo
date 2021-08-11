view: data_revisions {
  sql_table_name: `looker-private-demo.pipeline.data_revisions`
    ;;

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
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

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: value_after {
    type: number
    sql: ${TABLE}.value_after ;;
  }

  dimension: value_before {
    type: number
    sql: ${TABLE}.value_before ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}