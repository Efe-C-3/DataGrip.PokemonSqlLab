SELECT * FROM Pokemon.types;
SELECT * FROM pokemons where id = 45;
SELECT COUNT(*) as pokemon_count FROM pokemons;
SELECT COUNT(*) as type_count FROM types;
SELECT COUNT(*) as its_secondary FROM pokemons where secondary_type IS NOT NULL;