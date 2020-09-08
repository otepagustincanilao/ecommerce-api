alias Ecommerce.Seeders.{
  Brand,
  Category,
  SecondaryCategory,
  TertiaryCategory,
  Customer,
  Order,
  Product,
  Shipper
}

IO.puts "Seeding Category"

category_data = [
  #1
  %{
    code: "CAT-MF",
    name: "Men's Fashion",
    description: "Men's Fashion, that includes clothing, shoes, underwear, belts, bags etc."
  },

  #2
  %{
    code: "CAT-WF",
    name: "Women's Fashion",
    description: "Women's Fashion, that includes clothing, shoes, underwear, belts, bags etc."
  },

  #3
  %{
    code: "CAT-ED",
    name: "Electronic Devices",
    description: "That includes laptop, mobile phone, tablets, pre-built desktop, cctv, gaming consoles etc."
  },

  #4
  %{
    code: "CAT-EAP",
    name: "Electronic Accessories and Pheriperals",
    description: "That includes computer components, mobile accessories, printers, computer accessories etc."
  },

  #5
  %{
    code: "CAT-TA",
    name: "TV and Home Appliances",
    description: "That includes Televisions, refrigerators, airconditioner, kitchen appliances etc."
  },

  #6
  %{
    code: "CAT-HB",
    name: "Health and Beauty",
    description: "That includes make-up, haircare, skincare, food supplements etc."
  },

]

[c1, c2, c3, c4, c5, c6] = Category.seed(category_data)

