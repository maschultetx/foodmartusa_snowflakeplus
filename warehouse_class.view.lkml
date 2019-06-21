view: warehouse_class {
  sql_table_name: PUBLIC.WAREHOUSE_CLASS ;;

  dimension: warehouse_class_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."WAREHOUSE_CLASS_ID" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_class_id, warehouse.count]
  }
}
