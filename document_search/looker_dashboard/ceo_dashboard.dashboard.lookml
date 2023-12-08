---
- dashboard: ceo_dashboard
  title: CEO Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: QkQ5Zimwh4tcHYSXUSLOVy
  elements:
  - title: Sales by office
    name: Sales by office
    model: ElementalRentalLookML
    explore: sales
    type: looker_pie
    fields: [sales.total_sales, office.office_name]
    sorts: [sales.total_sales desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: new-sequence-2
      palette_id: new-sequence-2-categorical-0
      options:
        steps: 5
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 12
    height: 7
  - title: Target Hours
    name: Target Hours
    model: ElementalRentalLookML
    explore: sales
    type: single_value
    fields: [sales.total_hours]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: '40000000'
      label: Target Sales
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      table_calculation: target_sales
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: '25000'
      label: Target Hours
      value_format:
      value_format_name: decimal_0
      _kind_hint: dimension
      table_calculation: target_hours
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#6FC842"
    comparison_label: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#38AA5D",
        font_color: !!null '', color_application: {collection_id: new-sequence-2,
          palette_id: new-sequence-2-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Office Name: office.office_name
    row: 1
    col: 6
    width: 6
    height: 2
  - title: Target Sales
    name: Target Sales
    model: ElementalRentalLookML
    explore: sales
    type: single_value
    fields: [sales.total_sales]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: '40000000'
      label: Target Sales
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      table_calculation: target_sales
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#6FC842"
    comparison_label: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#38AA5D",
        font_color: !!null '', color_application: {collection_id: new-sequence-2,
          palette_id: new-sequence-2-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    listen:
      Office Name: office.office_name
    row: 1
    col: 0
    width: 6
    height: 2
  - title: Number of Employees
    name: Number of Employees
    model: ElementalRentalLookML
    explore: sales
    type: single_value
    fields: [salesperson.salesperson_first_name, salesperson.salesperson_last_name]
    sorts: [salesperson.salesperson_first_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: '40000000'
      label: Target Sales
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      table_calculation: target_sales
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: count(${salesperson.salesperson_first_name})
      label: Total Number of employees
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: total_number_of_employees
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#6FC842"
    single_value_title: Number of Employees
    comparison_label: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#38AA5D",
        font_color: !!null '', color_application: {collection_id: new-sequence-2,
          palette_id: new-sequence-2-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [salesperson.salesperson_last_name, salesperson.salesperson_first_name]
    listen:
      Office Name: office.office_name
    row: 1
    col: 18
    width: 6
    height: 2
  - title: Target Count
    name: Target Count
    model: ElementalRentalLookML
    explore: sales
    type: single_value
    fields: [sales.count]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: '40000000'
      label: Target Sales
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      table_calculation: target_sales
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: '500'
      label: Target Count
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: target_count
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#6FC842"
    comparison_label: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#38AA5D",
        font_color: !!null '', color_application: {collection_id: new-sequence-2,
          palette_id: new-sequence-2-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Office Name: office.office_name
    row: 1
    col: 12
    width: 6
    height: 2
  - title: Sales By Function
    name: Sales By Function
    model: ElementalRentalLookML
    explore: sales
    type: looker_area
    fields: [sales.total_sales, sales.transaction_month, salesperson.salesperson_function]
    pivots: [salesperson.salesperson_function]
    fill_fields: [sales.transaction_month]
    sorts: [salesperson.salesperson_function, sales.transaction_month desc]
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
    stacking: normal
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
    color_application:
      collection_id: new-sequence-2
      custom:
        id: fd480b08-88a1-2d70-b253-1f8faf78f32b
        label: Custom
        type: discrete
        colors:
        - "#38AA5D"
        - "#6FC842"
        - "#97D439"
        - "#C8CE20"
        - "#D0CA1D"
        - "#DAC71B"
        - "#F57F1C"
        - "#F0422F"
        - "#EE2A41"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Office Name: office.office_name
    row: 10
    col: 0
    width: 24
    height: 9
  - title: Sales Distribution By State
    name: Sales Distribution By State
    model: ElementalRentalLookML
    explore: sales
    type: looker_google_map
    fields: [sales.total_sales, sales.state]
    sorts: [sales.total_sales desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    listen:
      Office Name: office.office_name
    row: 3
    col: 12
    width: 12
    height: 7
  - title: Sales Person Report
    name: Sales Person Report
    model: ElementalRentalLookML
    explore: sales
    type: looker_grid
    fields: [salesperson.salesperson_first_name, salesperson.salesperson_last_name,
      sales.total_sales, sales.total_hours, sales.count, salesperson.salesperson_office_name]
    sorts: [sales.total_sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sales.total_sales}/${sales.total_hours}"
      label: Sales Per Hour
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: sales_per_hour
      _type_hint: number
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
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      sales.total_sales:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    defaults_version: 1
    listen:
      Office Name: office.office_name
    row: 19
    col: 0
    width: 24
    height: 9
  - type: button
    name: button_19354
    rich_content_json: '{"text":"New Button","description":"","newTab":true,"alignment":"right","size":"medium","style":"FILLED","color":"#1A73E8","href":"http://localhost:3001/"}'
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Office Name
    title: Office Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: ElementalRentalLookML
    explore: sales
    listens_to_filters: []
    field: office.office_name
