# Users
UserClassification.create!(
  user_classification_name: "通常会員",
)

User.create!(
  password: "1234abcd",
  last_name: "一郎",
  first_name: "テスト",
  zipcode: "1234567",
  prefecture: "広島県",
  municipality: "中区幟町",
  address: "1-11",
  apartments: "幟町マンション　101号室",
  email: "1234abcd@example.com",
  phone_number: "0123456789",
  user_classification_id: 1,
  company_name: "一郎カンパニー",
  delete_flag: false,
)
User.create!(
  password: "abcd1234",
  last_name: "二郎",
  first_name: "テスト",
  zipcode: "9876543",
  prefecture: "東京都",
  municipality: "台東区",
  address: "1-11",
  apartments: "台東マンション　102号室",
  email: "abcd5678@example.com",
  phone_number: "987654321",
  user_classification_id: 1,
  company_name: "二郎カンパニー",
  delete_flag: false,
)

# Products
["専門書", "小説"].each {|category|
  Category.create!(category_name: category)
}

["販売中", "欠品中"].each {|status|
  SaleStatus.create!(sale_status_name: status)
}

["新品", "中古"].each {|status|
  ProductStatus.create!(product_status_name: status)
}

Product.create!(
  product_name: "商品１",
  category_id: 1,
  price: 10000,
  description: "人気商品１",
  sale_status_id: 1,
  product_status_id: 1,
  regist_date: "2021/9/1",
  user_id: 1,
  delete_flag: false,
)
Product.create!(
  product_name: "商品２",
  category_id: 2,
  price: 20000,
  description: "人気商品2",
  sale_status_id: 2,
  product_status_id: 2,
  regist_date: "2021/9/2",
  user_id: 1,
  delete_flag: false,
)
Product.create!(
  product_name: "商品３",
  category_id: 1,
  price: "30000",
  description: "人気商品３",
  sale_status_id: 1,
  product_status_id: 1,
  regist_date: "2021/9/3",
  user_id: 2,
  delete_flag: false,
)
Product.create!(
  product_name: "商品４",
  category_id: 2,
  price: 40000,
  description: "人気商品４",
  sale_status_id: 2,
  product_status_id: 2,
  regist_date: "2021/9/4",
  user_id: 2,
  delete_flag: false,
)

# Purchases
Purchase.create!(
  purchase_price: 1000,
  purchase_quantity: 1,
  purchase_company: "探求学園１",
  order_date: "2021/10/1",
  purchase_date: "2021/11/1",
  product_id: 1,
)
Purchase.create!(
  purchase_price: 2000,
  purchase_quantity: 2,
  purchase_company: "探求学園2",
  order_date: "2021/10/2",
  purchase_date: "2021/11/2",
  product_id: 2,
)
Purchase.create!(
  purchase_price: 3000,
  purchase_quantity: 3,
  purchase_company: "探求学園3",
  order_date: "2021/10/3",
  purchase_date: "2021/11/3",
  product_id: 3,
)
Purchase.create!(
  purchase_price: 4000,
  purchase_quantity: 4,
  purchase_company: "探求学園４",
  order_date: "2021/10/4",
  purchase_date: "2021/11/4",
  product_id: 4,
)

#Orders
Order.create!(
  order_date: Time.zone.parse('2021-10-01 12:32:42'),
  order_number: "1",
  user_id: 1
)

Order.create!(
  order_date: Time.zone.parse('2021-10-02 10:25:32'),
  order_number: "2",
  user_id: 2
)

ShipmentStatus.create!(
  shipment_status_name: "発送中"
)

ShipmentStatus.create!(
  shipment_status_name: "準備中"
)

OrderDetail.create!(
   order_detail_number: "1",
   order_quantity: 1,
   shipment_date: Time.zone.parse('2021-10-02 11:22:33'),
   product_id: 1,
   order_id: 1,
   shipment_status_id: 1
)

OrderDetail.create!(
     order_detail_number: "2",
     order_quantity: 1,
     shipment_date: Time.zone.parse('2021-10-02 11:22:33'),
     product_id: 2,
     order_id: 1,
     shipment_status_id: 1
)


OrderDetail.create!(
     order_detail_number: "3",
     order_quantity: 1,
     shipment_date: Time.zone.parse('2021-10-02 11:22:33'),
     product_id: 3,
     order_id: 1,
     shipment_status_id: 1
)

OrderDetail.create!(
   order_detail_number: "4",
   order_quantity: 1,
   shipment_date: Time.zone.parse('2021-10-02 11:22:33'),
   product_id: 4,
   order_id: 1,
   shipment_status_id: 1
)

OrderDetail.create!(
   order_detail_number: "5",
   order_quantity: 1,
   shipment_date: Time.zone.parse('2021-10-03 12:22:33'),
   product_id: 1,
   order_id: 2,
   shipment_status_id: 2
)
OrderDetail.create!(
   order_detail_number: "6",
   order_quantity: 1,
   shipment_date: Time.zone.parse('2021-10-03 12:22:33'),
   product_id: 2,
   order_id: 2,
   shipment_status_id: 2
)

OrderDetail.create!(
     order_detail_number: "7",
     order_quantity: 1,
     shipment_date: Time.zone.parse('2021-10-03 12:22:33'),
     product_id: 3,
     order_id: 2,
     shipment_status_id: 2
)

OrderDetail.create!(
   order_detail_number: "8",
   order_quantity: 1,
   shipment_date: Time.zone.parse('2021-10-03 12:22:33'),
   product_id: 4,
   order_id: 2,
   shipment_status_id: 2
)