secondary_category_data = [
    ## men's
    #1
    %{
      category_code: c1.code,
      name: "Men's Clothing",
      description: "That includes T-Shirts, Shirts, Polo-Shirts, Jacket, Jeans, Pants, Shorts etc."
    },

    #2
    %{
      category_code: c1.code,
      name: "Men's Shoes",
      description: "That includes Boots, Sneakers, Formal Shoes, Shoe Accessories etc."
    },

    #3
    %{
      category_code: c1.code,
      name: "Accessories",
      description: "That includes Belt, Bow-Ties, Ties, Socks etc."
    },

    ## women's 
    #4
    %{
      category_code: c2.code,
      name: "Women's Clothing",
      description: "That includes Dresses, Tops, Skirts, Jeans, Pants, Leggings etc."
    },

    #5
    %{
      category_code: c2.code,
      name: "Women's Shoes",
      description: "That includes Boots, Sneakers, Sandals, Flat Shoes, Heels, Booots etc."
    },

    #6
    %{
      category_code: c2.code,
      name: "Accessories",
      description: "That includes Belt, Scarves, Ties, Socks and Tight etc."
    },

    # Electronic devices
    #7
    %{
      category_code: c3.code,
      name: "Mobile Phone",
      description: ""
    },

    #8
    %{
      category_code: c3.code,
      name: "Tablets",
      description: ""
    },

    #9
    %{
      category_code: c3.code,
      name: "Laptop",
      description: "That includes Office laptop, Gaming Laptop, 2 in 1 Laptop."
    },

    #10
    %{
      category_code: c3.code,
      name: "Desktop",
      description: "That includes Prebuilt Computer set etc."
    },

    #11
    %{
      category_code: c3.code,
      name: "Gaming Consoles",
      description: "That includes PS4, Xbox, Nintedo switch etc."
    },

    #12
    %{
      category_code: c3.code,
      name: "Security Cameras",
      description: "That includes CCTV cameras, Dummy Cameras etc."
    },

    # Electronic Accessories and Pheriperals
    #13
    %{
      category_code: c4.code,
      name: "Mobile Accessories",
      description: "That includes Charger, Screen Protector, PowerBank, Phone Cases, Selfie Stick etc."
    },

    #14
    %{
      category_code: c4.code,
      name: "Computer Pheriperals",
      description: "That includes Keyboard, Mouse, Adapters & Cable, Mousepad etc."
    },

    #15
    %{
      category_code: c4.code,
      name: "Camera Accessories",
      description: "That includes Lenses, Tripod & Monopad, Lighting and Studio equipment etc."
    },

    #16
    %{
      category_code: c4.code,
      name: "Data Storage",
      description: "That includes SSD, HDD, External HDD, External SSD, Memory Card, OTG drives, Flashdrives etc."
    },

    #17
    %{
      category_code: c4.code,
      name: "Printers",
      description: "That includes 3d Printing, Fax Machine, Printer Cutter, Ink, Scanner etc."
    },

    #18
    %{
      category_code: c4.code,
      name: "Computer Components",
      description: "That includes GPU, Processor, RAM, Computer Case, Power supply unit, Fans etc."
    },

    #19
    %{
      category_code: c4.code,
      name: "Network Components",
      description: "That includes Router, Switches, Range Extenders etc."
    },

    #20
    %{
      category_code: c4.code,
      name: "Console Accessories",
      description: "That includes consoles controller, bags, chargers etc."
    },

    #21
    %{
      category_code: c4.code,
      name: "Tablet Accessories",
      description: "That includes Cases and Covers, Keyboard and stylus."
    },

    ## TV and Appliaces
    #22
    %{
      category_code: c5.code,
      name: "TV and Video Devices",
      description: "That includes LED TV, Smart Tv, Projectors, DVD Player etc."
    },

    #23
    %{
      category_code: c5.code,
      name: "Cooling and Air Treatment",
      description: "That includes Air Conditioner, Electric Fan, Air Purifier, Air Cooler, Humidifier etc."
    },

    #24
    %{
      category_code: c5.code,
      name: "Large Appliances and Kitchen",
      description: "That includes Refrigerators, Freezer, Water Dispenser, Microwave, Oven, Gas stove etc."
    },

    #25
    %{
      category_code: c5.code,
      name: "Floor care",
      description: "That includes Vacuum cleaners, Floor Polisher, Electric Broom etc."
    },

    ## Health and Beauty
    #26
    %{
      category_code: c6.code,
      name: "Make-up",
      description: "That includes Cosmetics"
    },

    #27
    %{
      category_code: c6.code,
      name: "Skin care",
      description: "That includes Facial Cleaners, Facial Moisturizer, Face mask and Packs, Sun screen etc."
    },

    #28
    %{
      category_code: c6.code,
      name: "Hair care",
      description: "That includes Shampoo, Conditioner, Hair Styling, Hair Treatment, Hair Coloring etc."
    },

    #29
    %{
      category_code: c6.code,
      name: "Bath and Body",
      description: "That includes Bar Soap, Body Wash, Body Scrubs, Body Moisturizer, Hand Care etc."
    },

    #30
    %{
      category_code: c6.code,
      name: "Fragrances",
      description: "Fragrances for Women, Men, Unisex."
    },

    #31
    %{
      category_code: c6.code,
      name: "Food supplements",
      description: "That includes Multivitamins, Immunity, Whitening, Skin Nourishment etc."
    },

    #32
    %{
      category_code: c6.code,
      name: "Medical Supplies",
      description: "That includes First Aid Supplies, Nebulizers, Ointment and Creams, Health Accessories etc."
    },

]

[
  sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9, sc10,
  sc11, sc12, sc13, sc14, sc15, sc16, sc17, sc18, sc19, sc20, 
  sc21, sc22, sc23, sc24, sc25, sc26, sc27, sc28, sc29, sc30, 
  sc31, sc32
] = SecondaryCategory.seed(secondary_category_data)

