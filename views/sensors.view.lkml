view: sensors {
  sql_table_name: `looker-private-demo.pipeline.sensors`
    ;;
  drill_fields: [sensor_id]

  dimension: sensor_id {
    hidden: yes
    primary_key: yes
    label: "Device ID Original"
    type: string
    sql: ${TABLE}.sensorId ;;
  }

  dimension: sensor_id_clean {
    label: "Device ID"
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'M-8620'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'M-8610'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'M-7762'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'M-7752'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'M-1220-C4' ELSE 'Other' END;;
    full_suggestions: yes

    link: {
      label: "{{value}} Device Summary Dashboard"
      url: "https://demoexpo.looker.com/dashboards-next/1231?Device%20ID={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }

    link: {
      label: "View Latest Sample Lab Results"
      url: "https://storage.cloud.google.com/pipeline_demo_1/Dummy%20Lab%20PDFs_New.pdf"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/833px-PDF_file_icon.svg.png"
    }

    link: {
      label: "View Device Manual"
      url: "https://storage.cloud.google.com/pipeline_demo_1/device_manual_FlowX%20v.3.2.1.pdf"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/833px-PDF_file_icon.svg.png"
    }

    action: {
      label: "Submit Work Order"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "http://www.looker.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }

      form_param: {
        name: "Device"
        required: yes
        default: "Work Order Form: {{ value }} Inspection"
      }


      form_param: {
        name: "Requested By"
        required: yes
        default: "{{ _user_attributes['first_name'] }} {{ _user_attributes['last_name'] }}"
      }

      form_param: {
        name: "Request Description"
        required: yes
        default: "Please inspect Device {{ value }} immediately. Its overall equipment efficacy is low. Thank you!"
      }

    }
  }


  dimension: device_image_url {
    #Note this is dummy data
    hidden: yes
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/device_4_omni.jpeg'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/device_1_control_wave%20(2)'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/device_2_logix.jpeg'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/device_3_spirit_v2.png'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/device_5_emerson.jpeg' ELSE 'Other' END ;;
  }

  dimension: sensor_image {
    label: "Device Image"
    type: string
    sql: ${device_image_url};;
    html: <img src="{{value}}" width="350" /> ;;
  }

  dimension: sensor_make {
    label: "Device Make"
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'Omni'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'Bristol'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'Allen Bradley'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'Sick AG'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'Emerson' ELSE 'Other' END ;;
  }

  dimension: sensor_model {
    label: "Device Model"
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'Omni 6000 v 24.75'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'Control Wave Micro'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'L75 Rev 24.5'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'FlowX v.3.2.1'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'FloBoss™ 107 Flow Manager' ELSE 'Other' END ;;
  }

  dimension: last_inspection {
    group_label: "Device Inspection"
    hidden: yes
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 4
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 16
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 1
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 32
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 9 ELSE 0 END ;;
  }

  dimension: device_scheduled_inspection_date {
    group_label: "Device Inspection"
    description: "Assumption that an inspection should be every 30 days"
    type: string
    sql:CASE
        WHEN ${TABLE}.sensorId LIKE '%M-8620%' THEN (${today} + (30-4))
        WHEN ${TABLE}.sensorId LIKE '%M-8610%' THEN (${today} + (30-16))
        WHEN ${TABLE}.sensorId LIKE '%M-7762%' THEN (${today} + (30-1))
        WHEN ${TABLE}.sensorId LIKE '%M-7752%' THEN (${today} + (30-32))
        WHEN ${TABLE}.sensorId LIKE '%M-1220-C4%' THEN (${today} + (30-9))
        ELSE (${today} + (30-0)) END ;;
  }

  dimension: device_inspection_reason {
    group_label: "Device Inspection"
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'Routine Inspection'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'Routine Inspection'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'Routine Inspection'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'Out-of-Date Gas Composition'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'High Measurement Error' ELSE 'Other' END ;;
  }

  dimension: device_last_inspection_status {
    group_label: "Device Inspection"
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'Complete'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'Complete'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'Complete'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'OVERDUE'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'Complete' ELSE 'Other' END ;;
  }

  dimension: today {
    hidden: yes
    type: date_raw
    sql: CURRENT_DATE() ;;
  }

  measure: days_since_last_inspection {
    group_label: "Device Inspection"
    label: "Days Since Last Inspection"
    description: "Number of Days Ago"
    type: average
    sql: ${last_inspection};;
  }


  dimension: sensor_sample_lab_results{
    label: "Device Lab Results"
    hidden: yes
    type: string
    sql: CASE
         WHEN ${sensor_id} LIKE '%M-8620%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/sample_1.png'
         WHEN ${sensor_id} LIKE '%M-8610%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/sample_2.png'
         WHEN ${sensor_id} LIKE '%M-7762%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/sample_3.png'
         WHEN ${sensor_id} LIKE '%M-7752%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/sample_1.png'
         WHEN ${sensor_id} LIKE '%M-1220-C4%' THEN 'https://storage.cloud.google.com/pipeline_demo_1/sample_2.png' ELSE NULL END ;;
  }

  dimension: sensor_sample_lab_results_image {
    label: "Device Lab Results Image"
    type: string
    sql: ${sensor_sample_lab_results};;
    html: <img src="{{value}}" width="45" /> ;;
  }

  dimension: device_and_facility {
    label: "Device ID & Facility Name"
    type: string
    sql: ${sensor_id_clean} || " | " || ${paths.facility_name} ;;
    link: {
      label: "View Device Manual"
      url: "https://storage.cloud.google.com/pipeline_demo_1/device_manual_FlowX%20v.3.2.1.pdf"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/833px-PDF_file_icon.svg.png"
    }
  }

  dimension: equipment_id {
    label: "Equipment ID"
    hidden: yes
    type: string
    sql: ${TABLE}.equipmentId ;;
    full_suggestions: yes
  }

  measure: count_of_sensors {
    label: "Count of Devices"
    type: count
    drill_fields: [sensor_id, measurements.count]
  }
}
