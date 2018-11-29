class Game < ApplicationRecord
  has_many :boxscores
  has_many :players, through: :boxscores
  validates :date, presence: true, uniqueness: true
  validates :opponent, presence: true, length: { is: 3 }

  def readable_datetime
    "#{self.date.strftime('%B %d, %Y')}"
  end

  def game_info
    "#{self.opponent} - #{self.readable_datetime}"
  end

end
