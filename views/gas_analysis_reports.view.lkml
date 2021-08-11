view: gas_analysis_reports {
  sql_table_name: `looker-private-demo.pipeline.gas_analysis_reports_2`
    ;;
  label: "Gas Analysis Reports"

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension_group: date_reported {
    #hidden: yes
    label: "Reported"
    type: time
    timeframes: [
      raw,
      date,
      week,
      hour,
      minute,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_reported ;;
  }

  dimension_group: date_sampled {
    #hidden: yes
    label: "Sampled"
    type: time
    timeframes: [
      raw,
      date,
      week,
      minute,
      hour,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_sampled ;;
  }

  dimension: equipment_id {
    type: string
    sql: ${TABLE}.equipmentId ;;
  }

  dimension: laboratory {
    type: string
    sql: ${TABLE}.laboratory ;;
  }

  dimension: mol_fractions__c5 {
    type: number
    sql: ${TABLE}.mol_fractions.C5 ;;
    group_label: "Mol Fractions"
    group_item_label: "C5"
  }

  dimension: mol_fractions__co2 {
    type: number
    sql: ${TABLE}.mol_fractions.CO2 ;;
    group_label: "Mol Fractions"
    group_item_label: "Co2"
  }

  dimension: mol_fractions__h2 {
    type: number
    sql: ${TABLE}.mol_fractions.H2 ;;
    group_label: "Mol Fractions"
    group_item_label: "H2"
  }

  dimension: mol_fractions__n2 {
    type: number
    sql: ${TABLE}.mol_fractions.N2 ;;
    group_label: "Mol Fractions"
    group_item_label: "N2"
  }

  dimension: report_url {
    hidden: yes
    type: string
    sql: ${TABLE}.report_URL ;;
  }

  dimension: report_url_clean {
    label: "Report URL"
    type: string
    sql: ${report_url} ;;
    #html: <img src="{{value}}" width="350" />;;
    link: {
      label: "Click Here to View Report"
      url: "{{value}}"
      icon_url : "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/833px-PDF_file_icon.svg.png"
    }
  }

  dimension: sample_density {
    type: number
    sql: ${TABLE}.sample_density ;;
  }

  measure: sample_density_mean {
    type: average
    sql: ${sample_density} ;;
  }

  dimension: sample_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.sampleId ;;
  }

  dimension: validator_id {
    type: string
    sql: ${TABLE}.validatorId ;;
  }

  measure: count {
    hidden: yes
    label: "Count of Gas Analysis Report"
    type: count
    drill_fields: []
  }
}
