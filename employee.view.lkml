view: employee {
  sql_table_name: PUBLIC.EMPLOYEE ;;

  dimension: employee_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."BIRTH_DATE" ;;
  }

  dimension: department_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}."EDUCATION_LEVEL" ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension_group: hire {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."HIRE_DATE" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: management_role {
    type: string
    sql: ${TABLE}."MANAGEMENT_ROLE" ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}."MARITAL_STATUS" ;;
  }

  dimension: position_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."POSITION_ID" ;;
  }

  dimension: position_title {
    type: string
    sql: ${TABLE}."POSITION_TITLE" ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}."SALARY" ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: supervisor_id {
    type: number
    sql: ${TABLE}."SUPERVISOR_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      employee_id,
      full_name,
      first_name,
      last_name,
      position.position_id,
      store.store_id,
      store.name,
      department.department_id
    ]
  }
}
