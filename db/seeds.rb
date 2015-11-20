def create_comments(concert)
  random = Random.new.rand(26)
  random.times do |index|
    concert.comments.create( user: "User #{random}",
    description: "Blo blo blo #{index}. Bla bal bla #{index}"
    ) 
  end
end

(1..25).each do |index|
  concert = Concert.new( band: "Band #{index}", 
    venue: "Street #{index}",
    city: "Madrid",
    date: (Time.current + (index-1).day),
    price: index,
    description: "Bla bla bla #{index}")
  concert.save
  create_comments(concert)
end



