kyrie = Player.create(name: "Kyrie Irving", age: 25, team: "BOS", jersey: 11)
tatum = Player.create(name: "Jayson Tatum", age: 20, team: "BOS", jersey: 0)
horford = Player.create(name: "Al Horford", age: 32, team: "BOS", jersey: 42)

home_vs_brk = Game.create(date: DateTime.new(2018, 11, 25, 19, 30, 0), opponent: "BRK", home: true)
away_vs_lal = Game.create(date: DateTime.new(2018, 11, 27, 22, 00, 0), opponent: "LAL", home: false)

kyrie_a_lal = Boxscore.create(points: 32, rebounds: 4, assists: 8, player_id: 1, game_id: 1)
kyrie_h_brk = Boxscore.create(points: 23, rebounds: 2, assists: 11, player_id: 1, game_id: 2)
tatum_a_lal = Boxscore.create(points: 17, rebounds: 9, assists: 3, player_id: 2, game_id: 1)
tatum_h_brk = Boxscore.create(points: 26, rebounds: 12, assists: 4, player_id: 2, game_id: 2)
horford_a_lal = Boxscore.create(points: 11, rebounds: 14, assists: 8, player_id: 3, game_id: 1)
horford_h_brk = Boxscore.create(points: 7, rebounds: 10, assists: 11, player_id: 3, game_id: 2)
