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

  dimension: mol_fractions_c5 {
    type: number
    sql: ${TABLE}.mol_fractions_C5 ;;
    group_label: "Mol Fractions"
    group_item_label: "C5"
  }

  dimension: mol_fractions_co2 {
    type: number
    sql: ${TABLE}.mol_fractions_CO2 ;;
    group_label: "Mol Fractions"
    group_item_label: "CO2"
  }

  dimension: mol_fractions_h2 {
    type: number
    sql: ${TABLE}.mol_fractions_H2 ;;
    group_label: "Mol Fractions"
    group_item_label: "H2"
  }

  dimension: mol_fractions_n2 {
    type: number
    sql: ${TABLE}.mol_fractions_N2 ;;
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

  dimension: sample_id {
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

  measure: total_mol_fractions_c5 {
    type: sum
    hidden: yes
    sql: ${mol_fractions_c5} ;;
  }

  measure: average_mol_fractions_c5 {
    type: average
    hidden: yes
    sql: ${mol_fractions_c5} ;;
  }

  measure: total_mol_fractions_co2 {
    type: sum
    hidden: yes
    sql: ${mol_fractions_co2} ;;
  }

  measure: average_mol_fractions_co2 {
    type: average
    hidden: yes
    sql: ${mol_fractions_co2} ;;
  }

  measure: total_mol_fractions_h2 {
    type: sum
    hidden: yes
    sql: ${mol_fractions_h2} ;;
  }

  measure: average_mol_fractions_h2 {
    type: average
    hidden: yes
    sql: ${mol_fractions_h2} ;;
  }

  measure: total_mol_fractions_n2 {
    type: sum
    hidden: yes
    sql: ${mol_fractions_n2} ;;
  }

  measure: average_mol_fractions_n2 {
    type: average
    hidden: yes
    sql: ${mol_fractions_n2} ;;
  }

  measure: total_sample_density {
    type: sum
    hidden: yes
    sql: ${sample_density} ;;
  }

  measure: average_sample_density {
    type: average
    hidden: yes
    sql: ${sample_density} ;;
  }
}
