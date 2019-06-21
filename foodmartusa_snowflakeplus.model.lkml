connection: "snowflakefoodmartusaplus"

# include all the views
include: "*.view"

datagroup: foodmartusa_snowflakeplus_default_datagroup {
 sql_trigger: SELECT CURRENT_TIMESTAMP;;
  max_cache_age: "0 seconds"
}

persist_with: foodmartusa_snowflakeplus_default_datagroup

explore: account {}

explore: category {}

explore: ccmetrics {}

explore: customer {
  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: customer_orig {
  join: customer {
    type: left_outer
    sql_on: ${customer_orig.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer_orig.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: department {}

explore: employee {
  join: position {
    type: left_outer
    sql_on: ${employee.position_id} = ${position.position_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${employee.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: department {
    type: left_outer
    sql_on: ${employee.department_id} = ${department.department_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${store.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: db_version{}

explore: sales_drivers {}

explore: expense_fact {
  join: store {
    type: left_outer
    sql_on: ${expense_fact.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${expense_fact.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${expense_fact.category_id} = ${category.category_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${store.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_fact {
  join: product {
    type: left_outer
    sql_on: ${inventory_fact.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: warehouse {
    type: left_outer
    sql_on: ${inventory_fact.warehouse_id} = ${warehouse.warehouse_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${inventory_fact.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: warehouse_class {
    type: left_outer
    sql_on: ${warehouse.warehouse_class_id} = ${warehouse_class.warehouse_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${store.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_fact_orig {
  join: product {
    type: left_outer
    sql_on: ${inventory_fact_orig.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: warehouse {
    type: left_outer
    sql_on: ${inventory_fact_orig.warehouse_id} = ${warehouse.warehouse_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${inventory_fact_orig.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: warehouse_class {
    type: left_outer
    sql_on: ${warehouse.warehouse_class_id} = ${warehouse_class.warehouse_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${store.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: position {}

explore: product {
  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }
}

explore: product_class {}

explore: promotion {}

explore: region {}

explore: sales_fact {
  join: product {
    type: left_outer
    sql_on: ${sales_fact.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_1999 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_1999.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_1999.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_1999.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_1999.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2000 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2000.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2000.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2000.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2000.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2001 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2001.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2001.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2001.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2001.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2002 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2002.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2002.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2002.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2002.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2003 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2003.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2003.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2003.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2003.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2004 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2004.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2004.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2004.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2004.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2005 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2005.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2005.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2005.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2005.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2006 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2006.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2006.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2006.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2006.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2007 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2007.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2007.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2007.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2007.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2008 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2008.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2008.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2008.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2008.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2009 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2009.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2009.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2009.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2009.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2010 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2010.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2010.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2010.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2010.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2011 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2011.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2011.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2011.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2011.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2012 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2012.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2012.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2012.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2012.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2013 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2013.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2013.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2013.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2013.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2014 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2014.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2014.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2014.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2014.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2015 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2015.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2015.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2015.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2015.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2016 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2016.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2016.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2016.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2016.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2017 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2017.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2017.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2017.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2017.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_2018 {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_2018.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_2018.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_2018.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_2018.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_load_source {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_load_source.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_load_source.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_load_source.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_load_source.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_new {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_new.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_new.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_new.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_new.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: sales_fact_orig {
  join: product {
    type: left_outer
    sql_on: ${sales_fact_orig.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${sales_fact_orig.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${sales_fact_orig.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${sales_fact_orig.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: store {
  join: region {
    type: left_outer
    sql_on: ${store.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: view_50_m {
  join: product {
    type: left_outer
    sql_on: ${view_50_m.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${view_50_m.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${view_50_m.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${view_50_m.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: view_75_m {
  join: product {
    type: left_outer
    sql_on: ${view_75_m.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${view_75_m.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: promotion {
    type: left_outer
    sql_on: ${view_75_m.promotion_id} = ${promotion.promotion_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${view_75_m.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: product_class {
    type: left_outer
    sql_on: ${product.product_class_id} = ${product_class.product_class_id} ;;
    relationship: many_to_one
  }

  join: region {
    type: left_outer
    sql_on: ${customer.region_id} = ${region.region_id} ;;
    relationship: many_to_one
  }
}

explore: warehouse {
  join: warehouse_class {
    type: left_outer
    sql_on: ${warehouse.warehouse_class_id} = ${warehouse_class.warehouse_class_id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_class {}
