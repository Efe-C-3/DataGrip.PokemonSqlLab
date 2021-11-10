SELECT p.name as pokemon_name, t.name as type_name FROM pokemons p JOIN types t ON p.primary_type = t.id;
"""next"""
SELECT p.name as pokemon_name, t.name AS secondary_type FROM pokemon p JOIN types t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';
"""next"""
SELECT p.name FROM pokemons p JOIN pokemon_trainer pt ON pt.pokemon_id = p.id WHERE trainerID = 303;
"""next"""
SELECT COUNT(*) as poison_count from pokemons p JOIN types t on p.secondary_type = t.id WHERE t.name = 'Poison';
"""next"""
SELECT t.name, COUNT(*) number_of_types FROM types t JOIN pokemons p ON t.id = p.primary_type GROUP BY t.name;
"""next"""
SELECT t.trainerId, t.trainername, COUNT(*) as lvl_one_hundred_count FROM pokemon_trainer JOIN trainers t ON t.trainerID = pokemon_trainer.trainerID WHERE pokeleve = 100 GROUP BY pokemon_trainer.trainerID ORDER BY lvl_one_hundred_count desc:
"""next"""
SELECT COUNT(*) as total_pokemon_with_one_trainer FROM (SELECT pt.pokemon_id, COUNT(pt.trainerId) as trainer_count from pokemon_trainer pt JOIN pokemons p ON pt.pokemon_id = p.id GROUP BY pt.pokemon_id HAVING trainer_count =1) as pokemon_to_trainer_count;
