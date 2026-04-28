# 🛒 Supermarket Sales Analysis (Supermart)

> A comprehensive sales analytics project on a US-based supermarket chain — exploring revenue, profitability, customer segments, and regional performance across 4 years.

---

## 📌 Project Overview

This project analyzes **retail sales data** from a US supermarket chain spanning **2014 to 2017**, covering nearly **10,000 order line items** across 49 states and 531 cities. The dataset includes order logistics, customer segmentation, product categorization, and financial metrics such as sales, profit, quantity, and discount.

The analysis targets business intelligence questions relevant to retail operations:
- Which regions, categories, and sub-categories drive the most profit?
- How do discounts impact profitability?
- Which customer segments generate the most revenue?
- What shipping modes are most frequently used?
- How has performance trended year-over-year?

---

## 📁 Dataset Structure

```
supermarket-sales-analysis/
├── DATA CLEANING/              # Raw data and cleaned Supermart dataset (CSV)
├── SQL/                        # SQL scripts for sales analysis and aggregations
├── SUPERMARKET.pbix            # Power BI dashboard file
├── SUPERMARKET_Dashboard.pdf   # Exported dashboard in PDF format
└── README.md                   # Project documentation
```

---

## 🗂️ Data Dictionary

### `Updated_supermart.csv` — 9,994 rows × 26 columns

Each row represents a single **order line item** (one product within one order).

#### Order & Logistics

| Column | Type | Description |
|---|---|---|
| `Row ID` | integer | Unique row identifier |
| `OrderID` | string | Unique order identifier (e.g., `CA-2016-152156`) |
| `OrderDate` | date | Date the order was placed |
| `ShipDate` | date | Date the order was shipped |
| `ShipMode` | string | Shipping method: `Standard Class`, `Second Class`, `First Class`, `Same Day` |

**Shipping mode distribution:**

| Ship Mode | Frequency |
|---|---|
| Standard Class | 5,968 (most common) |
| Second Class | — |
| First Class | — |
| Same Day | — |

---

#### Customer Information

| Column | Type | Description |
|---|---|---|
| `CustomerID` | string | Unique customer identifier |
| `CustomerName` | string | Full name of the customer |
| `Segment` | string | Customer segment: `Consumer`, `Corporate`, `Home Office` |

**Customer segment split:**

| Segment | Orders |
|---|---|
| Consumer | 5,191 (52%) |
| Corporate | — |
| Home Office | — |

- **793 unique customers** across 5,009 unique orders.

---

#### Geography

| Column | Type | Description |
|---|---|---|
| `Country` | string | Always `United States` |
| `City` | string | 531 unique cities (top: New York City with 915 orders) |
| `State` | string | 49 unique states (top: California with 2,001 orders) |
| `PostalCode` | integer | ZIP code |
| `Region` | string | `West`, `East`, `Central`, `South` |

**Regional order volume:**

| Region | Orders |
|---|---|
| West | 3,203 |
| East | — |
| Central | — |
| South | — |

---

#### Product Information

| Column | Type | Description |
|---|---|---|
| `Product ID` | string | Unique product identifier |
| `Category` | string | Top-level category: `Office Supplies`, `Technology`, `Furniture` |
| `SubCategory` | string | 17 sub-categories (e.g., Binders, Chairs, Phones) |
| `ProductName` | string | Full product name (1,850 unique products) |

**Category breakdown:**

| Category | Orders | 
|---|---|
| Office Supplies | 6,026 |
| Technology | — |
| Furniture | — |

Top sub-category: **Binders** (1,523 orders)

---

#### Financial Metrics

| Column | Type | Description |
|---|---|---|
| `Sales` | float | Revenue from the line item (USD) |
| `Quantity` | integer | Units ordered |
| `Discount` | float | Discount rate applied (0.0 = none, 0.8 = 80% off) |
| `Profit` | float | Profit or loss from the line item (USD) |

**Financial summary:**

| Metric | Min | Mean | Median | Max |
|---|---|---|---|---|
| Sales ($) | $0.44 | $229.86 | $54.49 | $22,638.48 |
| Quantity | 1 | 3.79 | 3 | 14 |
| Discount | 0% | 15.6% | 20% | 80% |
| Profit ($) | -$6,599.98 | $28.66 | $8.67 | $8,399.98 |

> ⚠️ Profit can be **negative**, indicating loss-making orders — likely linked to high discount rates.

---

#### Time Dimensions

| Column | Type | Description |
|---|---|---|
| `Year` | integer | Order year: 2014, 2015, 2016, 2017 |
| `Month` | integer | Order month (1–12) |
| `MonthName` | string | Month name (e.g., `November`) |
| `YearMonth` | string | Combined period for time-series (e.g., `2016-11`) |

- **Date range:** 2014 – 2017 (48 unique year-month periods)
- **Busiest month overall:** November (1,471 orders)
- **Busiest year-month:** December 2017 (462 orders)

---

## 🔍 Key Analysis Questions

This dataset supports a wide range of retail analytics use cases:

1. **Profitability by Category/Sub-Category** — Which product lines make vs. lose money?
2. **Discount Impact** — Is there a correlation between higher discounts and negative profit?
3. **Regional Performance** — Which region has the highest sales and profit margin?
4. **Customer Segmentation** — How do Consumer, Corporate, and Home Office segments compare?
5. **Year-over-Year Growth** — How did sales and profit trend from 2014 to 2017?
6. **Shipping Analysis** — Does ship mode affect profit margins or customer behavior?
7. **Top Customers & Products** — Who are the most valuable customers? What are the best-selling products?
8. **Loss Leaders** — Which orders or products consistently generate losses?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python (pandas, matplotlib, seaborn, plotly) | Data wrangling and visualization |
| SQL | Aggregation, filtering, and segmentation queries |
| Power BI / Tableau | Interactive sales dashboards |
| Jupyter Notebook | Exploratory Data Analysis (EDA) |

---

## ⚙️ Setup & Usage

```bash
# Clone the repository
git clone https://github.com/adityapatel14/Supermart.git
cd Supermart

# Install dependencies
pip install pandas matplotlib seaborn plotly jupyter

# Launch notebook
jupyter notebook
```

Place `Updated_supermart.csv` in the `datasets/supermarket/` directory before running.

---

## 📊 Quick Insights (Preview)

```
📦 Total Orders (line items):   9,994
👥 Unique Customers:              793
🏙️  Cities Covered:               531
📅 Date Range:              2014–2017

💰 Total Revenue:          ~$2.3M (est.)
📉 Avg Discount Applied:      15.6%
📈 Avg Profit per Line:       $28.66
⚠️  Loss-making Orders:     Significant at high discount rates
```

---

## 📌 Notes & Assumptions

- All records are from the **United States** — no international orders.
- The `Unnamed: 0` column is an auto-generated index from the export and can be safely dropped during analysis.
- **Negative profit values** are real and expected — they represent heavily discounted or returned orders.
- `PostalCode` is stored as an integer; leading zeros (common in New England ZIP codes) may be missing and should be zero-padded as strings for geographic mapping.
- `OrderDate` and `ShipDate` are in `DD-MM-YYYY` format — parse with `dayfirst=True` in pandas.
- Each row is a **line item**, not a full order. Aggregate by `OrderID` for order-level analysis.

---

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you'd like to change.

---

## 📄 License

This project is for analytical and educational purposes. Dataset is based on publicly available Superstore sample data based in US.
