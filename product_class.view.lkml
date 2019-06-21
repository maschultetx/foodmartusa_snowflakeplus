view: product_class {
  sql_table_name: PUBLIC.PRODUCT_CLASS ;;

  dimension: product_class_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_ID" ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}."PRODUCT_CATEGORY" ;;
  }

  dimension: product_department {
    type: string
    sql: ${TABLE}."PRODUCT_DEPARTMENT" ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}."PRODUCT_FAMILY" ;;
  }

  dimension: product_subcategory {
    type: string
    sql: ${TABLE}."PRODUCT_SUBCATEGORY" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_class_id, product.count]
  }
}
