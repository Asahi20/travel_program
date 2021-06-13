
# 旅行プランの表示
def disp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:name]}(#{plan[:price]}円)"
  end
end

# 旅行プランの選択
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
      puts "1〜3の番号を入力して下さい。"
  end
  plans[select_plan_num - 1]
end

# 人数の入力
def decide_number(chosen_plan)
  puts "#{chosen_plan[:name]}ですね。"
  puts "何名で予約されますか？"
  while true
    print "プランの番号を選択 > "
    number_of_people = gets.to_i
    break if number_of_people >= 1
    puts "1以上を入力して下さい。"
  end
  number_of_people
end
# 合計金額の計算
def calculate_charges(chosen_plan, number_of_people)
  puts "#{number_of_people}名ですね。"
  total_price = chosen_plan[:price]*number_of_people
  if number_of_people >= 5
    total_price *= 0.9
    puts "5名以上ですので10%割引となります"
  end
  puts "合計料金は#{total_price.floor}円になります。"
end
