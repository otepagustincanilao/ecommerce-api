alias Ecommerce.Seeders.{
  Brand,
  Category,
  Customer,
  Order,
  Product,
  Shipper
}

IO.puts "Seeding Category"

category_data = [
  {
    code: "CAT-MF"
    name: "Men's Fashion"
    description: "Men's Fashion, that includes clothing, shoes, underwear, belts, bags etc."
  },
  {
    code: "CAT-WF"
    name: "Women's Fashion"
    description: "Women's Fashion, that includes clothing, shoes, underwear, belts, bags etc."
  },
  {
    code: "CAT-ED"
    name: "Electronic Devices"
    description: "That includes laptop, mobile phone, tablets, pre-built desktop, cctv, gaming consoles etc."
  },
  {
    code: "CAT-EA"
    name: "Electronic Accessories"
    description: "That includes computer components, mobile accessories, printers, computer accessories etc."
  },
  {
    code: "CAT-TA"
    name: "TV and Appliances"
    description: "That includes Televisions, refrigerators, airconditioner, kitchen appliances etc."
  },
  {
    code: "CAT-HB"
    name: "Health and Beauty"
    description: "That includes make-up, haircare, skincare, food supplements etc."
  },
]

Category.seed(category_data)
