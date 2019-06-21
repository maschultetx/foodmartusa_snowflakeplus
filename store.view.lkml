view: store {
  sql_table_name: PUBLIC.STORE ;;

  dimension: store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: coffee_bar {
    type: string
    sql: ${TABLE}."COFFEE_BAR" ;;
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

  dimension_group: first_opened {
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
    sql: ${TABLE}."FIRST_OPENED_DATE" ;;
  }

  dimension: florist {
    type: string
    sql: ${TABLE}."FLORIST" ;;
  }

  dimension: frozen_sqft {
    type: number
    sql: ${TABLE}."FROZEN_SQFT" ;;
  }

  dimension: grocery_sqft {
    type: number
    sql: ${TABLE}."GROCERY_SQFT" ;;
  }

  dimension_group: last_remodel {
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
    sql: ${TABLE}."LAST_REMODEL_DATE" ;;
  }

  dimension: manager {
    type: string
    sql: ${TABLE}."MANAGER" ;;
  }

  dimension: meat_sqft {
    type: number
    sql: ${TABLE}."MEAT_SQFT" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: prepared_food {
    type: string
    sql: ${TABLE}."PREPARED_FOOD" ;;
  }

  dimension: region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."REGION_ID" ;;
  }

  dimension: salad_bar {
    type: string
    sql: ${TABLE}."SALAD_BAR" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
    map_layer_name: us_states
  }

  dimension: store_number {
    type: number
    sql: ${TABLE}."STORE_NUMBER" ;;
  }

  dimension: store_sqft {
    type: number
    sql: ${TABLE}."STORE_SQFT" ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}."STORE_TYPE" ;;
  }

  dimension: video_store {
    type: string
    sql: ${TABLE}."VIDEO_STORE" ;;
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
      store_id,
      name,
      region.region_id,
      region.name,
      employee.count,
      expense_fact.count,
      inventory_fact.count,
      inventory_fact_orig.count,
      sales_fact.count,
      sales_fact_1999.count,
      sales_fact_2000.count,
      sales_fact_2001.count,
      sales_fact_2002.count,
      sales_fact_2003.count,
      sales_fact_2004.count,
      sales_fact_2005.count,
      sales_fact_2006.count,
      sales_fact_2007.count,
      sales_fact_2008.count,
      sales_fact_2009.count,
      sales_fact_2010.count,
      sales_fact_2011.count,
      sales_fact_2012.count,
      sales_fact_2013.count,
      sales_fact_2014.count,
      sales_fact_2015.count,
      sales_fact_2016.count,
      sales_fact_2017.count,
      sales_fact_2018.count,
      sales_fact_load_source.count,
      sales_fact_new.count,
      sales_fact_orig.count,
      view_50_m.count,
      view_75_m.count
    ]
  }
}
