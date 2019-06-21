view: warehouse {
  sql_table_name: PUBLIC.WAREHOUSE ;;

  dimension: warehouse_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}."ADDRESS1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."ADDRESS2" ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}."ADDRESS3" ;;
  }

  dimension: address4 {
    type: string
    sql: ${TABLE}."ADDRESS4" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}."OWNER_NAME" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: stores_id {
    type: number
    sql: ${TABLE}."STORES_ID" ;;
  }

  dimension: warehouse_class_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."WAREHOUSE_CLASS_ID" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      warehouse_id,
      name,
      owner_name,
      warehouse_class.warehouse_class_id,
      inventory_fact.count,
      inventory_fact_orig.count
    ]
  }
}
