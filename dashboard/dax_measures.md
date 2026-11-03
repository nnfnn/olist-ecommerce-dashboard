# DAX Measures

Used in `olist_dashboard.pbix`.

```dax
DateTable = CALENDAR(DATE(2016,9,1), DATE(2018,10,31))
```

```dax
Total Revenue = SUM(order_items[price])
```

```dax
Total Orders = DISTINCTCOUNT(orders[order_id])
```

```dax
AOV = DIVIDE([Total Revenue], [Total Orders])
```

```dax
Late Orders % =
DIVIDE(
    CALCULATE(
        COUNTROWS(orders),
        FILTER(orders, orders[order_delivered_customer_date] > orders[order_estimated_delivery_date])
    ),
    COUNTROWS(orders)
)
```

```dax
Revenue MoM % =
VAR prev = CALCULATE([Total Revenue], DATEADD(DateTable[Date], -1, MONTH))
RETURN DIVIDE([Total Revenue] - prev, prev)
```

## Data model relationships
- orders[customer_id] → customers[customer_id]
- order_items[order_id] → orders[order_id]
- order_items[product_id] → products[product_id]
- order_reviews[order_id] → orders[order_id]
- DateTable[Date] → orders[order_purchase_timestamp]
