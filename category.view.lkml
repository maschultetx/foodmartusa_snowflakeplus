view: category {
  sql_table_name: PUBLIC.CATEGORY ;;

  dimension: category_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CATEGORY_ID" ;;
  }

  dimension: category_description {
    type: string
    sql: ${TABLE}."CATEGORY_DESCRIPTION" ;;
  }

  dimension: category_parent {
    type: string
    sql: ${TABLE}."CATEGORY_PARENT" ;;
  }

  measure: count {
    type: count
    drill_fields: [category_id, expense_fact.count]
  }
}
