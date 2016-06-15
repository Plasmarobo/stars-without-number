class Faction < ApplicationRecord
  belongs_to :planet, forigen_key: :homeworld_id
  belongs_to :goal
  belongs_to :user
  belongs_to :game

  

  def max_hp
    amount = 4
    amount += self.xp_cost(self.force)
    amount += self.xp_cost(self.cunning)
    amount += self.xp_cost(self.wealth)
    return amount
  end


  def xp_cost(rank)
    cost = (rank-1)*2    
    if (rank > 4)
      cost += 1
    if (rank > 5)
      cost += 1
    if (rank > 6)
      cost += 2
    if (rank > 7)
      cost += 2
    return cost
  end

end
