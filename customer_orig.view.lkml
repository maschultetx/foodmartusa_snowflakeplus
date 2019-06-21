view: customer_orig {
  sql_table_name: PUBLIC.CUSTOMER_ORIG ;;

  dimension: account_num {
    type: number
    sql: ${TABLE}."ACCOUNT_NUM" ;;
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

  dimension_group: birthdate {
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
    sql: ${TABLE}."BIRTHDATE" ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension_group: date_accnt_opened {
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
    sql: ${TABLE}."DATE_ACCNT_OPENED" ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}."EDUCATION" ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}."FNAME" ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}."FULLNAME" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: houseowner {
    type: string
    sql: ${TABLE}."HOUSEOWNER" ;;
  }

  dimension: lname {
    type: string
    sql: ${TABLE}."LNAME" ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}."MARITAL_STATUS" ;;
  }

  dimension: member_card {
    type: string
    sql: ${TABLE}."MEMBER_CARD" ;;
  }

  dimension: mi {
    type: string
    sql: ${TABLE}."MI" ;;
  }

  dimension: num_cars_owned {
    type: number
    sql: ${TABLE}."NUM_CARS_OWNED" ;;
  }

  dimension: num_children_at_home {
    type: number
    sql: ${TABLE}."NUM_CHILDREN_AT_HOME" ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}."OCCUPATION" ;;
  }

  dimension: phone1 {
    type: string
    sql: ${TABLE}."PHONE1" ;;
  }

  dimension: phone2 {
    type: string
    sql: ${TABLE}."PHONE2" ;;
  }

  dimension: region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."REGION_ID" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: total_children {
    type: number
    sql: ${TABLE}."TOTAL_CHILDREN" ;;
  }

  dimension: yearly_income {
    type: string
    sql: ${TABLE}."YEARLY_INCOME" ;;
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
      lname,
      fname,
      fullname,
      customer.customer_id,
      customer.lname,
      customer.fname,
      customer.fullname,
      region.region_id,
      region.name
    ]
  }
}
