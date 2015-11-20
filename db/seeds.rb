(1..25).each do |index|
  Concert.create( band: "Band #{index}", 
    venue: "Street #{index}",
    city: "Madrid",
    date: (Time.current + (index-1).day),
    price: index,
    description: "Bla bla bla #{index}" )
end

(1..50).each do |index|
  random = Random.new.rand(26)
  Comment.create(concert_id: random,
    description: "Blo blo blo #{index}. Bla bal bla #{index}",
    user: "User #{random}"
    ) 
end
