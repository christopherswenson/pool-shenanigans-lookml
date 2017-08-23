view: shot {
  sql_table_name: api_shot ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: called_ball_id {
    type: number
    sql: ${TABLE}.called_ball_id ;;
  }

  dimension: called_pocket_id {
    type: number
    sql: ${TABLE}.called_pocket_id ;;
  }

  dimension: is_break {
    type: yesno
    sql: ${TABLE}.is_break ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: number_in_game {
    type: number
    sql: ${TABLE}.number_in_game ;;
  }

  dimension: number_in_turn {
    type: number
    sql: ${TABLE}.number_in_turn ;;
  }

  dimension: turn_id {
    type: number
    sql: ${TABLE}.turn_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
