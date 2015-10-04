# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require "spreadsheet"

book = Spreadsheet.open './posts_data.xls'

sheet1 = book.worksheet 0

# Sanitize.document(sheet1,
# :allow_doctype => true,
# :elements => ['html']
# )





sheet1.each do |row|
  post_info = {}
    post_info[:date] = row[4]
    post_info[:user_id] = row[3]
    post_info[:body] = row[7]
    post_info[:variety] = row[9]

    Post.create(post_info)
end
