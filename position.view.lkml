view: position {
  sql_table_name: PUBLIC.POSITION ;;

  dimension: position_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."POSITION_ID" ;;
  }

  dimension: management_role {
    type: string
    sql: ${TABLE}."MANAGEMENT_ROLE" ;;
  }

  dimension: max_scale {
    type: number
    sql: ${TABLE}."MAX_SCALE" ;;
  }

  dimension: min_scale {
    type: number
    sql: ${TABLE}."MIN_SCALE" ;;
  }

  dimension: pay_type {
    type: string
    sql: ${TABLE}."PAY_TYPE" ;;
  }

  dimension: position_title {
    type: string
    sql: ${TABLE}."POSITION_TITLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [position_id, employee.count]
  }
}
