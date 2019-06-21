view: promotion {
  sql_table_name: PUBLIC.PROMOTION ;;

  dimension: promotion_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."PROMOTION_ID" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}."MEDIA_TYPE" ;;
  }

  dimension: promotion_district_id {
    type: number
    sql: ${TABLE}."PROMOTION_DISTRICT_ID" ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}."PROMOTION_NAME" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      promotion_id,
      promotion_name,
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
