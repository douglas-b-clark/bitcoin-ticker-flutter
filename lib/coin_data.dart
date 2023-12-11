const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const String currenciesString =
    'AUD,BRL,CAD,CNY,EUR,GBP,HKD,IDR,ILS,INR,JPY,MXN,NOK,NZD,PLN,RON,RUB,SEK,SGD,USD,ZAR';

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const String apiKey = 'B6BDAAED-F5C8-49CF-B21F-B10E4754EDB7';

class CoinData {}

const String currenciesHistoricalPrices = '''
{
"asset_id_base": "USD",
"rates": [
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "AUD",
"rate": 1.511449311607181
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "BRL",
"rate": 4.915991115011179
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "CAD",
"rate": 1.346290120276187
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "CNY",
"rate": 7.138675812998775
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "EUR",
"rate": 0.9189258947028094
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "GBP",
"rate": 0.7871143581168951
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "HKD",
"rate": 7.808113327289772
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "IDR",
"rate": 15474.859094938463
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "ILS",
"rate": 3.7244066512304865
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "INR",
"rate": 83.26617263375832
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "JPY",
"rate": 146.7121367667065
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "MXN",
"rate": 17.28986638660177
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "NOK",
"rate": 10.749595116233465
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "NZD",
"rate": 1.6208014930768153
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "PLN",
"rate": 4.005732805687887
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "RON",
"rate": 4.606992410927589
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "RUB",
"rate": 90.03388404470029
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "SEK",
"rate": 10.449565811612997
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "SGD",
"rate": 1.3373591682597719
},
{
"time": "2023-12-02T08:58:18.0000000Z",
"asset_id_quote": "ZAR",
"rate": 18.885365478240058
}
]
}
''';
