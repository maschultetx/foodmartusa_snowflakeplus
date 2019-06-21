view: inventory_fact_orig {
  sql_table_name: PUBLIC.INVENTORY_FACT_ORIG ;;

  dimension_group: inventory {
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
    sql: ${TABLE}."INVENTORY_DATE" ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: store_invoice {
    type: number
    sql: ${TABLE}."STORE_INVOICE" ;;
  }

  dimension: supply_time {
    type: number
    sql: ${TABLE}."SUPPLY_TIME" ;;
  }

  dimension: units_ordered {
    type: number
    sql: ${TABLE}."UNITS_ORDERED" ;;
  }

  dimension: units_shipped {
    type: number
    sql: ${TABLE}."UNITS_SHIPPED" ;;
  }

  dimension: warehouse_cost {
    type: number
    sql: ${TABLE}."WAREHOUSE_COST" ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: warehouse_sales {
    type: number
    sql: ${TABLE}."WAREHOUSE_SALES" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product.product_id,
      product.brand_name,
      product.product_name,
      warehouse.warehouse_id,
      warehouse.name,
      warehouse.owner_name,
      store.store_id,
      store.name
    ]
  }
}
