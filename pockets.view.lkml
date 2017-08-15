view: pockets {
  derived_table: {
    sql: SELECT * FROM `pool-product-day.pool_shenanigans.pockets`;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: string
    case: {
      when: {
        label: "corner"
        sql: ${TABLE}.id in [0, 1, 4, 5] ;;
      }
      else: "side"
    }
  }

  set: detail {
    fields: [id]
  }
}
