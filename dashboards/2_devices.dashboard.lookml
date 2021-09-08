- dashboard: 2_device_summary
  title: "(2) Device Summary"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"\n\theight: 54px; \n\tbackground-color: #fff; \n\tcolor:\
      \ #5f6368; \n\tborder-radius: 54px; \n\tborder: solid 1px #5f6368; \n\tfont-family:\
      \ Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto Sans\
      \ Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; \n\tpadding: 12px;\">\n\
      <span style=\"\n\twidth: 38px;\n\theight: 38px; \n\tborder-radius: 60px; \n\t\
      background-color: white; \n\tdisplay:table-cell; \n\tvertical-align:middle;\
      \ \n\ttext-align:center; \n\tmargin-right: 12px; \n\tfloat: left;\">\n<img width=\"\
      16px\" src=\"https://storage.googleapis.com/brechtv/Looker_Favicon_32x32%403x.png\"\
      />\n</span>\n\n<span style=\"\n\tpadding: 4px; \n\tfloat:left;\">\n\t<h1 style=\"\
      margin-top:0;\n\t\tcolor: #6E6E6E; \n\tline-height: 1.2rem;\">\n\t\tDevice Summary\n\
      \t</h1>\n</span>\n<span style=\"padding: 4px; float:right;\">\n\t<a style=\"\
      background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"https://demoexpo.looker.com/folders/986\"\
      >Home</a>\n\t<a style=\"background-color: #fff; color: #5f6368; padding: 5px\
      \ 10px;\" href=\"https://demoexpo.looker.com/explore/pipeline/measurements\"\
      >Explore</a>\n\t<a style=\"background-color: #fff; color: #5f6368; padding:\
      \ 5px 10px;\" href=\"https://demoexpo.looker.com/dashboards-next/1230\">Go Back\
      \ to Facilities Overview</a>\n</span>\n\n<div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Average Density by Hour
    name: Average Density by Hour
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurements.timestamp_hour, measurements.density_mean]
    filters:
      measurements.density_mean: NOT NULL
    sorts: [measurements.timestamp_hour desc]
    limit: 500
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.total_density,
            id: measurements.total_density, name: Total Density}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Density Unit Conversion: measurements.density_unit_conversion
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 18
    col: 4
    width: 20
    height: 6
  - title: Average Flow Rate by Hour
    name: Average Flow Rate by Hour
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurements.timestamp_hour, measurements.flow_rate_mean]
    filters:
      measurements.flow_rate_mean: NOT NULL
    sorts: [measurements.timestamp_hour desc]
    limit: 500
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.total_density,
            id: measurements.total_density, name: Total Density}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    series_colors:
      measurements.total_flow_rate: "#F9AB00"
      measurements.flow_rate_mean: "#d4c31e"
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 36
    col: 4
    width: 20
    height: 6
  - title: Max Volume by Hour
    name: Max Volume by Hour
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurements.timestamp_hour, measurements.volume_max]
    filters:
      measurements.volume_mean: NOT NULL
    sorts: [measurements.timestamp_hour desc]
    limit: 500
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: step
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.total_density,
            id: measurements.total_density, name: Total Density}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    series_colors:
      measurements.total_volume: "#333eb5"
      measurements.volume_mean: "#333eb5"
      measurements.volume_max: "#333eb5"
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 27
    col: 4
    width: 20
    height: 6
  - title: Density Max
    name: Density Max
    model: pipeline
    explore: measurements
    type: single_value
    fields: [measurements.density_max, sensors.sensor_id_clean]
    sorts: [measurements.density_max desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    single_value_title: Max Density Per Minute
    series_types: {}
    defaults_version: 1
    listen:
      Density Unit Conversion: measurements.density_unit_conversion
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 20
    col: 0
    width: 4
    height: 2
  - title: Density Min
    name: Density Min
    model: pipeline
    explore: measurements
    type: single_value
    fields: [measurements.density_min, sensors.sensor_id_clean]
    sorts: [measurements.density_min desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    single_value_title: Min Density Per Minute
    series_types: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Density Unit Conversion: measurements.density_unit_conversion
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 22
    col: 0
    width: 4
    height: 2
  - title: Density Mean
    name: Density Mean
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, measurements.density_mean]
    sorts: [measurements.density_mean desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    single_value_title: Mean Density Per Minute
    series_types: {}
    defaults_version: 1
    listen:
      Density Unit Conversion: measurements.density_unit_conversion
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 18
    col: 0
    width: 4
    height: 2
  - title: Max Density (Copy 4)
    name: Max Density (Copy 4)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.device_and_facility]
    sorts: [sensors.device_and_facility]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#030303"
    single_value_title: Selected Device
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Recommended Action: To view Device Manual Click Here'
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 2
    col: 0
    width: 8
    height: 3
  - title: Max Density (Copy 5)
    name: Max Density (Copy 5)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, measurements.volume_max]
    sorts: [measurements.volume_max desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#333eb5"
    single_value_title: Max Volume
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 27
    col: 0
    width: 4
    height: 3
  - title: Max Density (Copy 6)
    name: Max Density (Copy 6)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, measurements.volume_min]
    sorts: [measurements.volume_min desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#333eb5"
    single_value_title: Min Volume
    series_types: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 30
    col: 0
    width: 4
    height: 3
  - title: Max Density (Copy 9)
    name: Max Density (Copy 9)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, measurements.flow_rate_max]
    sorts: [measurements.flow_rate_max desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#d4c31e"
    single_value_title: Max Flow Rate Per Minute
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 38
    col: 0
    width: 4
    height: 2
  - title: Max Density (Copy 10)
    name: Max Density (Copy 10)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, measurements.flow_rate_min]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#d4c31e"
    single_value_title: Min Flow Rate Per Minute
    series_types: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 40
    col: 0
    width: 4
    height: 2
  - title: Max Density (Copy 11)
    name: Max Density (Copy 11)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, measurements.flow_rate_mean]
    sorts: [measurements.flow_rate_mean desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#d4c31e"
    single_value_title: Mean Flow Rate Per Minute
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 36
    col: 0
    width: 4
    height: 2
  - title: Device Image
    name: Device Image
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, sensors.sensor_image]
    sorts: [sensors.sensor_id_clean]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: center
    header_font_size: '18'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      sensors.sensor_image: Device Image
    series_text_format:
      sensors.sensor_image:
        bold: true
        align: center
    header_font_color: "#030303"
    single_value_title: Device Image
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [sensors.sensor_id_clean]
    title_hidden: true
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 2
    col: 8
    width: 9
    height: 13
  - title: Device Image (Copy)
    name: Device Image (Copy)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, sensors.sensor_make]
    sorts: [sensors.sensor_id_clean]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Device Make
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: [sensors.sensor_id_clean]
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 5
    col: 0
    width: 8
    height: 2
  - title: Device Image (Copy 2)
    name: Device Image (Copy 2)
    model: pipeline
    explore: measurements
    type: single_value
    fields: [sensors.sensor_id_clean, sensors.sensor_model]
    sorts: [sensors.sensor_id_clean]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Device Model
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: [sensors.sensor_id_clean]
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 7
    col: 0
    width: 8
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    body_text: |2

      <h1 style="margin-top:20px; padding: 5px; border-bottom: solid 1px black; height: 60px; color: black; text-align: center;">Volume Measurements</h1>
    row: 24
    col: 0
    width: 24
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    body_text: |2

      <h1 style="margin-top:20px; padding: 5px; border-bottom: solid 1px black; height: 60px; color: black; text-align: center;">Flow Rate Measurements</h1>
    row: 33
    col: 0
    width: 24
    height: 3
  - name: " (4)"
    type: text
    title_text: ''
    body_text: |2

      <h1 style="margin-top:20px; padding: 5px; border-bottom: solid 1px black; height: 60px; color: black; text-align: center;">Density Measurements</h1>
    row: 15
    col: 0
    width: 24
    height: 3
  - title: Lab Results
    name: Lab Results
    model: pipeline
    explore: measurements
    type: marketplace_viz_carousel::carousel-marketplace
    fields: [sensors.sensor_sample_lab_results_image]
    sorts: [sensors.sensor_sample_lab_results_image]
    limit: 500
    query_timezone: America/New_York
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 2
    col: 17
    width: 7
    height: 13
  - name: " (5)"
    type: text
    title_text: ''
    body_text: |2

      <h1 style="margin-top:20px; padding: 5px; border-bottom: solid 1px black; height: 60px; color: black; text-align: center;">Lab Sample Reports & Proving Reports</h1>
    row: 42
    col: 0
    width: 24
    height: 3
  - title: Gas Analysis Report
    name: Gas Analysis Report
    model: pipeline
    explore: gas_analysis_reports
    type: looker_grid
    fields: [gas_analysis_reports.laboratory, gas_analysis_reports.date_reported_date,
      gas_analysis_reports.date_sampled_date, gas_analysis_reports.sample_id, gas_analysis_reports.validator_id,
      gas_analysis_reports.equipment_id, gas_analysis_reports.sample_density, gas_analysis_reports.mol_fractions__c5,
      gas_analysis_reports.mol_fractions__co2, gas_analysis_reports.mol_fractions__h2,
      gas_analysis_reports.mol_fractions__n2, gas_analysis_reports.report_url_clean,
      gas_analysis_reports.comments]
    sorts: [gas_analysis_reports.report_url_clean]
    limit: 500
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    header_font_color: "#030303"
    header_background_color: "#F9AB00"
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: 'Recommended Action: Click Report URL to View PDF Report'
    listen: {}
    row: 52
    col: 0
    width: 24
    height: 9
  - title: Device Inspection Status - Days Remaining
    name: Device Inspection Status - Days Remaining
    model: pipeline
    explore: measurements
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [sensors.sensor_id_clean, sensors.days_since_last_inspection]
    filters:
      paths.facility_name: ''
    sorts: [sensors.days_since_last_inspection desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: days_remaining, _type_hint: number,
        category: table_calculation, expression: '30-${sensors.days_since_last_inspection}',
        label: Days Remaining, value_format: !!null '', value_format_name: !!null ''}]
    hidden_fields: [sensors.days_since_last_inspection]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 7
    arm_weight: 32
    spinner_length: 129
    spinner_weight: 12
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: 0
    range_max:
    value_label_type: dboth
    value_label_font: 9
    value_label_padding: 45
    target_source: 'off'
    target_label_type: nolabel
    target_label_font: 3
    label_font_size: 3
    spinner_type: needle
    fill_color: "#EA4335"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#030303"
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: row
    trellis_rows: 1
    trellis_cols: 1
    angle: 90
    cutout: 50
    range_x: 0.7
    range_y: 1.1
    target_label_padding: 1.06
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    listen:
      Device ID: sensors.sensor_id_clean
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Flow Rate vs Proving Report Frequency
    name: Flow Rate vs Proving Report Frequency
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurements.timestamp_date, proving_reports.proving_report_occurence,
      measurements.flow_rate_mean]
    fill_fields: [measurements.timestamp_date]
    filters:
      measurements.timestamp_date: 2021/07/25 to 2021/08/07
    sorts: [measurements.timestamp_date]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: proving_reports.proving_report_occurence,
            id: proving_reports.proving_report_occurence, name: Proving Report Occurence}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: measurements.flow_rate_mean, id: measurements.flow_rate_mean,
            name: Flow Rate Mean}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    size_by_field: proving_reports.proving_report_occurence
    series_types:
      proving_reports.proving_report_occurence: scatter
    discontinuous_nulls: true
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 45
    col: 0
    width: 24
    height: 7
  filters:
  - name: Timestamp Date
    title: Timestamp Date
    type: field_filter
    default_value: 2021/08/01 to 2021/08/07
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: []
    field: measurements.timestamp_date
  - name: Device ID
    title: Device ID
    type: field_filter
    default_value: M-7752
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: []
    field: sensors.sensor_id_clean
  - name: Facility Name
    title: Facility Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: [Device ID]
    field: paths.facility_name
  - name: Density Unit Conversion
    title: Density Unit Conversion
    type: field_filter
    default_value: kg
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: []
    field: measurements.density_unit_conversion
