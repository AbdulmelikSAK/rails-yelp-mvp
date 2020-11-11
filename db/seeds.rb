# frozen_string_literal: true

puts 'Destruction des restaurants et reviews'

Restaurant.destroy_all

puts 'Construction de restaurants et de reviews'

(0..4).to_a.each do |i|
  restaurant = Restaurant.new(
    name: "restaurant#{i}",
    address: "#{i**10} rue des capucins",
    category: Restaurant::CATEGORY[i]
  )
  restaurant.save
end

Restaurant.all.each do |res|
  (0..5).to_a.each do |i|
    review = Review.new(
      rating: i,
      content: "je met une note de #{i}"
    )
    review.restaurant = res
    review.save
  end
end

puts 'Fin des seeds'
