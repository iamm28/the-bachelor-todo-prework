def get_first_name_of_season_winner(data, season)
  data.each do |s, people|
    if season == s
      #puts s ==> season 10
      people.each do |person|
        #puts person ==> hash for each person in season 10 ex {"name"=>"Tessa Horst", "age"=>"26", "hometown"=>"San Francisco, CA", "occupation"=>"Social Worker", "status"=>"Winner"}
        person.each do |key,value|
          if key == "status" && value == "Winner"
            #puts "made it"
            return person["name"].split(' ')[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |s, people|
    #puts s ==> season 10
    people.each do |person|
      #puts person ==> hash for each person in season 10 ex {"name"=>"Tessa Horst", "age"=>"26", "hometown"=>"San Francisco, CA", "occupation"=>"Social Worker", "status"=>"Winner"}
      person.each do |key,value|
        if key == "occupation" && value == occupation
          #puts "made it"
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |s, people|
    #puts s ==> season 10
    people.each do |person|
      #puts person ==> hash for each person in season 10 ex {"name"=>"Tessa Horst", "age"=>"26", "hometown"=>"San Francisco, CA", "occupation"=>"Social Worker", "status"=>"Winner"}
      person.each do |key,value|
        if key == "hometown" && value == hometown
          #puts "made it"
          #return person["name"]
          count += 1
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |s, people|
    people.each do |person|
      person.each do |key,value|
        if key == "hometown" && value == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0.0
  count = 0
  data.each do |s, people|
    if season == s
      people.each do |person|
        person.each do |key,value|
          if key == "age"
            sum += person["age"].to_i
            count += 1
          end
        end
      end
    end
  end
  return (sum/count).round 
end
