- dashboard: 4_rollups
  title: "(4) Rollups"
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
      margin-top:0;\n\t\tcolor: #6E6E6E; \n\tline-height: 1.2rem;\">\n\t\tRollups\
      \ - Month, Week, Day, Hour, Minute\n\t</h1>\n</span>\n<span style=\"padding:\
      \ 4px; float:right;\">\n\t<a style=\"background-color: #fff; color: #5f6368;\
      \ padding: 5px 10px;\" href=\"https://demoexpo.looker.com/folders/986\">Home</a>\n\
      \t<a style=\"background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"\
      https://demoexpo.looker.com/explore/pipeline/measurements\">Explore</a>\n\t\
      <a style=\"background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"\
      https://demoexpo.looker.com/dashboards-next/1230\">Go Back to Facilities Overview</a>\n\
      </span>\n\n<div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Average Density by Hour
    name: Average Density by Hour
    model: pipeline
    explore: measurements
    type: looker_area
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.total_density,
            id: measurements.total_density, name: Total Density}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    reference_lines: [{reference_type: line, line_value: median, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: left, color: "#000000", label: Median}]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Timestamp Date: measurements.timestamp_date
      Device ID: sensors.sensor_id_clean
      Facility Name: paths.facility_name
      Density Unit Conversion: measurements.density_unit_conversion
    row: 14
    col: 0
    width: 24
    height: 6
  - title: Average Density by Minute
    name: Average Density by Minute
    model: pipeline
    explore: measurements
    type: looker_area
    fields: [measurements.density_mean, measurements.timestamp_minute]
    filters:
      measurements.density_mean: NOT NULL
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.total_density,
            id: measurements.total_density, name: Total Density}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    reference_lines: [{reference_type: line, line_value: median, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: left, color: "#000000", label: Median}]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Timestamp Date: measurements.timestamp_date
      Device ID: sensors.sensor_id_clean
      Facility Name: paths.facility_name
      Density Unit Conversion: measurements.density_unit_conversion
    row: 20
    col: 0
    width: 24
    height: 6
  - title: Average Density by Day
    name: Average Density by Day
    model: pipeline
    explore: measurements
    type: looker_area
    fields: [measurements.density_mean, measurements.timestamp_date]
    filters:
      measurements.density_mean: NOT NULL
    sorts: [measurements.timestamp_date desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.density_mean,
            id: measurements.density_mean, name: kg per cubic meter}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    reference_lines: [{reference_type: line, line_value: median, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: left, color: "#000000", label: Median}]
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: polynomial,
        series_index: 1, show_label: true}]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Timestamp Date: measurements.timestamp_date
      Device ID: sensors.sensor_id_clean
      Facility Name: paths.facility_name
      Density Unit Conversion: measurements.density_unit_conversion
    row: 8
    col: 0
    width: 24
    height: 6
  - title: Average Density by Week
    name: Average Density by Week
    model: pipeline
    explore: measurements
    type: looker_area
    fields: [measurements.density_mean, measurements.timestamp_week]
    filters:
      measurements.density_mean: NOT NULL
    sorts: [measurements.timestamp_week desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: measurements.density_mean,
            id: measurements.density_mean, name: kg per cubic meter}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 19, type: linear}]
    series_types: {}
    reference_lines: [{reference_type: line, line_value: median, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: left, color: "#000000", label: Median}]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Timestamp Date: measurements.timestamp_date
      Device ID: sensors.sensor_id_clean
      Facility Name: paths.facility_name
      Density Unit Conversion: measurements.density_unit_conversion
    row: 2
    col: 0
    width: 24
    height: 6
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
    default_value: M-8620
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
