view: product {
  sql_table_name: PUBLIC.PRODUCT ;;

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}."BRAND_NAME" ;;
  }

  dimension: cases_per_pallet {
    type: number
    sql: ${TABLE}."CASES_PER_PALLET" ;;
  }

  dimension: gross_weight {
    type: number
    sql: ${TABLE}."GROSS_WEIGHT" ;;
  }

  dimension: low_fat {
    type: string
    sql: ${TABLE}."LOW_FAT" ;;
  }

  dimension: net_weight {
    type: number
    sql: ${TABLE}."NET_WEIGHT" ;;
  }

  dimension: product_class_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PRODUCT_CLASS_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: recyclable_package {
    type: string
    sql: ${TABLE}."RECYCLABLE_PACKAGE" ;;
  }

  dimension: shelf_depth {
    type: number
    sql: ${TABLE}."SHELF_DEPTH" ;;
  }

  dimension: shelf_height {
    type: number
    sql: ${TABLE}."SHELF_HEIGHT" ;;
  }

  dimension: shelf_width {
    type: number
    sql: ${TABLE}."SHELF_WIDTH" ;;
  }

  dimension: sku {
    type: number
    sql: ${TABLE}."SKU" ;;
  }

  dimension: srp {
    type: number
    sql: ${TABLE}."SRP" ;;
  }

  dimension: units_per_case {
    type: number
    sql: ${TABLE}."UNITS_PER_CASE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_id,
      brand_name,
      product_name,
      product_class.product_class_id,
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
