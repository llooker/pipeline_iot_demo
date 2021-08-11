view: paths {
  sql_table_name: `looker-private-demo.pipeline.paths`
    ;;

  dimension: end_node {
    type: string
    sql: ${TABLE}.end_node ;;
    full_suggestions: yes
  }

  dimension: equipment_id {
    primary_key: yes
    label: "Equipment ID"
    type: string
    sql: ${TABLE}.equipmentId ;;
    full_suggestions: yes
  }

  dimension: start_node {
    type: string
    sql: ${TABLE}.start_node ;;
    full_suggestions: yes
  }

  dimension: facility_name {
    type: string
    sql: (CASE WHEN ${TABLE}.start_node='SGR' THEN 'Facility A'
      WHEN ${TABLE}.start_node='KET' THEN 'Facility B' ELSE NULL END) ;;
    full_suggestions: yes
    drill_fields: [equipment_id, equipment_location, start_node, end_node]
  }

  #Oshawa 43.8971° N, 78.8658° W
  #Toronto 43.6532° N, 79.3832° W
  dimension: facility_lat {
    type: string
    sql: (CASE WHEN ${TABLE}.start_node='SGR' THEN '43.8971'
      WHEN ${TABLE}.start_node='KET' THEN '43.6532' ELSE NULL END) ;;
  }

  dimension: facility_long {
    type: string
    sql: (CASE WHEN ${TABLE}.start_node='SGR' THEN '-78.8658'
      WHEN ${TABLE}.start_node='KET' THEN '-79.3832' ELSE NULL END) ;;
  }

  dimension: equipment_location {
    label: "Facility Location"
    type: location
    sql_latitude: ${facility_lat} ;;
    sql_longitude: ${facility_long} ;;
    # sql_latitude: ${TABLE}.lat ;;
    # sql_longitude: ${TABLE}.long ;;
  }

  measure: count_of_paths {
    type: count
    drill_fields: []
  }
}