tertiary_category_data = [
  %{
    secondary_category_id: sc1.id,
    name: "T-Shirts",
    description: ""
  },
  %{
    secondary_category_id: sc1.id,
    name: "Shirts",
    description: ""
  },
  %{
    secondary_category_id: sc1.id,
    name: "Polo-Shirts",
    description: ""
  },
  %{
    secondary_category_id: sc1.id,
    name: "Jacket",
    description: ""
  },
  %{
    secondary_category_id: sc1.id,
    name: "Jeans",
    description: ""
  },
  %{
    secondary_category_id: sc1.id,
    name: "Pants",
    description: ""
  },
  %{
    secondary_category_id: sc1.id,
    name: "Shorts",
    description: ""
  },

  %{
    secondary_category_id: sc2.id,
    name: "Boots",
    description: ""
  },
  %{
    secondary_category_id: sc2.id,
    name: "Sneakers",
    description: ""
  },
  %{
    secondary_category_id: sc2.id,
    name: "Formal Shoes",
    description: ""
  },
  %{
    secondary_category_id: sc2.id,
    name: "Shoe Accessories",
    description: ""
  },

  %{
    secondary_category_id: sc3.id,
    name: "Belt",
    description: ""
  },
  %{
    secondary_category_id: sc3.id,
    name: "Bow-Ties",
    description: ""
  },
  %{
    secondary_category_id: sc3.id,
    name: "Ties",
    description: ""
  },
  %{
    secondary_category_id: sc3.id,
    name: "Socks",
    description: ""
  },

  %{
    secondary_category_id: sc4.id,
    name: "Dresses",
    description: ""
  },
  %{
    secondary_category_id: sc4.id,
    name: "Tops",
    description: ""
  },
  %{
    secondary_category_id: sc4.id,
    name: "Skirts",
    description: ""
  },
  %{
    secondary_category_id: sc4.id,
    name: "Jeans",
    description: ""
  },
  %{
    secondary_category_id: sc4.id,
    name: "Pants",
    description: ""
  },
  %{
    secondary_category_id: sc4.id,
    name: "Leggings",
    description: ""
  },

  %{
    secondary_category_id: sc5.id,
    name: "Boots",
    description: ""
  },
  %{
    secondary_category_id: sc5.id,
    name: "Sneakers",
    description: ""
  },
  %{
    secondary_category_id: sc5.id,
    name: "Sandals",
    description: ""
  },
  %{
    secondary_category_id: sc5.id,
    name: "Flat Shoes",
    description: ""
  },
  %{
    secondary_category_id: sc5.id,
    name: "Heels",
    description: ""
  },
  %{
    secondary_category_id: sc5.id,
    name: "Booots",
    description: ""
  },

  %{
    secondary_category_id: sc6.id,
    name: "Belt",
    description: ""
  },
  %{
    secondary_category_id: sc6.id,
    name: "Scarves",
    description: ""
  },
  %{
    secondary_category_id: sc6.id,
    name: "Ties",
    description: ""
  },
  %{
    secondary_category_id: sc6.id,
    name: "Socks and Tight",
    description: ""
  },

  %{
    secondary_category_id: sc9.id,
    name: "Office Laptop",
    description: ""
  },
  %{
    secondary_category_id: sc9.id,
    name: "Gaming Laptop",
    description: ""
  },
  %{
    secondary_category_id: sc9.id,
    name: "2 in 1 Laptop",
    description: ""
  },

  %{
    secondary_category_id: sc10.id,
    name: "Prebuilt Computer",
    description: ""
  },

  %{
    secondary_category_id: sc11.id,
    name: "PS4",
    description: ""
  },
  %{
    secondary_category_id: sc11.id,
    name: "Xbox",
    description: ""
  },
  %{
    secondary_category_id: sc11.id,
    name: "Nintedo switch",
    description: ""
  },

  %{
    secondary_category_id: sc11.id,
    name: "PS4",
    description: ""
  },
  %{
    secondary_category_id: sc11.id,
    name: "Xbox",
    description: ""
  },
  %{
    secondary_category_id: sc11.id,
    name: "Nintedo switch",
    description: ""
  },

  %{
    secondary_category_id: sc12.id,
    name: "CCTV camera",
    description: ""
  },
  %{
    secondary_category_id: sc12.id,
    name: "Dummy camera",
    description: ""
  },

  %{
    secondary_category_id: sc13.id,
    name: "Screen Protector",
    description: ""
  },
  %{
    secondary_category_id: sc13.id,
    name: "Charger",
    description: ""
  },
  %{
    secondary_category_id: sc13.id,
    name: "PowerBank",
    description: ""
  },
  %{
    secondary_category_id: sc13.id,
    name: "Phone Case",
    description: ""
  },
  %{
    secondary_category_id: sc13.id,
    name: "Selfie Stick",
    description: ""
  },

  %{
    secondary_category_id: sc14.id,
    name: "Keyboard",
    description: ""
  },
  %{
    secondary_category_id: sc14.id,
    name: "Mouse",
    description: ""
  },
  %{
    secondary_category_id: sc14.id,
    name: "Adapters & Cable",
    description: ""
  },
  %{
    secondary_category_id: sc14.id,
    name: "Mouse Pad",
    description: ""
  },

  %{
    secondary_category_id: sc15.id,
    name: "Lenses",
    description: ""
  },
  %{
    secondary_category_id: sc15.id,
    name: "Tripod & Monopad",
    description: ""
  },
  %{
    secondary_category_id: sc15.id,
    name: "Lighting and Studio equipment",
    description: ""
  },

  %{
    secondary_category_id: sc16.id,
    name: "SSD",
    description: ""
  },
  %{
    secondary_category_id: sc16.id,
    name: "HDD",
    description: ""
  },
  %{
    secondary_category_id: sc16.id,
    name: "External HDD",
    description: ""
  },
  %{
    secondary_category_id: sc16.id,
    name: "External SSD",
    description: ""
  },
  %{
    secondary_category_id: sc16.id,
    name: "Memory Card",
    description: ""
  },
  %{
    secondary_category_id: sc16.id,
    name: "OTG drives",
    description: ""
  },
  %{
    secondary_category_id: sc16.id,
    name: "Flash Drives",
    description: ""
  },

  %{
    secondary_category_id: sc17.id,
    name: "3d Printing",
    description: ""
  },
  %{
    secondary_category_id: sc17.id,
    name: "Fax Machine",
    description: ""
  },
  %{
    secondary_category_id: sc17.id,
    name: "Printer Cutter",
    description: ""
  },
  %{
    secondary_category_id: sc17.id,
    name: "Ink",
    description: ""
  },
  %{
    secondary_category_id: sc17.id,
    name: "Scanner",
    description: ""
  },

  %{
    secondary_category_id: sc18.id,
    name: "GPU",
    description: ""
  },
  %{
    secondary_category_id: sc18.id,
    name: "Processor",
    description: ""
  },
  %{
    secondary_category_id: sc18.id,
    name: "RAM",
    description: ""
  },
  %{
    secondary_category_id: sc18.id,
    name: "Computer Case",
    description: ""
  },
  %{
    secondary_category_id: sc18.id,
    name: "Power Supply Unit",
    description: ""
  },
  %{
    secondary_category_id: sc18.id,
    name: "Computer Fans",
    description: ""
  },

  %{
    secondary_category_id: sc19.id,
    name: "Router",
    description: ""
  },
  %{
    secondary_category_id: sc19.id,
    name: "Switches",
    description: ""
  },
  %{
    secondary_category_id: sc19.id,
    name: "Range Extenders",
    description: ""
  },

  %{
    secondary_category_id: sc20.id,
    name: "Controllers",
    description: ""
  },
  %{
    secondary_category_id: sc20.id,
    name: "Bags",
    description: ""
  },
  %{
    secondary_category_id: sc20.id,
    name: "Charger",
    description: ""
  },

  %{
    secondary_category_id: sc21.id,
    name: "Cases and Covers",
    description: ""
  },
  %{
    secondary_category_id: sc21.id,
    name: "Keyboards",
    description: ""
  },
  %{
    secondary_category_id: sc21.id,
    name: "Stylus",
    description: ""
  },

  %{
    secondary_category_id: sc22.id,
    name: "LED TV",
    description: ""
  },
  %{
    secondary_category_id: sc22.id,
    name: "Smart TV",
    description: ""
  },
  %{
    secondary_category_id: sc22.id,
    name: "Projectors",
    description: ""
  },
  %{
    secondary_category_id: sc22.id,
    name: "DVD-Player",
    description: ""
  },

  %{
    secondary_category_id: sc23.id,
    name: "Air-Conditioner",
    description: ""
  },
  %{
    secondary_category_id: sc23.id,
    name: "Electric Fan",
    description: ""
  },
  %{
    secondary_category_id: sc23.id,
    name: "Air Purifier",
    description: ""
  },
  %{
    secondary_category_id: sc23.id,
    name: "Air Cooler",
    description: ""
  },
  %{
    secondary_category_id: sc23.id,
    name: "Humidifier",
    description: ""
  },

  %{
    secondary_category_id: sc24.id,
    name: "Refrigerator",
    description: ""
  },
  %{
    secondary_category_id: sc24.id,
    name: "Freezer",
    description: ""
  },
  %{
    secondary_category_id: sc24.id,
    name: "Water Dispenser",
    description: ""
  },
  %{
    secondary_category_id: sc24.id,
    name: "Microwave",
    description: ""
  },
  %{
    secondary_category_id: sc24.id,
    name: "Oven",
    description: ""
  },
  %{
    secondary_category_id: sc24.id,
    name: "Gas Stove",
    description: ""
  },

  %{
    secondary_category_id: sc25.id,
    name: "Vacuum Cleaner",
    description: ""
  },
  %{
    secondary_category_id: sc25.id,
    name: "Floor Polisher",
    description: ""
  },
  %{
    secondary_category_id: sc25.id,
    name: "Electric Broom",
    description: ""
  },

  %{
    secondary_category_id: sc26.id,
    name: "Lips",
    description: ""
  },
  %{
    secondary_category_id: sc26.id,
    name: "Eye",
    description: ""
  },
  %{
    secondary_category_id: sc26.id,
    name: "Eyebrow",
    description: ""
  },

  %{
    secondary_category_id: sc27.id,
    name: "Facial Cleaners",
    description: ""
  },
  %{
    secondary_category_id: sc27.id,
    name: "Facial Moisturizer",
    description: ""
  },
  %{
    secondary_category_id: sc27.id,
    name: "Face mask and Packs",
    description: ""
  },
  %{
    secondary_category_id: sc27.id,
    name: "Sun screen",
    description: ""
  },

  %{
    secondary_category_id: sc28.id,
    name: "Shampoo",
    description: ""
  },
  %{
    secondary_category_id: sc28.id,
    name: "Conditioner",
    description: ""
  },
  %{
    secondary_category_id: sc28.id,
    name: "Hair Styling",
    description: ""
  },
  %{
    secondary_category_id: sc28.id,
    name: "Hair Treatment",
    description: ""
  },
  %{
    secondary_category_id: sc28.id,
    name: "Hair Coloring",
    description: ""
  },

  %{
    secondary_category_id: sc29.id,
    name: "Bar Soap",
    description: ""
  },
  %{
    secondary_category_id: sc29.id,
    name: "Body Wash",
    description: ""
  },
  %{
    secondary_category_id: sc29.id,
    name: "Body Scrubs",
    description: ""
  },
  %{
    secondary_category_id: sc29.id,
    name: "Body Moisturizer",
    description: ""
  },
  %{
    secondary_category_id: sc29.id,
    name: "Hand Care",
    description: ""
  },

  %{
    secondary_category_id: sc30.id,
    name: "Men",
    description: ""
  },
  %{
    secondary_category_id: sc30.id,
    name: "Women",
    description: ""
  },
  %{
    secondary_category_id: sc30.id,
    name: "Unisex",
    description: ""
  },

  %{
    secondary_category_id: sc31.id,
    name: "Multivitamins",
    description: ""
  },
  %{
    secondary_category_id: sc31.id,
    name: "Immunity",
    description: ""
  },
  %{
    secondary_category_id: sc31.id,
    name: "Whitening",
    description: ""
  },
  %{
    secondary_category_id: sc31.id,
    name: "Skin Nourishment",
    description: ""
  },
 
  %{
    secondary_category_id: sc32.id,
    name: "First Aid Supply",
    description: ""
  },
  %{
    secondary_category_id: sc32.id,
    name: "Nebulizers",
    description: ""
  },
  %{
    secondary_category_id: sc32.id,
    name: "Ointment and Creams",
    description: ""
  },
  %{
    secondary_category_id: sc32.id,
    name: "Health Accessories",
    description: ""
  }

]

