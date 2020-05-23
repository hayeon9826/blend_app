# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.production?
#
require 'faker'

def create_products
  3.times.each do |f|
    Product.create(
      title: "제품 제목#{f}",
      price: "10000",
      desc: "HireChance 의 모든 원두 제품은 로스팅 후 7일 이내에 판매합니다.<br>
      아래와 같은 경우 교환/반품/환불이 불가능하오니 주문 시 참고해 주시기 바랍니다.<br>
      – 고객님의 단순 변심에 의한 경우<br>
      – 원두 제품을 분쇄해 주문 하셨을 경우<br>
      – 제품이 개봉 되었거나 포장이 훼손되었을 경우",
      short_desc: "Esperanza는 Quindio 지역의 Insula 농장에서 생산 된 맛있는 원두 커피입니다. 이 커피는 J. Hernandez에 의해 전문적으로 재배되었으며 컵핑 점수는 85.75입니다. 이 제품은 매주 또는 격주로 배달되는 1, 3 또는 6 개월의 구독으로 10 개의 '원두 커피 분말'로 구성됩니다. ‘원두’와‘드립백'을 구독 할 수도 있습니다. 이 커피 판매의 25 %가 난민 경력 개발 교육에 직접 기부됩니다.",
      link: "www.hirechance.com",
      delivery: "HireChance 의 모든 원두 제품은 로스팅 후 7일 이내에 판매합니다.<br>
      아래와 같은 경우 교환/반품/환불이 불가능하오니 주문 시 참고해 주시기 바랍니다.<br>
      – 고객님의 단순 변심에 의한 경우<br>
      – 원두 제품을 분쇄해 주문 하셨을 경우<br>
      – 제품이 개봉 되었거나 포장이 훼손되었을 경우",
      image: "/images/coffee_sample.png",
      sub_title: "드립백 커피 정기구독"
    )
  end
  puts "dd"
end

def generate_items
  10.times.each do
    Item.create(
      user_id: User.all.sample.id,
      category_id: Category.all.sample.id,
      title: "#{Faker::Name.last_name}#{Faker::Name.first_name}",
      description: get_description,
      price: rand(10000..100000),
      remote_image_url: get_image_url("person")
    )
    puts "dd"
  end
end

def create_users
  10.times.each do
    User.create(
      email: "#{Faker::Name.last_name}@blend.com",
      name: "#{Faker::Name.last_name}#{Faker::Name.first_name}",
      user_type: 1,
      password: "blend2020",
      donation_total: rand(10..400)
    )
  end
end

create_users



# create_products
