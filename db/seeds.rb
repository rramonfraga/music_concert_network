(1..25).each do |index|
  Concert.create( band: "Band #{index}", 
    venue: "Street #{index}",
    city: "Madrid",
    date: (Time.current + (index-1).day),
    price: index,
    description: "Bla bla bla #{index}" )
end
