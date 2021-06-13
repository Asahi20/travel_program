
require "./methods.rb"

plans = [
  {name: "沖縄旅行", price: 10000},
  {name: "北海道旅行", price: 20000},
  {name: "九州旅行", price: 15000}
]

disp_plan(plans)
chosen_plan = choose_plan(plans)
number_of_people = decide_number(chosen_plan)
calculate_charges(chosen_plan, number_of_people)
