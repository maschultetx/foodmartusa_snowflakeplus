view: department {
  sql_table_name: PUBLIC.DEPARTMENT ;;

  dimension: department_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: department_description {
    type: string
    sql: ${TABLE}."DEPARTMENT_DESCRIPTION" ;;
  }

  measure: count {
    type: count
    drill_fields: [department_id, employee.count]
  }
}
