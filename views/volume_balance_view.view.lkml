view: volume_balance_view {
  sql_table_name: `looker-private-demo.pipeline.volume_balance_view`
    ;;

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
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

  measure: total_balance {
    type: sum
    hidden: yes
    sql: ${balance} ;;
  }

  measure: average_balance {
    type: average
    hidden: yes
    sql: ${balance} ;;
  }
}
