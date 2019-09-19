Artist.destroy_all
Instrument.destroy_all
Artist.reset_pk_sequence
Instrument.reset_pk_sequence

10.times do
  Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
end

5.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name)
end

Play.create(artist_id: 1, instrument_id: 1)
Play.create(artist_id: 2, instrument_id: 2)
Play.create(artist_id: 3, instrument_id: 3)
Play.create(artist_id: 4, instrument_id: 4)
Play.create(artist_id: 5, instrument_id: 5)
Play.create(artist_id: 6, instrument_id: 1)
Play.create(artist_id: 7, instrument_id: 2)
Play.create(artist_id: 8, instrument_id: 3)
Play.create(artist_id: 9, instrument_id: 4)
Play.create(artist_id: 10, instrument_id: 5)
Play.create(artist_id: 1, instrument_id: 5)
puts "File has been seeded! 🍀"
