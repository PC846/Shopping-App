require 'csv'

CSV.foreach(Rails.root.join("db/seeds_data/dog.csv"), headers: true) do |row|
	Product.find_or_create_by(title: row[0], price: row[1], description: row[2], image_url: row[3])
end