# The name of this view in Looker is "Measurements Pivot View"
view: measurements_pivot_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.pipeline.measurements_pivot_view`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Density" in Explore.

  dimension: density {
    type: number
    sql: ${TABLE}.density ;;
  }

  dimension: density_c4 {
    type: number
    sql: ${TABLE}.density_C4 ;;
  }

  dimension: end_node {
    type: string
    sql: ${TABLE}.end_node ;;
  }

  dimension: equipment_id {
    type: string
    sql: ${TABLE}.equipmentId ;;
  }

  dimension: flowrate {
    type: number
    sql: ${TABLE}.flowrate ;;
  }

  dimension: flowrate_c4 {
    type: number
    sql: ${TABLE}.flowrate_C4 ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: start_node {
    type: string
    sql: ${TABLE}.start_node ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }

  dimension: volume_c4 {
    type: number
    sql: ${TABLE}.volume_C4 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_density {
    type: sum
    hidden: yes
    sql: ${density} ;;
  }

  measure: average_density {
    type: average
    hidden: yes
    sql: ${density} ;;
  }

  measure: total_density_c4 {
    type: sum
    hidden: yes
    sql: ${density_c4} ;;
  }

  measure: average_density_c4 {
    type: average
    hidden: yes
    sql: ${density_c4} ;;
  }

  measure: total_flowrate {
    type: sum
    hidden: yes
    sql: ${flowrate} ;;
  }

  measure: average_flowrate {
    type: average
    hidden: yes
    sql: ${flowrate} ;;
  }

  measure: total_flowrate_c4 {
    type: sum
    hidden: yes
    sql: ${flowrate_c4} ;;
  }

  measure: average_flowrate_c4 {
    type: average
    hidden: yes
    sql: ${flowrate_c4} ;;
  }

  measure: total_lat {
    type: sum
    hidden: yes
    sql: ${lat} ;;
  }

  measure: average_lat {
    type: average
    hidden: yes
    sql: ${lat} ;;
  }

  measure: total_long {
    type: sum
    hidden: yes
    sql: ${long} ;;
  }

  measure: average_long {
    type: average
    hidden: yes
    sql: ${long} ;;
  }

  measure: total_volume {
    type: sum
    hidden: yes
    sql: ${volume} ;;
  }

  measure: average_volume {
    type: average
    hidden: yes
    sql: ${volume} ;;
  }

  measure: total_volume_c4 {
    type: sum
    hidden: yes
    sql: ${volume_c4} ;;
  }

  measure: average_volume_c4 {
    type: average
    hidden: yes
    sql: ${volume_c4} ;;
  }
}