TertiaryCategory.seed(tertiary_category_data)

brand_data = [
  ## shoe brands
  %{
    code: "Nike",
    name: "Nike",
    description: "Nike, Inc. American company"
  },
  %{
    code: "ADIDAS",
    name: "Adidas",
    description: "Adidas, German company"
  },
  %{
    code: "AND1",
    name: "AND1",
    description: "AND1 is an American footwear and clothing company specializing in basketball shoes"
  },
  %{
    code: "SKS",
    name: "Sketchers",
    description: "Skechers USA, Inc. is a North American lifestyle and performance footwear company."
  },
  %{
    code: "RBK",
    name: "Reebok",
    description: "Reebok International Limited is a British-American footwear and apparel company founded in Bolton"
  },
  %{
    code: "wB",
    name: "World Balance",
    description: "World Balance is a filipino local brand."
  },
  %{
    code: "GIBI",
    name: "GIBI",
    description: "GIBI is a filipino local brand."
  },
  %{
    code: "FILA",
    name: "FILA",
    description: "is a sportswear manufacturer that designs shoes and apparel founded by Ettore and Giansevero Fila in 1911 in Biella."
  },
  %{
    code: "PUMA",
    name: "PUMA",
    description: "Puma SE, branded as Puma, is a German multinational corporation that designs and manufactures athletic and casual footwear, apparel and accessories, which is headquartered in Herzogenaurach, Bavaria, Germany."
  },
  %{
    code: "CNV",
    name: "Converse",
    description: "Converse is an American shoe company that designs, distributes, and licenses sneakers, skating shoes, lifestyle brand footwear, apparel, and accessories."
  },

  ## computer hardware and electronics company
  %{
    code: "MSI",
    name: "Micro-Star International",
    description: "Micro-Star International is a Taiwanese multinational information technology corporation headquartered in New Taipei City, Taiwan."
  },
  %{
    code: "ASUS",
    name: "AsusTek Computer Inc",
    description: "is a is a Taiwanese multinational computer and phone hardware and electronics company headquartered in Beitou District, Taipei, Taiwan."
  },
  %{
    code: "GIGABYTE",
    name: "Gigabyte Technology",
    description: "Gigabyte is a Taiwanese manufacturer and distributor of computer hardware."
  },
  %{
    code: "Intel",
    name: "Intel",
    description: "Intel Corporation is an American multinational corporation and technology company headquartered in Santa Clara, California, in Silicon Valley."
  },
  %{
    code: "NVIDIA",
    name: "Nvidia",
    description: "Nvidia Corporation is an American multinational technology company incorporated in Delaware and based in Santa Clara, California."
  },
  %{
    code: "EVGA",
    name: "EVGA Corporation",
    description: "EVGA Corporation is an American computer hardware company that produces Nvidia-GPU-based video cards as well as Intel-chipset-based motherboards."
  },
  %{
    code: "DELL",
    name: "DELL",
    description: "Dell is an American multinational computer technology company that develops, sells, repairs, and supports computers and related products and services."
  },
  %{
    code: "CORSAIR",
    name: "Corsair",
    description: "Corsair Gaming, Inc. (stylized as CORSAIR and commonly referred to as Corsair), formerly Corsair Components, Inc., is an American computer peripherals and hardware company headquartered in Fremont, California."
  },
  %{
    code: "NZXT",
    name: "NZXT",
    description: "NZXT is an American computer hardware manufacturer based in Los Angeles, California. The company is best known for being a major manufacturer of computer cases, components, and accessories for the PC gaming market."
  },
  %{
    code: "SEAGATE",
    name: "Seagate Technology",
    description: "Seagate Technology PLC (commonly referred to as Seagate) is an American data storage company."
  },
  %{
    code: "WD",
    name: "Western Digital",
    description: "Western Digital Corporation (abbreviated WDC, commonly known as simply Western Digital and WD) is an American computer hard disk drive manufacturer and data storage company."
  },
  %{
    code: "TOSHIBA",
    name: "Toshiba",
    description: "Toshiba Corporation is a Japanese multinational conglomerate headquartered in Minato, Tokyo."
  },
  %{
    code: "ACER",
    name: "Acer Inc.",
    description: "Acer Inc. is a Taiwanese multinational hardware and electronics corporation specializing in advanced electronics technology, headquartered in Xizhi, New Taipei City. Its products include desktop PCs, laptop PCs (clamshells, 2-in-1s, convertibles and Chromebooks), tablets, servers, storage devices, virtual reality devices, displays, smartphones and peripherals, as well as gaming PCs and accessories under its Predator brand."
  },
  %{
    code: "RAZER",
    name: "RAZER Inc.",
    description: "Razer Inc. is a global gaming hardware manufacturing company, esports and financial services provider established by Min-Liang Tan and Robert Krakoff. The company is currently headquartered in Irvine, California and Singapore."
  },
  %{
    code: "CM",
    name: "Cooler Master",
    description: "Cooler Master Co., Ltd. is a computer hardware manufacturer based in Taiwan."
  },
  %{
    code: "LOGITECH",
    name: "Logitech ",
    description: "Logitech International S.A. (/ˈlɒdʒɪtɛk/ LO-ji-tek; often shortened to Logi) is an American Swiss manufacturer of computer peripherals and software, with headquarters in Lausanne, Switzerland and Newark, California."
  },
  %{
    code: "STEELSERIES",
    name: "SteelSeries",
    description: "SteelSeries is a Danish manufacturer of gaming peripherals and accessories, including headsets, keyboards, mice, and gaming surfaces."
  },
  %{
    code: "SONY",
    name: "Sony",
    description: "Sony Corporation is a Japanese multinational conglomerate corporation headquartered in Kōnan, Minato, Tokyo."
  },
  %{
    code: "APPLE",
    name: "Apple Inc.",
    description: "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services."
  },
  %{
    code: "LG",
    name: "LG Electronics",
    description: "LG Electronics Inc. is a South Korean multinational electronics company headquartered in Yeouido-dong, Seoul, South Korea."
  },
  %{
    code: "LENOVO",
    name: "Lenovo",
    description: "Lenovo is an American-Chinese multinational technology company."
  },
  %{
    code: "SAMSUNG",
    name: "Samsung Electronics",
    description: "Samsung Electronics Co., Ltd. is a South Korean multinational electronics company headquartered in the Yeongtong District of Suwon."
  },
  %{
    code: "HUAWEI",
    name: "Huawei",
    description: "Huawei is a Chinese multinational technology company headquartered in Shenzhen, Guangdong. It designs, develops, and sells telecommunications equipment and consumer electronics (mainly smartphones)."
  },
  %{
    code: "XIAOMI",
    name: "Xiaomi",
    description: "Xiaomi is a Chinese electronics company founded in April 2010 and headquartered in Beijing. Xiaomi makes and invests in smartphones, mobile apps, laptops, bags, earphones, shoes, fitness bands, and many other products."
  },
]

Brand.seed(brand_data)