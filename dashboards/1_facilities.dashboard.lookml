- dashboard: 1_facilities
  title: "(1) Facilities Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  refresh: 1 minute
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
      margin-top:0;\n\t\tcolor: #6E6E6E; \n\tline-height: 1.2rem;\">\n\t\tFacility\
      \ Overview\n\t</h1>\n</span>\n<span style=\"padding: 4px; float:right;\">\n\t\
      <a style=\"background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"\
      https://keyerakaps.cloud.looker.com/boards/2\">Home</a>\n\t<a style=\"background-color:\
      \ #fff; color: #5f6368; padding: 5px 10px;\" href=\"https://keyerakaps.cloud.looker.com/explore/pipeline/measurements\"\
      >Explore</a>\n</span>\n\n<div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Map of Equipment Locations
    name: Map of Equipment Locations
    model: pipeline
    explore: measurements
    type: looker_map
    fields: [paths.facility_name, paths.equipment_location]
    filters:
      measurements.property: ''
      paths.equipment_id: ''
    sorts: [paths.facility_name]
    limit: 500
    query_timezone: America/New_York
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: traffic_day
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle_and_icon
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 53.66498480009958
    map_longitude: -113.20999145507814
    map_zoom: 9
    map_marker_radius_fixed: 50
    map_marker_color: ["#333eb5"]
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Number of Devices
    name: Number of Devices
    model: pipeline
    explore: measurements
    type: single_value
    fields: [count_of_device_id]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: count_of_device_id, based_on: sensors.sensor_id_clean,
        expression: '', label: Count of Device ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    single_value_title: Count of Devices
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#333eb5",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Number of Facilities
    name: Number of Facilities
    model: pipeline
    explore: measurements
    type: single_value
    fields: [count_of_facility_name]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: count_of_device_id, based_on: sensors.sensor_id_clean,
        expression: '', label: Count of Device ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: list_of_facility_name, based_on: paths.facility_name,
        expression: '', label: List of Facility Name, type: list, _kind_hint: measure,
        _type_hint: list}, {measure: count_of_facility_name, based_on: paths.facility_name,
        expression: '', label: Count of Facility Name, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_facility_name_2, based_on: paths.facility_name,
        expression: '', label: Count of Facility Name, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    single_value_title: Count of Facilities
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#333eb5",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Average Density Per Minute Across Devices
    name: Average Density Per Minute Across Devices
    model: pipeline
    explore: measurements
    type: looker_area
    fields: [measurements.density_mean, paths.facility_name, measurements.timestamp_minute]
    pivots: [paths.facility_name]
    filters:
      measurements.density_mean: NOT NULL
    sorts: [paths.facility_name, measurements.timestamp_minute desc]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.density_mean,
            id: Facility A - measurements.density_mean, name: Facility A}, {axisId: measurements.density_mean,
            id: Facility B - measurements.density_mean, name: Facility B}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: []
    series_types:
      Facility B - measurements.density_mean: line
      Facility A - measurements.density_mean: line
    series_colors:
      Facility A - measurements.density_mean: "#E8710A"
      Facility B - measurements.density_mean: "#097874"
    x_axis_datetime_label: "%I:%M %p"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
      Density Unit Conversion: measurements.density_unit_conversion
    row: 4
    col: 12
    width: 12
    height: 5
  - title: Average Flow Rate Per Minute Across Devices
    name: Average Flow Rate Per Minute Across Devices
    model: pipeline
    explore: measurements
    type: looker_area
    fields: [paths.facility_name, measurements.timestamp_minute, measurements.flow_rate_mean]
    pivots: [paths.facility_name]
    filters:
      measurements.flow_rate_mean: NOT NULL
    sorts: [paths.facility_name, measurements.timestamp_minute desc]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.density_mean,
            id: Facility A - measurements.density_mean, name: Facility A}, {axisId: measurements.density_mean,
            id: Facility B - measurements.density_mean, name: Facility B}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      Facility A - measurements.density_mean: "#F9AB00"
      Facility B - measurements.density_mean: "#0cc2bb"
      Facility A - measurements.flow_rate_mean: "#E8710A"
      Facility B - measurements.flow_rate_mean: "#097874"
    x_axis_datetime_label: "%I:%M %p"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 14
    col: 12
    width: 12
    height: 6
  - title: Max Volume Per Minute Across Devices
    name: Max Volume Per Minute Across Devices
    model: pipeline
    explore: measurements
    type: looker_column
    fields: [paths.facility_name, measurements.timestamp_minute, measurements.volume_max]
    pivots: [paths.facility_name]
    filters:
      measurements.volume_max: NOT NULL
    sorts: [paths.facility_name, measurements.timestamp_minute desc]
    limit: 500
    column_limit: 50
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
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.density_mean,
            id: Facility A - measurements.density_mean, name: Facility A}, {axisId: measurements.density_mean,
            id: Facility B - measurements.density_mean, name: Facility B}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      Facility A - measurements.density_mean: "#F9AB00"
      Facility B - measurements.density_mean: "#0cc2bb"
      Facility A - measurements.flow_rate_mean: "#F9AB00"
      Facility B - measurements.flow_rate_mean: "#0cc2bb"
      Facility A - measurements.total_volume: "#E8710A"
      Facility B - measurements.total_volume: "#097874"
      Facility B - measurements.volume_max: "#0cc2bb"
    x_axis_datetime_label: "%I:%M %p"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Timestamp Date: measurements.timestamp_date
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 9
    col: 12
    width: 12
    height: 5
  - name: 'Recommended Action:'
    type: text
    title_text: 'Recommended Action:'
    subtitle_text: ''
    body_text: "<center> Set Alerts based on desired threshold criteria by selecting\
      \ the bell icon in the upper right corner of any tile"
    row: 2
    col: 12
    width: 12
    height: 2
  - name: 'Recommended Action: (2)'
    type: text
    title_text: 'Recommended Action:'
    subtitle_text: ''
    body_text: "<center> Make selections at the top to adjust filters across the dashboard"
    row: 2
    col: 0
    width: 12
    height: 2
  - title: 'Device Inspection Status: Days Remaining'
    name: 'Device Inspection Status: Days Remaining'
    model: pipeline
    explore: measurements
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [sensors.sensor_id_clean, sensors.days_since_last_inspection]
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
    trellis_rows: 2
    trellis_cols: 3
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
      Facility Name: paths.facility_name
      Device ID: sensors.sensor_id_clean
    row: 6
    col: 0
    width: 12
    height: 6
  filters:
  - name: Timestamp Date
    title: Timestamp Date
    type: field_filter
    default_value: 2021/08/01
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
  - name: Device ID
    title: Device ID
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
    listens_to_filters: [Facility Name]
    field: sensors.sensor_id_clean
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
