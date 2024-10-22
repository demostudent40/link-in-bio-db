desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  puts "Creating sample data..."

  puts "Clearing existing data first"
  Link.destroy_all

  link_1 = Link.new
  link_1.url = "https://practicaltypography.com/typography-in-ten-minutes.html"
  link_1.url_text = "Typography in ten minutes — Matthew Butterick"
  link_1.image = "/thumbnails/typography.jpg"
  link_1.image_alt_text = "Typography image"
  link_1.save

  puts "Saved first link"

  link_2 = Link.new
  link_2.url = "http://paulgraham.com/startupideas.html"
  link_2.url_text = "How to Get Startup Ideas"
  link_2.image = "/thumbnails/yc.png"
  link_2.image_alt_text = "Y Combinator logo"
  link_2.save

  puts "Saved second link"

  link_3 = Link.new
  link_3.url = "https://www.newyorker.com/magazine/2007/12/10/the-checklist/"
  link_3.url_text = "A Life-Saving Checklist"
  link_3.image = "/thumbnails/checklist.webp"
  link_3.image_alt_text = "Checklist"
  link_3.save

  puts "Saved third link"

  puts "Done!"
end
