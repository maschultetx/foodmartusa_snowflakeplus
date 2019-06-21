view: region {
  sql_table_name: PUBLIC.REGION ;;

  dimension: region_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."REGION_ID" ;;
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

  dimension: district {
    type: string
    sql: ${TABLE}."DISTRICT" ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}."DISTRICT_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [region_id, name, customer.count, customer_orig.count, store.count]
  }
}
