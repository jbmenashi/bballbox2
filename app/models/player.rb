class Player < ApplicationRecord
  has_many :boxscores
  has_many :players, through: :boxscores
  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :team, presence: true, length: { is: 3 }
  validates :jersey, presence: true, numericality: { only_integer: true }
  validate :unique_jersey

  def unique_jersey
    other_player = Player.find_by(team: self.team, jersey: self.jersey)
    if other_player
      errors.add(:jersey, "cannot have same jersey number as teammate")
    end
  end

  def points_per_game
    points_total = 0
    self.boxscores.each do |boxscore|
      points_total += boxscore.points
    end
    average = points_total.to_f / self.boxscores.length.to_f
    average.round(1)
  end

  def rebounds_per_game
    rebounds_total = 0
    self.boxscores.each do |boxscore|
      rebounds_total += boxscore.rebounds
    end
    average = rebounds_total.to_f / self.boxscores.length.to_f
    average.round(1)
  end

  def assists_per_game
    assists_total = 0
    self.boxscores.each do |boxscore|
      assists_total += boxscore.assists
    end
    average = assists_total.to_f / self.boxscores.length.to_f
    average.round(1)
  end

end
