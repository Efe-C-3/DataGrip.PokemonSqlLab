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
SELECT trainerID, COUNT(pokemon_id) num_pokemon FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY  trainerID ORDER BY COUNT(pokemon_id);
"""next"""
SELECT p.name FROM pokemon_trainer pt JOIN pokemons p ON p.id = pt.pokemon_id GROUP BY pokemon_id HAVING COUNT(trainerID) = 1;