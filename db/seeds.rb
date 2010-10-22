# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

regions = { "Tôhoku" => %w{Hokkaidô Akita Aomori Fukushima Iwate Miyagi Yamagata}, "Kantô" => %w{Chiba Gunma Ibaraki Kanagawa Saitama Tochigi Tôkyô}, "Chûbu" => %w{Aichi Fukui Gifu Ishikawa Niigata Nagano Shizuoka Toyama Yamanashi}, "Kinki" => %w{Shiga Mie Kyôto Nara Ôsaka Wakayama Hyôgo}, "Chûgoku" => %w{Hiroshima Okayama Shimane Tottori Yamaguchi}, "Shikoku" => %w{Ehime Kagawa Kôchi Tokushima}, "Kyûshû" => %w{Fukuoka Kagoshima Kumamoto Miyazaki Nagasaki Ôita Saga Okinawa} }

regions.each do |name,prefectures|
  region = Region.create(:name => name)
  prefectures.each do |prefecture|
    region.prefectures.create(:name => prefecture)
  end
end

