view: ccmetrics {
  sql_table_name: PUBLIC.CCMETRICS ;;

  dimension: executiontimeseconds {
    type: number
    sql: ${TABLE}."EXECUTIONTIMESECONDS" ;;
  }

  dimension: queryloopuser {
    type: string
    sql: ${TABLE}."QUERYLOOPUSER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
