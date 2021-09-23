# Peroducts
Product.create!(
  product_name: "商品１",
  category_id: 1,
  price: "10000",
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
  purchase_price: "1000",
  purchase_quanitity: "1",
  purchase_company: "探求学園１",
  order_date: "2021/10/1",
  purchase_date: "2021/11/1",
  product_id: 1
)
Purchase.create!(
  purchase_price: "2000",
  purchase_quanitity: "2",
  purchase_company: "探求学園2",
  order_date: "2021/10/2",
  purchase_date: "2021/11/2",
  product_id: 2
)
Purchase.create!(
  purchase_price: "3000",
  purchase_quanitity: "3",
  purchase_company: "探求学園3",
  order_date: "2021/10/3",
  purchase_date: "2021/11/3",
  product_id: 3
)
Purchase.create!(
  purchase_price: "4000",
  purchase_quanitity: "4",
  purchase_company: "探求学園４",
  order_date: "2021/10/4",
  purchase_date: "2021/11/4",
  product_id: 4
)

["専門書","小説"].each {|category|
  Category.craete!(category_name: category)
}

["販売中","欠品中"].each {|status|
  SaleStatus.craete!(sale_status: status)
}

["新品","中古"].each {|status|
  ProductStatus.craete!(category_name: status)
}
