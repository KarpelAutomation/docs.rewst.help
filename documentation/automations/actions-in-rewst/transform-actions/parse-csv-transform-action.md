# Parse CSV transform action

### Use case

You have received a return with a string in CSV format and you would like to convert this to a list of JSON objects.

### Overview

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-18 at 3.03.41 PM.png" alt="A screenshot of the parse csv transform action, seen in the actions list menu of the workflow builder canvas."><figcaption></figcaption></figure>

Parse CSV Data into JSON. The first line will be keys, and subsequent lines will be values.

***

### Parameters

<table><thead><tr><th width="217">Parameter</th><th width="417.3333333333333">Description</th><th data-type="checkbox">Required</th></tr></thead><tbody><tr><td>Delimiter</td><td>Character or sequence of characters to used as a delimiter in the CSV (default is ), such as '|';':', etc.</td><td>true</td></tr><tr><td>String Contents</td><td>Input the CSV formatted string you would like to convert to JSON.</td><td>true</td></tr></tbody></table>

### Usage

<details>

<summary>Example: Convert CSV to JSON</summary>

Inputs:

**Delimiter:** ,

**String Contents:**

```
Index,Name,Description,Brand,Category,Price,Currency,Stock,EAN,Color,Size,Availability,Internal ID
1,Compact Printer Air Advanced Digital,Situation organization these memory much off.,"Garner, Boyle and Flynn",Books & Stationery,265,USD,774,2091465262179,ForestGreen,Large,pre_order,56
2,Tablet,Discussion loss politics free one thousand.,Mueller Inc,Shoes & Footwear,502,USD,81,5286196620740,Black,8x10 in,in_stock,29
3,Smart Blender Cooker,No situation per.,"Lawson, Keller and Winters",Kitchen Appliances,227,USD,726,1282898648918,SlateGray,XS,in_stock,70
4,Advanced Router Rechargeable,For force gas energy six laugh.,Gallagher and Sons,Kitchen Appliances,121,USD,896,3879177514583,PaleGreen,L,discontinued,31
5,Portable Mouse Monitor Phone,Feeling back religious however author room scientist.,Irwin LLC,Kids' Clothing,1,USD,925,9055773261265,SeaShell,100x200 mm,discontinued,10
6,Radio,Character prove growth contain serious customer.,"Benjamin, Nelson and Hancock",Skincare,426,USD,549,1150028980156,CornflowerBlue,30x40 cm,pre_order,60
7,Ultra Projector Oven Thermostat Prime Advanced,Pattern possible look necessary indicate work nearly.,"Mccoy, Waters and Rose",Laptops & Computers,68,USD,870,5029747624534,Purple,S,discontinued,86
8,Webcam Stove Grill,Deep area join carry age.,Morrow and Sons,Automotive,159,USD,584,9883725074294,MediumOrchid,8x10 in,pre_order,50
9,Eco Radio,Know father for act let.,"Edwards, Odonnell and Conley",Skincare,454,USD,499,1773215338624,DimGray,Medium,pre_order,88
```

</details>

### Results output

Result of Example:

```json
[
  {
    "EAN": "2091465262179",
    "Name": "Compact Printer Air Advanced Digital",
    "Size": "Large",
    "Brand": "Garner, Boyle and Flynn",
    "Color": "ForestGreen",
    "Index": "1",
    "Price": "265",
    "Stock": "774",
    "Category": "Books & Stationery",
    "Currency": "USD",
    "Description": "Situation organization these memory much off.",
    "Internal ID": "56",
    "Availability": "pre_order"
  },
  {
    "EAN": "5286196620740",
    "Name": "Tablet",
    "Size": "8x10 in",
    "Brand": "Mueller Inc",
    "Color": "Black",
    "Index": "2",
    "Price": "502",
    "Stock": "81",
    "Category": "Shoes & Footwear",
    "Currency": "USD",
    "Description": "Discussion loss politics free one thousand.",
    "Internal ID": "29",
    "Availability": "in_stock"
  },
  {
    "EAN": "1282898648918",
    "Name": "Smart Blender Cooker",
    "Size": "XS",
    "Brand": "Lawson, Keller and Winters",
    "Color": "SlateGray",
    "Index": "3",
    "Price": "227",
    "Stock": "726",
    "Category": "Kitchen Appliances",
    "Currency": "USD",
    "Description": "No situation per.",
    "Internal ID": "70",
    "Availability": "in_stock"
  },
  {
    "EAN": "3879177514583",
    "Name": "Advanced Router Rechargeable",
    "Size": "L",
    "Brand": "Gallagher and Sons",
    "Color": "PaleGreen",
    "Index": "4",
    "Price": "121",
    "Stock": "896",
    "Category": "Kitchen Appliances",
    "Currency": "USD",
    "Description": "For force gas energy six laugh.",
    "Internal ID": "31",
    "Availability": "discontinued"
  },
  {
    "EAN": "9055773261265",
    "Name": "Portable Mouse Monitor Phone",
    "Size": "100x200 mm",
    "Brand": "Irwin LLC",
    "Color": "SeaShell",
    "Index": "5",
    "Price": "1",
    "Stock": "925",
    "Category": "Kids' Clothing",
    "Currency": "USD",
    "Description": "Feeling back religious however author room scientist.",
    "Internal ID": "10",
    "Availability": "discontinued"
  },
  {
    "EAN": "1150028980156",
    "Name": "Radio",
    "Size": "30x40 cm",
    "Brand": "Benjamin, Nelson and Hancock",
    "Color": "CornflowerBlue",
    "Index": "6",
    "Price": "426",
    "Stock": "549",
    "Category": "Skincare",
    "Currency": "USD",
    "Description": "Character prove growth contain serious customer.",
    "Internal ID": "60",
    "Availability": "pre_order"
  },
  {
    "EAN": "5029747624534",
    "Name": "Ultra Projector Oven Thermostat Prime Advanced",
    "Size": "S",
    "Brand": "Mccoy, Waters and Rose",
    "Color": "Purple",
    "Index": "7",
    "Price": "68",
    "Stock": "870",
    "Category": "Laptops & Computers",
    "Currency": "USD",
    "Description": "Pattern possible look necessary indicate work nearly.",
    "Internal ID": "86",
    "Availability": "discontinued"
  },
  {
    "EAN": "9883725074294",
    "Name": "Webcam Stove Grill",
    "Size": "8x10 in",
    "Brand": "Morrow and Sons",
    "Color": "MediumOrchid",
    "Index": "8",
    "Price": "159",
    "Stock": "584",
    "Category": "Automotive",
    "Currency": "USD",
    "Description": "Deep area join carry age.",
    "Internal ID": "50",
    "Availability": "pre_order"
  },
  {
    "EAN": "1773215338624",
    "Name": "Eco Radio",
    "Size": "Medium",
    "Brand": "Edwards, Odonnell and Conley",
    "Color": "DimGray",
    "Index": "9",
    "Price": "454",
    "Stock": "499",
    "Category": "Skincare",
    "Currency": "USD",
    "Description": "Know father for act let.",
    "Internal ID": "88",
    "Availability": "pre_order"
  }
]
```
