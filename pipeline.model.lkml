connection: "looker-private-demo"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
include: "/**/*.dashboard"   # include a LookML dashboard called my_dashboard

explore: measurements {
  label: "Pipeline Measurements"

  #persist_for: "0 seconds"
  join: sensors {
    view_label: "Devices"
    relationship: many_to_one
    sql_on: ${measurements.sensor_id} = ${sensors.sensor_id} ;;
  }

  join: proving_reports {
    view_label: "Proving Reports"
    relationship: one_to_one
    sql_on: ${measurements.sensor_id} = ${proving_reports.sensor_id} AND
      ${measurements.timestamp_minute} = ${proving_reports.timestamp_minute};;
  }

  join: paths {
    view_label: "Facilities"
    relationship: many_to_one
    sql_on: ${sensors.equipment_id} = ${paths.equipment_id} ;;
  }

  # join: gas_analysis_reports {
  #   view_label: "Gas Analysis Reports"
  #   relationship: one_to_many
  #   sql_on: ${paths.equipment_id} = ${gas_analysis_reports.equipment_id};;
  # }

  join: measurement_error_view {
    view_label: "Calculations"
    relationship: many_to_one
    sql_on: ${measurements.timestamp_raw} = ${measurement_error_view.timestamp_raw} ;;
  }

  # join: volume_delta_view {
  #   relationship: one_to_many
  #   sql_on: ${volume_delta_view.sensor_id} = ${sensors.sensor_id} ;;
  # }
}

explore: gas_analysis_reports {
  from: gas_analysis_reports
  label: "Gas Analysis Reports"
}

explore: data_revisions {
  hidden: yes
  persist_for: "0 seconds"
}

explore: volume_delta_view {
  persist_for: "0 seconds"
  hidden: yes
}
