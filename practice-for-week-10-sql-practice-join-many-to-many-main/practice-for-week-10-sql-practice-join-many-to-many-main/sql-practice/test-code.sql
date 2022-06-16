SELECT musicians.first_name, instruments.type
FROM musicians
JOIN instruments
JOIN musician_instruments
ON (musician_instruments.instrument_id = instruments.id)
AND (musician_instruments.musician_id = musicians.id);

SELECT musicians.first_name, musicians.last_name
FROM musician_instruments
JOIN instruments
  ON (instrument_id = instruments.id)
JOIN musicians
  ON (musician_id = musician.id)
WHERE instruments.type = 'piano';
