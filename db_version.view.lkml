view: db_version {
  derived_table: {
    sql: select current_version() as version
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  set: detail {
    fields: [version]
  }
}
