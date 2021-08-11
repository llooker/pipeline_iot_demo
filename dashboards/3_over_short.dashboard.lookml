- dashboard: 3_overageshortage_calculations
  title: "(3) Overage/Shortage Calculations"
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
      margin-top:0;\n\t\tcolor: #6E6E6E; \n\tline-height: 1.2rem;\">\n\t\tPipeline\
      \ Analysis \n\t</h1>\n</span>\n<span style=\"padding: 4px; float:right;\">\n\
      \t<a style=\"background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"\
      https://demoexpo.looker.com/folders/986\">Home</a>\n\t<a style=\"background-color:\
      \ #fff; color: #5f6368; padding: 5px 10px;\" href=\"https://demoexpo.looker.com/explore/pipeline/measurements\"\
      >Explore</a>\n</span>\n\n<div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Overage/Shortage for Pipeline
    name: Overage/Shortage for Pipeline
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurement_error_view.total_balance, measurements.timestamp_time]
    sorts: [measurements.timestamp_time desc]
    limit: 2880
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
    series_types: {}
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      measurements.total_value:
        is_active: false
    defaults_version: 1
    listen:
      Timestamp Date: measurement_error_view.timestamp_date
    row: 2
    col: 0
    width: 24
    height: 6
  - title: Shrinkage for Pipeline
    name: Shrinkage for Pipeline
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurements.timestamp_time, measurement_error_view.total_shrinkage]
    sorts: [measurements.timestamp_time desc]
    limit: 2880
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
    color_application:
      collection_id: keyera
      palette_id: keyera-categorical-0
      options:
        steps: 5
        reverse: false
    series_types: {}
    series_colors:
      KET - measurement_error_view.total_shrinkage: "#333eb5"
      measurement_error_view.total_shrinkage: "#333eb5"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      measurements.total_value:
        is_active: false
    defaults_version: 1
    listen:
      Timestamp Date: measurement_error_view.timestamp_date
    row: 8
    col: 0
    width: 24
    height: 5
  - title: Measurement Error for Pipeline
    name: Measurement Error for Pipeline
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [measurements.timestamp_time, measurement_error_view.total_measurement_error]
    sorts: [measurements.timestamp_time desc]
    limit: 2880
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
    series_types: {}
    series_colors:
      KET - measurement_error_view.total_measurement_error: "#F9AB00"
      SGR - measurement_error_view.total_measurement_error: "#E52592"
      measurement_error_view.total_measurement_error: "#F9AB00"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      measurements.total_value:
        is_active: false
    defaults_version: 1
    listen:
      Timestamp Date: measurement_error_view.timestamp_date
    row: 13
    col: 0
    width: 24
    height: 5
  - title: Pipeline Measurement Analysis
    name: Pipeline Measurement Analysis
    model: pipeline
    explore: measurements
    type: looker_grid
    fields: [measurements.timestamp_time, measurement_error_view.total_balance, measurement_error_view.total_shrinkage,
      measurement_error_view.total_measurement_error]
    sorts: [measurements.timestamp_time desc]
    limit: 2880
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: standard_deviation,
        _type_hint: number, category: table_calculation, expression: 'round(sqrt(mean(power(${measurement_error_view.total_measurement_error}
          - mean(${measurement_error_view.total_measurement_error}), 2))),2)', label: standard_deviation,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: outlier, _type_hint: string, category: table_calculation,
        expression: 'if(abs(${measurement_error_view.total_measurement_error} - mean(${measurement_error_view.total_measurement_error}))
          >  ${standard_deviation} * 3, "Yes", "No") ', label: 'Outlier?', value_format: !!null '',
        value_format_name: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      measurements.total_value:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#E8710A",
        font_color: !!null '', color_application: {collection_id: keyera, palette_id: keyera-diverging-0,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: true, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: average,
        series_index: 1, show_label: true, label_type: string}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [standard_deviation]
    listen:
      Timestamp Date: measurement_error_view.timestamp_date
    row: 24
    col: 0
    width: 24
    height: 10
  - name: " (2)"
    type: text
    title_text: ''
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
      \ Density Measurements\n\t</h1>\n</span>\n<span style=\"padding: 4px; float:right;\"\
      >\n\t<a style=\"background-color: #fff; color: #5f6368; padding: 5px 10px;\"\
      \ href=\"https://keyerakaps.cloud.looker.com/boards/2\">Home</a>\n\t<a style=\"\
      background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"https://keyerakaps.cloud.looker.com/explore/kaps-derived-tables-demo/measurements\"\
      >Explore</a>\n</span>\n\n<div>"
    row: 41
    col: 0
    width: 24
    height: 2
  - title: Anomaly Detection for Pipeline
    name: Anomaly Detection for Pipeline
    model: alerting
    explore: alerting
    type: looker_scatter
    fields: [alerting.time_of_day, alerting.alert_is_triggered, alerting.today_value,
      alerting.yesterday_value, alerting.last_week_value]
    filters:
      alerting_parameters.time_range: hour
      alerting_parameters.reference_value: weighted^_average
      alerting.current_time_window: 'No'
      alerting_parameters.remove_trigger_filter: '0'
      alerting_parameters.metric_name: over^_short
      alerting_parameters.sensitivity: '0.5'
    sorts: [alerting.time_of_day]
    limit: 500
    query_timezone: UTC
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
    show_null_points: true
    hidden_series: [alerting.last_week_value]
    series_types:
      alerting.today_value: line
    series_colors:
      alerting.today_value: "#333eb5"
    series_point_styles:
      alerting.last_week_value: diamond
      alerting.yesterday_value: triangle
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [alerting.alert_is_triggered]
    listen: {}
    row: 18
    col: 0
    width: 24
    height: 6
  - title: Total Inlet Density Measurements - M-8620
    name: Total Inlet Density Measurements - M-8620
    model: pipeline
    explore: measurements
    type: looker_grid
    fields: [paths.start_node, paths.end_node, measurements.timestamp_time, measurements.total_density]
    filters:
      measurements.density_unit_conversion: kg
      sensors.sensor_id_clean: M-8620
    sorts: [measurements.timestamp_time desc]
    limit: 2880
    column_limit: 50
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
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
    series_cell_visualizations:
      measurements.total_flow_rate:
        is_active: true
      measurements.total_density:
        is_active: true
        palette:
          palette_id: keyera-sequential-0
          collection_id: keyera
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
    show_null_points: true
    interpolation: linear
    listen:
      Inlet: paths.start_node
      Timestamp Date: measurement_error_view.timestamp_date
    row: 43
    col: 0
    width: 12
    height: 8
  - title: Total Inlet Density Measurements - M-8620
    name: Total Inlet Density Measurements - M-8620 (2)
    model: pipeline
    explore: measurements
    type: looker_line
    fields: [paths.start_node, measurements.timestamp_time, measurements.total_density]
    pivots: [paths.start_node]
    filters:
      measurements.density_unit_conversion: kg
      sensors.sensor_id_clean: M-8620
    sorts: [measurements.timestamp_time desc, paths.start_node]
    limit: 2880
    column_limit: 50
    query_timezone: UTC
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
    series_types: {}
    series_colors:
      measurements.total_density: "#333eb5"
      KET - measurements.total_density: "#333eb5"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      measurements.total_flow_rate:
        is_active: true
      measurements.total_density:
        is_active: true
        palette:
          palette_id: keyera-sequential-0
          collection_id: keyera
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Inlet: paths.start_node
      Timestamp Date: measurement_error_view.timestamp_date
    row: 43
    col: 12
    width: 12
    height: 8
  - title: Data Revisions
    name: Data Revisions
    model: alerting
    explore: data_revisions
    type: looker_grid
    fields: [data_revisions.sensor_id, data_revisions.timestamp_time, data_revisions.created_time,
      data_revisions.user, data_revisions.value_before, data_revisions.value_after,
      data_revisions.comments]
    sorts: [data_revisions.timestamp_time desc]
    limit: 500
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Timestamp Date: data_revisions.timestamp_date
    row: 51
    col: 0
    width: 24
    height: 6
  - title: Total Inlet Flow
    name: Total Inlet Flow
    model: alerting
    explore: volume_delta_view
    type: looker_line
    fields: [volume_delta_view.sensor_id, volume_delta_view.total_accum, volume_delta_view.timestamp_time]
    pivots: [volume_delta_view.sensor_id]
    filters:
      volume_delta_view.direction: "-1"
    sorts: [volume_delta_view.sensor_id, volume_delta_view.timestamp_time desc]
    limit: 500
    query_timezone: UTC
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
    series_colors:
      M-8620-volume - volume_delta_view.total_accum: "#097874"
    defaults_version: 1
    listen: {}
    row: 34
    col: 0
    width: 24
    height: 7
  filters:
  - name: Inlet
    title: Inlet
    type: field_filter
    default_value: KET
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: []
    field: paths.start_node
  - name: Outlet
    title: Outlet
    type: field_filter
    default_value: Manifold
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: []
    field: paths.end_node
  - name: Timestamp Date
    title: Timestamp Date
    type: field_filter
    default_value: 2021/08/01 to 2021/08/03
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: pipeline
    explore: measurements
    listens_to_filters: []
    field: measurements.timestamp_date
