class Boxscore < ApplicationRecord
  belongs_to :player
  belongs_to :game
  validates :points, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :rebounds, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :assists, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :already_has_game?

  def game_info(game)
    "#{self.game.opponent} - #{self.game.readable_datetime}"
  end

  def already_has_game?
    box = Boxscore.find_by(player_id: self.player.id, game_id: self.game.id)
    if box
      errors.add(:player, "already has a boxscore for this game")
    end
  end

end
