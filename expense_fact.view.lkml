view: expense_fact {
  sql_table_name: PUBLIC.EXPENSE_FACT ;;

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: category_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."CATEGORY_ID" ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}."CURRENCY_ID" ;;
  }

  dimension_group: expense {
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
    sql: ${TABLE}."EXPENSE_DATE" ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."STORE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name, account.account_id, category.category_id]
  }
}
