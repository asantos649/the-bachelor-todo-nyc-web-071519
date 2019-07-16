

def get_first_name_of_season_winner(data, season)
    winner = data[season].find{|contestant| 
      contestant["status"] == "Winner"
  }
  winner["name"].split.first
end

def get_all_contestants(data)
  total_list = []
  data.map{|season,contestants|
     total_list.concat(contestants)
  }
  total_list
end

def get_contestant_name(data, occupation)
  correct_contestant = get_all_contestants(data).find {|contestant|
    contestant["occupation"] == occupation
  }
  correct_contestant["name"]
end

def count_contestants_by_hometown(data, hometown)
  list_of_matches = get_all_contestants(data).select {|contestant|
  contestant["hometown"] == hometown
  }
  list_of_matches.length
end

def get_occupation(data, hometown)
  correct_contestant = get_all_contestants(data).find {|contestant|
    contestant["hometown"] == hometown
  }
  correct_contestant["occupation"]
end

def get_average_age_for_season(data, season)
  total = data[season].reduce(0){|sum, contestants|
    sum + contestants["age"].to_i
  }
  return (total.to_f/data[season].length).round
end
