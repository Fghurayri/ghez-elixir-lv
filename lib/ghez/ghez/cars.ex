defmodule Ghez.Cars do
  alias Ghez.Car

  def suggest(""), do: []

  def suggest(term) do
    Enum.filter(list_cars(), fn car -> String.downcase(car.name) =~ String.downcase(term) end)
  end

  def get_car(car_name) do
    Enum.filter(list_cars(), fn car -> car.name == car_name end)
  end

  def list_cars do
    [
      %Car{name: "Audi e-tron Quattro", battery_size: 95, range_in_km: 204},
      %Car{name: "Audi e-tron Sportback", battery_size: 95, range_in_km: 250},
      %Car{name: "Audi e-tron GT concept", battery_size: 95, range_in_km: 250},
      %Car{name: "Audi Q4 e-tron", battery_size: 82, range_in_km: 250},
      %Car{name: "BAIC EU5", battery_size: 53.6, range_in_km: 258},
      %Car{name: "BAIC LITE", battery_size: 30, range_in_km: 186},
      %Car{name: "BJEV EC5", battery_size: 48, range_in_km: 250},
      %Car{name: "BJEV EC3", battery_size: 30.7, range_in_km: 187},
      %Car{name: "BJEV EX3", battery_size: 61.3, range_in_km: 311},
      %Car{name: "BMW i3 BEV 94 Ah", battery_size: 33.2, range_in_km: 114},
      %Car{name: "BMW i3s BEV 94 Ah", battery_size: 33.2, range_in_km: 107},
      %Car{name: "BMW i3 BEV 60 Ah", battery_size: 21.6, range_in_km: 81},
      %Car{name: "BMW i3 REX 60 Ah", battery_size: 21.6, range_in_km: 72},
      %Car{name: "BMW i3 REX 94 Ah", battery_size: 33.2, range_in_km: 97},
      %Car{name: "BMW i3s REX 94 Ah", battery_size: 33.2, range_in_km: 97},
      %Car{name: "BMW iX3 concept", battery_size: 70, range_in_km: 250},
      %Car{name: "BMW i3 BEV 120 Ah", battery_size: 42.2, range_in_km: 153},
      %Car{name: "BMW i3s BEV 120 Ah", battery_size: 42.2, range_in_km: 153},
      %Car{name: "BMW i4", battery_size: 80, range_in_km: 340},
      %Car{name: "Brilliance Auto H230 EV", battery_size: 24, range_in_km: 98},
      %Car{
        name: "BYD Yuan EV360 智联领尚型",
        battery_size: 42,
        range_in_km: 190
      },
      %Car{
        name: "BYD Full New Yuan EV360 智联悦尚型",
        battery_size: 40.62,
        range_in_km: 190
      },
      %Car{
        name: "BYD Full New Yuan EV535 智联领潮型",
        battery_size: 53.22,
        range_in_km: 255
      },
      %Car{
        name: "BYD Full New Yuan EV535 高能领航版",
        battery_size: 53.22,
        range_in_km: 255
      },
      %Car{name: "BYD Tang DM", battery_size: 82.8, range_in_km: 323},
      %Car{name: "BYD Tang EV", battery_size: 82.8, range_in_km: 311},
      %Car{
        name: "BYD Song Pro EV High power version",
        battery_size: 59.1,
        range_in_km: 252
      },
      %Car{
        name: "BYD Song Pro EV Pilot version",
        battery_size: 71,
        range_in_km: 312
      },
      %Car{
        name: "BYD Qing Super Version Pro EV 智联领尚型(标准版)",
        battery_size: 53.1,
        range_in_km: 249
      },
      %Car{
        name: "BYD Qing Super Version Pro EV 智联领享型(高功率版)",
        battery_size: 56.4,
        range_in_km: 261
      },
      %Car{
        name: "BYD Qing Super Version Pro EV 智联领创型(高功率高续航版)",
        battery_size: 69.5,
        range_in_km: 323
      },
      %Car{name: "BYD Qing EV450", battery_size: 60.5, range_in_km: 249},
      %Car{name: "BYD E1", battery_size: 32.2, range_in_km: 190},
      %Car{name: "BYD S2", battery_size: 40.62, range_in_km: 190},
      %Car{name: "BYD E5", battery_size: 51.2, range_in_km: 252},
      %Car{name: "Changan EV460", battery_size: 52.56, range_in_km: 267},
      %Car{name: "Changan EV360", battery_size: 34, range_in_km: 187},
      %Car{name: "Changan EC260", battery_size: 32, range_in_km: 130},
      %Car{name: "Changan CS15EV400", battery_size: 42.92, range_in_km: 218},
      %Car{name: "Chery eQ1", battery_size: 38, range_in_km: 187},
      %Car{name: "Chery 艾瑞泽 Arrizo 5e", battery_size: 49, range_in_km: 218},
      %Car{name: "Chery 瑞虎 Tiggo3xe", battery_size: 53.6, range_in_km: 249},
      %Car{name: "Chevrolet Bolt", battery_size: 60, range_in_km: 238},
      %Car{
        name: "Chevrolet Spark EV 19 kWh",
        battery_size: 19,
        range_in_km: 82
      },
      %Car{
        name: "Chevrolet Spark EV 21 kWh",
        battery_size: 21.3,
        range_in_km: 82
      },
      %Car{name: "Dongfeng E70", battery_size: 50.8, range_in_km: 249},
      %Car{name: "Dongfeng S50 EV", battery_size: 57, range_in_km: 255},
      %Car{name: "Dongfeng M5 EV", battery_size: 57.7, range_in_km: 205},
      %Car{name: "Fiat 500e 2013", battery_size: 24, range_in_km: 84},
      %Car{name: "Fiat 500e 2020", battery_size: 42, range_in_km: 199},
      %Car{
        name: "Ford Focus Electric 23 kWh",
        battery_size: 23,
        range_in_km: 76
      },
      %Car{
        name: "Ford Focus Electric 33 kWh",
        battery_size: 33.5,
        range_in_km: 115
      },
      %Car{
        name: "Ford Mustang Mach-E SR RWD",
        battery_size: 75.7,
        range_in_km: 230
      },
      %Car{
        name: "Ford Mustang Mach-E SR AWD",
        battery_size: 75.7,
        range_in_km: 210
      },
      %Car{
        name: "Ford Mustang Mach-E ER RWD",
        battery_size: 98.8,
        range_in_km: 300
      },
      %Car{
        name: "Ford Mustang Mach-E ER AWD",
        battery_size: 98.8,
        range_in_km: 270
      },
      %Car{name: "Geely 帝豪 Gse 500", battery_size: 53.1, range_in_km: 249},
      %Car{name: "Geely 帝豪 Gse 600", battery_size: 61.9, range_in_km: 280},
      %Car{name: "Geely 帝豪EV500", battery_size: 52, range_in_km: 249},
      %Car{name: "Geely 帝豪EV500超长续航", battery_size: 62, range_in_km: 311},
      %Car{name: "Geely 帝豪 Gse 500", battery_size: 53.1, range_in_km: 249},
      %Car{name: "Geely 帝豪 Gse 600", battery_size: 61.9, range_in_km: 280},
      %Car{name: "Geely 帝豪EV500", battery_size: 52, range_in_km: 249},
      %Car{name: "Geely 帝豪EV500超长续航", battery_size: 62, range_in_km: 311},
      %Car{name: "Haima 爱尚EV", battery_size: 21, range_in_km: 126},
      %Car{name: "Haima E3", battery_size: 46.6, range_in_km: 196},
      %Car{name: "Honda Clarity Electric", battery_size: 25.5, range_in_km: 89},
      %Car{name: "Honda Fit EV", battery_size: 20, range_in_km: 82},
      %Car{name: "Honda e", battery_size: 35.5, range_in_km: 100},
      %Car{
        name: "Hyundai Ioniq Electric 28 kWh",
        battery_size: 28,
        range_in_km: 124
      },
      %Car{
        name: "Hyundai Kona Electric 39 kWh",
        battery_size: 39.2,
        range_in_km: 160
      },
      %Car{
        name: "Hyundai Kona Electric 64 kWh",
        battery_size: 64,
        range_in_km: 258
      },
      %Car{
        name: "Hyundai Ioniq Electric 38 kWh",
        battery_size: 38.3,
        range_in_km: 170
      },
      %Car{name: "JAC iEVA60", battery_size: 68, range_in_km: 252},
      %Car{name: "JAC iEVA50", battery_size: 60, range_in_km: 255},
      %Car{name: "JAC iEVS4", battery_size: 55, range_in_km: 221},
      %Car{name: "JAC iEV6E", battery_size: 41, range_in_km: 199},
      %Car{name: "JAC iEV7S", battery_size: 42.8, range_in_km: 199},
      %Car{name: "JAC iEV7L", battery_size: 35, range_in_km: 188},
      %Car{name: "Jaguar I-PACE", battery_size: 90, range_in_km: 234},
      %Car{name: "Kia Niro EV 39 kWh", battery_size: 39.2, range_in_km: 150},
      %Car{name: "Kia Niro EV 64 kWh", battery_size: 64, range_in_km: 239},
      %Car{name: "Kia Soul EV 30 kWh", battery_size: 30, range_in_km: 111},
      %Car{name: "Kia Soul EV 27 kWh", battery_size: 27, range_in_km: 93},
      %Car{name: "Kia Soul EV 64 kWh", battery_size: 64, range_in_km: 243},
      %Car{name: "Kia Soul EV 39 kWh", battery_size: 39.2, range_in_km: 172},
      %Car{name: "Kia Niro EV 39 kWh", battery_size: 39.2, range_in_km: 150},
      %Car{name: "Kia Niro EV 64 kWh", battery_size: 64, range_in_km: 239},
      %Car{name: "Kia Soul EV 30 kWh", battery_size: 30, range_in_km: 111},
      %Car{name: "Kia Soul EV 27 kWh", battery_size: 27, range_in_km: 93},
      %Car{name: "Kia Soul EV 64 kWh", battery_size: 64, range_in_km: 243},
      %Car{name: "Kia Soul EV 39 kWh", battery_size: 39.2, range_in_km: 172},
      %Car{name: "Lifan 820EV", battery_size: 60, range_in_km: 205},
      %Car{name: "Lifan 650 EV", battery_size: 43.1, range_in_km: 186},
      %Car{name: "Lucid Air concept", battery_size: 130, range_in_km: 400},
      %Car{name: "Mazda MX-30 EV", battery_size: 35.5, range_in_km: 120},
      %Car{name: "Mercedes B250e", battery_size: 28, range_in_km: 87},
      %Car{name: "Mercedes EQA concept", battery_size: 60, range_in_km: 200},
      %Car{name: "Mercedes EQC concept", battery_size: 80, range_in_km: 230},
      %Car{name: "MG ZS EV Excite", battery_size: 44.5, range_in_km: 163},
      %Car{name: "MG ZS EV Exclusive", battery_size: 44.5, range_in_km: 163},
      %Car{name: "MINI Cooper SE", battery_size: 32.6, range_in_km: 114},
      %Car{name: "Mitsubishi i-Miev", battery_size: 16, range_in_km: 59},
      %Car{name: "NIO ES6 420KM VERSION", battery_size: 70, range_in_km: 261},
      %Car{name: "NIO ES6 510KM VERSION", battery_size: 84, range_in_km: 317},
      %Car{
        name: "NIO ES8 355km BASIC VERSION",
        battery_size: 70,
        range_in_km: 221
      },
      %Car{
        name: "NIO ES8 425km BASIC VERSION",
        battery_size: 84,
        range_in_km: 264
      },
      %Car{name: "Nissan e-NV200 24 kWh", battery_size: 24, range_in_km: 106},
      %Car{name: "Nissan e-NV200 40 kWh", battery_size: 40, range_in_km: 124},
      %Car{name: "Nissan Leaf 30 kWh", battery_size: 30, range_in_km: 107},
      %Car{
        name: "Nissan Leaf 24 kWh (2013)",
        battery_size: 24,
        range_in_km: 84
      },
      %Car{
        name: "Nissan Leaf 24 kWh (2011)",
        battery_size: 24,
        range_in_km: 73
      },
      %Car{name: "Nissan Leaf 40 kWh", battery_size: 40, range_in_km: 151},
      %Car{name: "Nissan Leaf 62 kWh", battery_size: 62, range_in_km: 226},
      %Car{name: "Nissan e-NV200 24 kWh", battery_size: 24, range_in_km: 106},
      %Car{name: "Nissan e-NV200 40 kWh", battery_size: 40, range_in_km: 124},
      %Car{name: "Nissan Leaf 30 kWh", battery_size: 30, range_in_km: 107},
      %Car{
        name: "Nissan Leaf 24 kWh (2013)",
        battery_size: 24,
        range_in_km: 84
      },
      %Car{
        name: "Nissan Leaf 24 kWh (2011)",
        battery_size: 24,
        range_in_km: 73
      },
      %Car{name: "Nissan Leaf 40 kWh", battery_size: 40, range_in_km: 151},
      %Car{name: "Nissan Leaf 62 kWh", battery_size: 62, range_in_km: 226},
      %Car{name: "Peugeot e-208", battery_size: 50, range_in_km: 211},
      %Car{name: "Peugeot e-2008", battery_size: 50, range_in_km: 193},
      %Car{name: "Polestar 2", battery_size: 78, range_in_km: 275},
      %Car{name: "Porsche Taycan Turbo", battery_size: 93.4, range_in_km: 201},
      %Car{
        name: "Porsche Taycan Cross Turismo",
        battery_size: 90,
        range_in_km: 250
      },
      %Car{
        name: "Porsche Taycan Turbo S",
        battery_size: 93.4,
        range_in_km: 256
      },
      %Car{name: "Porsche Taycan 4S", battery_size: 79.2, range_in_km: 253},
      %Car{
        name: "Porsche Taycan 4S Plus",
        battery_size: 93.4,
        range_in_km: 288
      },
      %Car{name: "RedStar Auto X2", battery_size: 32.7, range_in_km: 157},
      %Car{name: "Renault Fluence Z.E.", battery_size: 22, range_in_km: 115},
      %Car{name: "Renault Kangoo Z.E.", battery_size: 33, range_in_km: 168},
      %Car{name: "Renault Twizy CARGO", battery_size: 6.1, range_in_km: 62},
      %Car{name: "Renault ZOE Q210", battery_size: 22, range_in_km: 130},
      %Car{name: "Renault ZOE R240", battery_size: 22, range_in_km: 149},
      %Car{name: "Renault ZOE Q90", battery_size: 41, range_in_km: 230},
      %Car{name: "Renault ZOE R90", battery_size: 41, range_in_km: 249},
      %Car{name: "Renault ZOE R110", battery_size: 41, range_in_km: 186},
      %Car{name: "Renault Twizy URBAN 80", battery_size: 6.1, range_in_km: 62},
      %Car{name: "Renault ZOE R110", battery_size: 52, range_in_km: 242},
      %Car{name: "Renault ZOE R135", battery_size: 52, range_in_km: 242},
      %Car{name: "Rimac Concept_One", battery_size: 90, range_in_km: 217},
      %Car{name: "Rivian R1T 180 kWh", battery_size: 180, range_in_km: 400},
      %Car{name: "Rivian R1S 105 kWh", battery_size: 105, range_in_km: 240},
      %Car{name: "Rivian R1S 135 kWh", battery_size: 135, range_in_km: 310},
      %Car{name: "Rivian R1S 180 kWh", battery_size: 180, range_in_km: 410},
      %Car{name: "Rivian R1T 105 kWh", battery_size: 105, range_in_km: 230},
      %Car{name: "Rivian R1T 135 kWh", battery_size: 135, range_in_km: 300},
      %Car{name: "SAIC MAXUS EG50", battery_size: 52.5, range_in_km: 217},
      %Car{name: "SAIC MAXUS EV30", battery_size: 35, range_in_km: 143},
      %Car{
        name: "SAIC MAXUS EV80 Short Version",
        battery_size: 53,
        range_in_km: 143
      },
      %Car{
        name: "SAIC MAXUS EV80 Extended Version",
        battery_size: 71,
        range_in_km: 143
      },
      %Car{name: "SAIC MAXUS EG10", battery_size: 71.8, range_in_km: 186},
      %Car{name: "Seat el-Born concept", battery_size: 62, range_in_km: 261},
      %Car{name: "Seat Mii Electric", battery_size: 36.8, range_in_km: 165},
      %Car{name: "Škoda Citigo iV", battery_size: 36.8, range_in_km: 165},
      %Car{name: "Skoda Vision IV", battery_size: 83, range_in_km: 311},
      %Car{name: "Smart EQ fortwo coupe", battery_size: 17.6, range_in_km: 58},
      %Car{name: "Smart EQ fortwo cabrio", battery_size: 17.6, range_in_km: 57},
      %Car{name: "Smart EQ forfour", battery_size: 17.6, range_in_km: 58},
      %Car{
        name: "Smart Electric Drive ED3 fortwo coupe",
        battery_size: 17.6,
        range_in_km: 68
      },
      %Car{
        name: "Smart Electric Drive ED2 fortwo coupe",
        battery_size: 16.5,
        range_in_km: 63
      },
      %Car{
        name: "Smart EQ fortwo coupe 2019",
        battery_size: 17.6,
        range_in_km: 58
      },
      %Car{
        name: "Smart EQ fortwo cabrio 2019",
        battery_size: 17.6,
        range_in_km: 57
      },
      %Car{name: "Smart EQ forfour 2019", battery_size: 17.6, range_in_km: 58},
      %Car{name: "Sono Sion concept", battery_size: 35, range_in_km: 158},
      %Car{name: "Tazzari Zero", battery_size: 13, range_in_km: 87},
      %Car{name: "Tesla Model S 60", battery_size: 60, range_in_km: 210},
      %Car{name: "Tesla Model S 60D", battery_size: 60, range_in_km: 218},
      %Car{name: "Tesla Model S 70", battery_size: 70, range_in_km: 230},
      %Car{name: "Tesla Model S 70D", battery_size: 70, range_in_km: 240},
      %Car{name: "Tesla Model S 75", battery_size: 75, range_in_km: 249},
      %Car{name: "Tesla Model S 75D", battery_size: 75, range_in_km: 259},
      %Car{name: "Tesla Model S 85", battery_size: 85, range_in_km: 265},
      %Car{name: "Tesla Model S P85", battery_size: 85, range_in_km: 265},
      %Car{name: "Tesla Model S P85+", battery_size: 85, range_in_km: 265},
      %Car{name: "Tesla Model S 85D", battery_size: 85, range_in_km: 270},
      %Car{name: "Tesla Model S P85D", battery_size: 85, range_in_km: 253},
      %Car{name: "Tesla Model S 90D", battery_size: 90, range_in_km: 294},
      %Car{name: "Tesla Model S P90D", battery_size: 90, range_in_km: 270},
      %Car{name: "Tesla Model S 100D", battery_size: 100, range_in_km: 335},
      %Car{name: "Tesla Model S P100D", battery_size: 100, range_in_km: 315},
      %Car{
        name: "Tesla Model S Standard Range",
        battery_size: 80,
        range_in_km: 285
      },
      %Car{
        name: "Tesla Model S Long Range",
        battery_size: 100,
        range_in_km: 390
      },
      %Car{
        name: "Tesla Model S Performance",
        battery_size: 100,
        range_in_km: 348
      },
      %Car{name: "Tesla Model X 75D", battery_size: 75, range_in_km: 237},
      %Car{name: "Tesla Model X 90D", battery_size: 90, range_in_km: 257},
      %Car{name: "Tesla Model X P90D", battery_size: 90, range_in_km: 250},
      %Car{name: "Tesla Model X 100D", battery_size: 100, range_in_km: 295},
      %Car{name: "Tesla Model X P100D", battery_size: 100, range_in_km: 289},
      %Car{
        name: "Tesla Model X Standard Range",
        battery_size: 80,
        range_in_km: 250
      },
      %Car{
        name: "Tesla Model X Long Range",
        battery_size: 100,
        range_in_km: 328
      },
      %Car{
        name: "Tesla Model X Performance",
        battery_size: 100,
        range_in_km: 305
      },
      %Car{
        name: "Tesla Model 3 Standard Range",
        battery_size: 50,
        range_in_km: 220
      },
      %Car{
        name: "Tesla Model 3 Standard Range Plus",
        battery_size: 50,
        range_in_km: 250
      },
      %Car{name: "Tesla Model 3 Mid Range", battery_size: 62, range_in_km: 264},
      %Car{
        name: "Tesla Model 3 Long Range RWD",
        battery_size: 75,
        range_in_km: 325
      },
      %Car{
        name: "Tesla Model 3 Long Range AWD",
        battery_size: 75,
        range_in_km: 322
      },
      %Car{
        name: "Tesla Model 3 Performance",
        battery_size: 75,
        range_in_km: 310
      },
      %Car{
        name: "Tesla Model Y Standard Range",
        battery_size: 50,
        range_in_km: 230
      },
      %Car{
        name: "Tesla Model Y Long Range RWD",
        battery_size: 75,
        range_in_km: 300
      },
      %Car{
        name: "Tesla Model Y Long Range AWD",
        battery_size: 75,
        range_in_km: 280
      },
      %Car{
        name: "Tesla Model Y Performance",
        battery_size: 75,
        range_in_km: 280
      },
      %Car{name: "Tesla Roadster 2.0", battery_size: 53, range_in_km: 244},
      %Car{name: "Tesla Roadster 2.5 Base", battery_size: 53, range_in_km: 244},
      %Car{
        name: "Tesla Roadster 2.5 Sport",
        battery_size: 53,
        range_in_km: 244
      },
      %Car{name: "Toyota RAV4 EV II", battery_size: 41.8, range_in_km: 103},
      %Car{name: "Volvo XC40 Recharge", battery_size: 78, range_in_km: 200},
      %Car{name: "VW e-Golf 36 kWh", battery_size: 35.8, range_in_km: 125},
      %Car{name: "VW e-Up! 18.7 kWh", battery_size: 18.7, range_in_km: 99},
      %Car{name: "VW e-Golf 24 kWh", battery_size: 24.2, range_in_km: 83},
      %Car{name: "VW ID.3 45 kWh", battery_size: 45, range_in_km: 205},
      %Car{name: "VW e-Up! 36.8 kWh", battery_size: 36.8, range_in_km: 165},
      %Car{name: "VW ID.3 58 kWh", battery_size: 58, range_in_km: 261},
      %Car{name: "VW ID.3 77 kWh", battery_size: 77, range_in_km: 342},
      %Car{name: "Zotye Cloud 100 plus", battery_size: 28.4, range_in_km: 158},
      %Car{name: "Zotye E200 Pro", battery_size: 31.9, range_in_km: 187},
      %Car{name: "Zotye Z500EV Pro", battery_size: 49.7, range_in_km: 205}
    ]
  end
end
