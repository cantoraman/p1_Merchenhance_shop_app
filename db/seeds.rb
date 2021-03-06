require_relative('../models/manufacturer.rb')
require_relative('../models/item.rb')
require_relative('../models/transaction.rb')
require_relative('../models/order.rb')
require_relative('../models/tag.rb')
require_relative('../models/item_tag.rb')

Transaction.delete_all()
Item.delete_all()
Manufacturer.delete_all()
Order.delete_all()
Tag.delete_all()
ItemTag.delete_all()

manufacturer1= Manufacturer.new({
  "name" => "MAM",
  "website" => "https://www.mamonlineshop.com"
  })

manufacturer2= Manufacturer.new({
  "name" => "Philips",
  "website" => "https://www.philips.co.uk/"
  })

manufacturer3= Manufacturer.new({
  "name" => "Medela",
  "website" => "https://www.medela.co.uk"
  })

manufacturer4= Manufacturer.new({
  "name" => "Tommee Tippee",
  "website" => "https://www.tommeetippee.co.uk/"
  })
manufacturer1.save()
manufacturer2.save()
manufacturer3.save()
manufacturer4.save()


item1 = Item.new({
  "name" => "Soother",
  "description" => "Natural shape. Approved material. Pack of 2",
  "cost" => "4.00",
  "price" => "5.75",
  "stock_level" => "60",
  "stock_low" => "20",
  "stock_medium" => "40",
  "manufacturer_id" => manufacturer1.id
  })

item2 = Item.new({
  "name" => "Slow Flow Bottle Teat",
  "description" => "Bottle teat for MAM bottles. Slow Flow for patient babies. Pack of 2",
  "cost" => "3.90",
  "price" => "4.50",
  "stock_level" => "60",
  "stock_low" => "12",
  "stock_medium" => "30",
  "manufacturer_id" => manufacturer1.id
  })

item3 = Item.new({
  "name" => "Anti Colic Bottle 260ml",
  "description" => "Designed for colic babies. Free of BPA and BPS. Pack of 2",
  "cost" => "5.80",
  "price" => "7.50",
  "stock_level" => "20",
  "stock_low" => "15",
  "stock_medium" => "30",
  "manufacturer_id" => manufacturer1.id
  })

item4 = Item.new({
  "name" => "Feeding Bottle 260ml",
  "description" => "Antislip texture. Free of BPA and BPS.",
  "cost" => "4.80",
  "price" => "5.50",
  "stock_level" => "10",
  "stock_low" => "25",
  "stock_medium" => "50",
  "manufacturer_id" => manufacturer1.id
  })

item5 = Item.new({
  "name" => "Soother",
  "description" => "Sized and shaped for baby's mouth. Latex free. Pack of 2",
  "cost" => "2.10",
  "price" => "2.72",
  "stock_level" => "90",
  "stock_low" => "20",
  "stock_medium" => "50",
  "manufacturer_id" => manufacturer2.id
  })

item6 = Item.new({
  "name" => "Electric Breast Pump",
  "description" => "Features a gentle stimulation mode and three pumping settings.",
  "cost" => "70.20",
  "price" => "125.00",
  "stock_level" => "40",
  "stock_low" => "10",
  "stock_medium" => "20",
  "manufacturer_id" => manufacturer2.id
  })

item7 = Item.new({
  "name" => "Manual Breast Pump",
  "description" => "Enhanced design, soft massage cussion.",
  "cost" => "32.40",
  "price" => "40.00",
  "stock_level" => "20",
  "stock_low" => "10",
  "stock_medium" => "20",
  "manufacturer_id" => manufacturer2.id
  })

item8 = Item.new({
  "name" => "Baby Monitor",
  "description" => "Hi-Res, 50m range, High Security, Auto Lullaby mode.",
  "cost" => "158.40",
  "price" => "170.00",
  "stock_level" => "10",
  "stock_low" => "10",
  "stock_medium" => "20",
  "manufacturer_id" => manufacturer2.id
  })

  item9 = Item.new({
    "name" => "Electric Breast Pump",
    "description" => "Award Winning Design. Comes with freezer bags",
    "cost" => "120.20",
    "price" => "134.00",
    "stock_level" => "70",
    "stock_low" => "12",
    "stock_medium" => "24",
    "manufacturer_id" => manufacturer3.id
    })

  item10 = Item.new({
    "name" => "Fast Flow Bottle Teat",
    "description" => "Bottle teat for medela bottles. Fast Flow for impatient babies. Pack of 2",
    "cost" => "3.20",
    "price" => "4.11",
    "stock_level" => "50",
    "stock_low" => "15",
    "stock_medium" => "30",
    "manufacturer_id" => manufacturer3.id
    })

  item11 = Item.new({
    "name" => "Feeding Bottle 150ml",
    "description" => "Made from 100 per cent bisphenol-A free material. Pack of 3",
    "cost" => "8.80",
    "price" => "11.99",
    "stock_level" => "20",
    "stock_low" => "10",
    "stock_medium" => "30",
    "manufacturer_id" => manufacturer3.id
    })

  item12 = Item.new({
    "name" => "Manual Breast Pump",
    "description" => "2-phase manual breast pumping consisting of expression and stimulation.",
    "cost" => "22.40",
    "price" => "24.99",
    "stock_level" => "5",
    "stock_low" => "10",
    "stock_medium" => "20",
    "manufacturer_id" => manufacturer3.id
    })

    item13 = Item.new({
      "name" => "Soother",
      "description" => "Orthodontic Shape. Pack of 2",
      "cost" => "4.20",
      "price" => "5.49",
      "stock_level" => "80",
      "stock_low" => "25",
      "stock_medium" => "50",
      "manufacturer_id" => manufacturer4.id
      })

    item14 = Item.new({
      "name" => "Medium Flow Bottle Teat",
      "description" => "Developed for use with the Closer to Nature advanced comfortTM Bottles. Pack of 2",
      "cost" => "4.44",
      "price" => "5.29",
      "stock_level" => "30",
      "stock_low" => "20",
      "stock_medium" => "40",
      "manufacturer_id" => manufacturer4.id
      })

    item15 = Item.new({
      "name" => "Anti Colic Bottle 260ml",
      "description" => "Soft, natural-feel silicone teat mimics Mum's breastfeeding action. Pack of 4",
      "cost" => "19.60",
      "price" => "23.99",
      "stock_level" => "2",
      "stock_low" => "10",
      "stock_medium" => "20",
      "manufacturer_id" => manufacturer4.id
      })

    item16 = Item.new({
      "name" => "Soother Clip - pack of 6",
      "description" => "Never drop another soother again with these fun coloured clips.",
      "cost" => "4.90",
      "price" => "6.00",
      "stock_level" => "8",
      "stock_low" => "20",
      "stock_medium" => "40",
      "manufacturer_id" => manufacturer4.id
      })

  item1.save()
  item2.save()
  item3.save()
  item4.save()
  item5.save()
  item6.save()
  item7.save()
  item8.save()
  item9.save()
  item10.save()
  item11.save()
  item12.save()
  item13.save()
  item14.save()
  item15.save()
  item16.save()
