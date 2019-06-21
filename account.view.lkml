view: account {
  sql_table_name: PUBLIC.ACCOUNT ;;

  dimension: account_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_description {
    type: string
    sql: ${TABLE}."ACCOUNT_DESCRIPTION" ;;
  }

  dimension: account_parent {
    type: number
    sql: ${TABLE}."ACCOUNT_PARENT" ;;
  }

  dimension: account_rollup {
    type: string
    sql: ${TABLE}."ACCOUNT_ROLLUP" ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}."ACCOUNT_TYPE" ;;
  }

  dimension: custom_members {
    type: string
    sql: ${TABLE}."CUSTOM_MEMBERS" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_id, expense_fact.count]
  }
}
