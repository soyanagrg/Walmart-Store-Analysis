# Walmart-Store-Analysis
Analysis of Walmart store distribution across the United States  using Python, Pandas, Matplotlib and MySQL

# Walmart Store Analysis 🛒

## Overview
In this project I analyzed Walmart's store data across the US to find patterns in store distribution and business model. Utilizing a dataset of over 5,200 locations, the analysis explores store distribution by state, the ratio of Retail versus Wholesale stores, and which states have the highest Walmart presence. The goal of this project is to practice and demonstrate skills in SQL, Python, and data visualization.

## Questions Analyzed
1. **Operational Health:** What is the current status (Open vs Closed) of stores across the dataset?
2. **Geographic Density:** How are stores distributed by state, and which region show the highest concentration?
3. **Business Model Mix:** What is the ratio of standard Retail stores to Wholesale locations?
4. **Strategic Concentration:** In states with high store counts, how does the presence of Wholesale locations correlate with Retail locations?

## Tools Used
- Python, Pandas, Matplotlib
- MySQL

## Key Findings
### 1. Store Operational Status
The vast majority of the dataset represents active locations, with **5,208 stores operational** and only **1 store marked as closed**. This suggests the data provides a "live" snapshot of Walmart's current infrastructure rather than a historical record of store closures.

<img width="580" height="455" alt="Walmart Store Status Analysis" src="https://github.com/user-attachments/assets/57681fbb-119d-4bcf-b8ee-6bdf0ebd58e0" />

### 2. Geographic Distribution & Regional Strategy
There is a massive disparity in store counts across states, heavily influenced by population and land mass:
#### Southern Dominance: 
Texas leads the nation with **590 stores**, followed by Florida(**386**). The high concentration in states like Georgia and North Carolina suggests a historical and strategic prioritization of the Southern United States.

<img width="570" height="455" alt="Top 10 Store Distribution by State" src="https://github.com/user-attachments/assets/d1bdb7d9-e9cb-4221-9ef4-69606505acc3" />

#### Limited Presence: 
Small-footprint or low-population areas like the **District of Columbia (2)**, **Vermont (6)**, and **Rhode Island (9)** have the lowest counts, illustrating that Walmart's expansion is tightly coupled with geographic scale and consumer volume.

<img width="630" height="470" alt="Bottom 10 Distribution by State" src="https://github.com/user-attachments/assets/fc0f8875-728f-46e8-98e0-e7ca92639724" />

### 3. Retail vs. Wholesale Business Model
Walmart remains a retail-first organization. **Retail stores account for 88.5%** of all locations, while **Wholesale accounts for 11.5%** (601 locations). This indicates that while the wholesale model is a significant part of their business diversity, the primary corporate focus is on the everyday individual consumer.

<img width="389" height="411" alt="Walmart Store Type Breakdown" src="https://github.com/user-attachments/assets/3f262ac4-de5c-4a88-834f-dcb2cd90c156" />

### 4. Wholesale Clustering
Analysis of the top 10 states reveals that Walmart does not usually launch Wholesale stores in isolation. Instead, Wholesale locations are most numerous in states where the Retail foundation is already strongest (Texas, Florida, and California). This suggests a "**Market Saturation**" strategy, where Walmart leverages its existing logistics and brand presence in high-performing retail markets to support its wholesale expansion.

<img width="571" height="455" alt="Top 10 States by Retail vs Wholesale Distribution" src="https://github.com/user-attachments/assets/f10ff354-3b1b-4568-ba52-bef40d495574" />

## What I learned
- How to clean and standardize data using SQL
- How to create grouped bar charts in matplotlib
- How to derive business insights from raw data

## Dataset
Source: Walmart Store Status Public Data (https://walmart-open-data-walmarttech.opendata.arcgis.com/datasets/39ce1c357bd2424ca481db84aed29464_0/explore?location=40.408854%2C-101.323162%2C2)
