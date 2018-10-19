def get_name(person)
  return person[:name]
end

def get_fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person,food)
  for food in person[:favourites]
    if food == [:snacks]
      return true
    else
      return false
    end
  end
end

def add_new_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_cash(people)
  total_cash = 0
  for person in people
    total_cash += person[:monies]
  end
  return total_cash
end

def mooching (lender, lendee, loan)
  lender[:monies] -= loan
  lendee[:monies] += loan
end

def collect_food(people)
  collected_food = []
  for person in people
    collected_food += person[:favourites][:snacks].push
  end
  return collected_food
end

def forever_alone(people)
  friendless_people = []
  for person in people
    if person[:friends].length == 0
      friendless_people.push(person)
    end
  end
  return friendless_people
end
