view: sales_fact_orig {
  sql_table_name: PUBLIC.SALES_FACT_ORIG ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: promotion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PROMOTION_ID" ;;
  }

  dimension_group: sales {
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
    sql: ${TABLE}."SALES_DATE" ;;
  }

  dimension: store_cost {
    type: number
    sql: ${TABLE}."STORE_COST" ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: store_sales {
    type: number
    sql: ${TABLE}."STORE_SALES" ;;
  }

  dimension: unit_sales {
    type: number
    sql: ${TABLE}."UNIT_SALES" ;;
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
      customer.customer_id,
      customer.lname,
      customer.fname,
      customer.fullname,
      promotion.promotion_id,
      promotion.promotion_name,
      store.store_id,
      store.name
    ]
  }
}
