view: measurements {
  sql_table_name: `looker-private-demo.pipeline.measurements`
    ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.timestamp, ${TABLE}.sensorId ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
    full_suggestions: yes
  }

  dimension: sensor_id {
    label: "Device ID"
    hidden: yes
    type: string
    sql: ${TABLE}.sensorId ;;
    full_suggestions: yes
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      year,
      hour,
      hour_of_day,
      time_of_day,
      second,
      minute
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: value {
    type: number
    #hidden: yes
    sql: ${TABLE}.value ;;
    value_format_name: decimal_2
  }

  measure: count_of_measurements{
    type: count
    drill_fields: [sensors.sensor_id]
  }

  measure: total_value {
    hidden: yes
    type: sum
    sql: ${value} ;;
    value_format_name: decimal_2
  }

######## Added Filtered Measures for Each Type - Use with Device Parameter Selector

  measure: total_volume {
    group_label: "Volume Measurements"
    type: sum
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%volume' THEN ${value} ELSE 0 END;;
  }

  measure: volume_max {
    group_label: "Volume Measurements"
    type: max
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%volume' THEN ${value} ELSE 0 END;;
    drill_fields: [volume_drill*]
  }

  measure: volume_min {
    group_label: "Volume Measurements"
    type: min
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%volume' THEN ${value} ELSE 0 END;;
  }

  measure: volume_mean {
    group_label: "Volume Measurements"
    type: average
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%volume' THEN ${value} ELSE 0 END;;
  }

  measure: volume_median {
    group_label: "Volume Measurements"
    type: median
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%volume' THEN ${value} ELSE 0 END;;
  }

#######################################
  measure: total_density {
    group_label: "Density Measurements"
    type: sum
    value_format_name: decimal_2
    label_from_parameter: density_unit_conversion
    sql:

    CASE
    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'kg' THEN ${value}

    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'lb' THEN ${value}*0.062

    ELSE 0 END;;
    action: {
      label: "Change Density Value"
      url: "https://us-central1-sandbox-keyera-poc.cloudfunctions.net/edit_measurements"
      # url: "https://webhook.site/63af94f6-20bc-458b-9c75-6e1c9e5bbc89"   ## test link
      param: {
        name: "User"
        value: "{{ _user_attributes['first_name'] }}"
      }
      form_param: {
        name: "Start_Time"
        label: "Start Time"
        description: "Please enter the starting time."
        type: string
        default: "{{ measurements.timestamp_raw._value }}"
      }
      form_param: {
        name: "End_Time"
        label: "End Time"
        description: "Please enter the ending time."
        type: string
        default: "{{ measurements.timestamp_raw._value }}"
      }
      form_param: {
        name: "Value"
        label: "New Density Value"
        description: "Please enter the new scheduled value for this timeframe."
        type: string
        default: "{{ value }}"
      }
      form_param: {
        name: "Reason"
        label: "Reason for Change"
        description: "Please enter the reason for making this change."
        type: string
        default: "Error with sensor."
      }
    }
  }

  measure: density_max {
    group_label: "Density Measurements"
    type: max
    value_format_name: decimal_2
    label_from_parameter: density_unit_conversion
    sql:

    CASE
    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'kg' THEN ${value}

    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'lb' THEN ${value}*0.062

    ELSE 0 END;;
  }

  measure: density_min {
    group_label: "Density Measurements"
    type: min
    value_format_name: decimal_2
    label_from_parameter: density_unit_conversion
    sql:

    CASE
    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'kg' THEN ${value}

    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'lb' THEN ${value}*0.062

    ELSE 0 END;;
  }

  measure: density_mean {
    group_label: "Density Measurements"
    type: average
    value_format_name: decimal_2
    label_from_parameter: density_unit_conversion
    sql:

    CASE
    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'kg' THEN ${value}

    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'lb' THEN ${value}*0.062

    ELSE 0 END;;
    drill_fields: [density_drill*]
  }

  measure: density_median {
    group_label: "Density Measurements"
    type: median
    value_format_name: decimal_2
    label_from_parameter: density_unit_conversion
    sql:

    CASE
    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'kg' THEN ${value}

    WHEN ${sensor_id} LIKE '%density%' AND
    {% parameter density_unit_conversion %} = 'lb' THEN ${value}*0.062

    ELSE 0 END;;
  }

  ## Parameter
  parameter: density_unit_conversion {
    description: "Use with Density Measurement"
    type: string

    allowed_value: {
      label: "kg per cubic meter"
      value: "kg"
    }

    allowed_value: {
      label: "lb per cubic foot"
      value: "lb"
    }
  }


#######################################
  measure: total_flow_rate {
    group_label: "Flow Rate Measurements"
    type: sum
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%flowrate%' THEN ${value} ELSE 0 END;;
  }

  measure: flow_rate_max {
    group_label: "Flow Rate Measurements"
    type: max
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%flowrate%' THEN ${value} ELSE 0 END;;
  }

  measure: flow_rate_min {
    group_label: "Flow Rate Measurements"
    type: min
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%flowrate%' THEN ${value} ELSE 0 END;;
  }

  measure: flow_rate_mean {
    group_label: "Flow Rate Measurements"
    type: average
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%flowrate%' THEN ${value} ELSE 0 END;;
    drill_fields: [flowrate_drill*]
  }

  measure: flow_rate_median {
    group_label: "Flow Rate Measurements"
    type: median
    value_format_name: decimal_2
    sql: CASE WHEN ${sensor_id} LIKE '%flowrate%' THEN ${value} ELSE 0 END;;
  }

  set: density_drill {
    fields: [timestamp_minute, sensors.sensor_id_clean, sensors.equipment_id, paths.start_node, paths.end_node, density_mean]
  }

  set: volume_drill {
    fields: [timestamp_minute, sensors.sensor_id_clean, sensors.equipment_id, paths.start_node, paths.end_node,total_volume]
  }

  set: flowrate_drill {
    fields: [timestamp_minute, sensors.sensor_id_clean, sensors.equipment_id, paths.start_node, paths.end_node, flow_rate_mean]
  }

}
