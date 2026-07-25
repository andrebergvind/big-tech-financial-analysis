


The SQL analysis primarily focused on developing an initial understanding of company performance and financial health before conducting deeper comparative analysis through visualization.

All codes used can be accessed here: [SQL Analysis Codes](./sql-analysis.sql)

To kick off the analysis i began with examining which company had the highest revenues each year
Apple showcased highest revenue each year except for Microsoft in 2009.
The code used:



After, followed an examination of various average profitability metrics with an emphasis on ROE per company over the 14 years.
The reason was to get an understanding of how the companies have performed in terms of profitability from an investors perspective over the entire time period.
The outcome showcased Apple at the top with an average of 61.27% ROE and an average of 33.56% ROI.
Google on the other hand showed the lowest average ROE of 17.11% but second highest net margin and current ratio.
These metrics were further analysed through visualisations conducted in Tableau.


Therafter, i went on to examine revenue growth, EPS growth, and whether earnings are improving over time.
The reson for this was to understand if these profitability metrics are increasing or decreasing
The result indicated a huge growth for NVIDIA in the later years. Intel however, performs much worse in terms of revenue and earnings per share.



The next step was to understand how efficiently companies convert revenue into profit. Primarily, this step of the analysis focused on gross and net margins. 
The outcome favoured Microsoft and NVIDIA with stable increasing values of around 65% Gross margin and 36% Net margin in later years, substantially higher than their competitors.



Therafter, the analysis proceeded with examining financial stability regarding liquidity and debt to equity ratio among the companies.
The results were fairly similar among Intel, Microsoft, and NVIDIA, increasing over the past years all falling in under 0.45. 
Apple however showcased a much larger debt to equity ratio steadily increasing and falling in at 2.4% in 2022.
Google showed the lowest debt to equity value of approximately 0.1.


In terms of liquidity the outliers are NVIDIA and Apple. NVIDIA has a current ratio of over 6, compared to Apple that falls in below 1. NVIDIA’s high current ratio may suggest a very strong liquidity position, but could also indicate underutilized short-term assets.
Apple’s current ratio below 1 may indicate tighter short-term liquidity, although this should be interpreted alongside its strong cash generation and profitability.



Next query was used to examine and analyse current financial position.
The outcome showed Apple, as previously concluded, with the highest Market cap,  Revenue, Net income, ROE and ROI, however also with the highest dept to equity ratio and lowest current ratio.
Microsoft showcased the highest earnings per share, net profit margin, and lowest debt to equity ratio.
NVIDIA presented the highest liquidity substantially lower net income than all of its competitors except for Intel.
Google had the second highest current ratio and lowest debt equity ratio.
Intel fell in the bottom in all profitability ratios, and showcased a deficit in free cash flow per share.


Finally the analysis examined the earnings per share growth from 2021 to 2022.
The result showcased a massive growth in earnings per share for NVIDIA of 122.54%, followed by Microsoft and Apple, (both below 20% increase).
Worth noting is that Google and Intel had both decreased significantly with approximately 19 respectively 60%.

---


**Apple**

Apple demonstrates the strongest overall financial position among the companies analysed. The company has throughout the period assesed, maintained the highest average revenue while also holding the largest market capitalization since 2018. These metrics reflect strong investor confidence, brand dominance, and consistent consumer demand.

From a prospective investor perspective, Apple's ROE significantly outperforms competitors, indicating exceptional efficiency in generating shareholder returns. However, the company also presents the highest D/E ratio, suggesting that leverage and aggressive capital structure strategies are major factors for these returns.

At the same time, the company's current ratio falls in at 0.9 which highlights an uncertainty for how the company could be solvent enough to pay off all debts if product demand would rapidly decrease. While this certainly increases financial risk, Apple continues to demonstrate strong profitability, positive EPS growth, and significant market capitalisation, suggesting that the company has historically been able to utilize leverage effectively.

As showcased on the dashboard, Apple's revenue growth has remained relatively stable over the period examined, although growth rates from 2022 slowed compared to previous year. At the same time, EPS growth increased in 2022, potentially reflecting improved profitability and or share buybacks.

Overall, Apple represents a relatively lower risk and long-term stability investment compared to the otehr companies. With strong profitability and shareholder value creation, Apple appears well positioned to maintain its market leadership. However, as signalised by its maturing profile, future growth potential could be more moderate the coming years compared to faster growing technology competitors.

**Microsoft**

Microsoft presents the most balanced financial profile in the analysis. The company combines strong revenue expansion, stable profitability, high profitability margins, and strong market capitalisation without excessive leverage.

Compared to its long-term profitability averages, Microsoft's 2022 metrics remain exceptionally strong, showing that the company has maintained momentum rather than experiencing stagnation. Its net margin is the highest of the companies analysed, reflecting operational efficiency and strong pricing power.

The company's low D/E ratio indicates a healthier balance between growth and financial risk compared to Apple for example. On top of that, EPS growth continued increasing in 2022, suggesting strong earnings resulting in increased attractiveness for investors.

Overall, Microsoft appears to offer one of the strongest combinations of stable growth potential, financial stability, profitability, and manageable risk exposure.

**NVIDIA**

NVIDIA is currently experiencing the most explosive growth trajectory among the companies analysed. Although historically smaller in revenue and overall profitability compared to the rest, the company shows an exceptional acceleration over the last years, showcased by its current profitability metrics over its averages.

With one of the top net margins in 2022, NVIDIA possesses strong pricing power and operating efficiency. The company's 2022 EPS growth dramatically exceeded competitors, reflecting its highly profitable increase on a per-share basis. These two metrics combined signalise strong fundamental health, and a higher likelihood of future dividend payouts or share price appreciation.

Yet, despite having a strong net margin, NVIDIA's 2022 ROE was only 36.6%, falling below Microsoft, and substantially lower than Apple. However, this does not in any way indicate a weak operational efficiency, but rather that NVIDIA has not matured to the same stage as its competitors yet, as it is still not collecting the same amount of revenue compared to its shareholder equity.

Although its market capitalization declined in 2022 alongside the broader technology sector, NVIDIA still maintained significantly stronger long-term growth momentum than most competitors. From an investor standpoint, NVIDIA represents a high growth, but high risk investment strongly dependent on future technological and AI market expansion.

**Google**

Google demonstrates strong financial health and one of the most conservative financial profiles among the companies analysed. Its low D/E ratio and high current ratio indicate strong liquidity and low financial risk, suggesting it may be a safer option for investors seeking financial stability.

The company maintains stable revenue growth throughout the period while preserving strong profitability and very low debt exposure. Compared to many large corporations, this creates the impression of a company that has been able to expand largely through the strength of its internal business cabalities rather than though financial leverage.

However, its current net margin and ROE being below their historical averages may suggest that the company is not operating at its strongest level compared to previous years. Additionally, EPS growth turned negative in 2022.

None the less, long-term revenue trends and profitability metrics remain increasingly strong. Therefore, rather than changing the broader perception of the company, it appears more as a temporary setback within an otherwise consistent track record of strong performance.

Overall, Google's investment profile can therefore be interpreted as a balanced growth investment with strong financial stability, lower leverage risk, and continued long-term expansion potential.

Yet, if it would be the most suitable option to invest in at this moment, of the companies analysed, remains uncertain.

**Intel**

Intel shows the weakest financial performance among the companies analysed. While it maintained moderate revenue levels historically, recent trends indicate weakening competitiveness leading to declining investor confidence.

The dashboard highlights significantly negative EPS growth in 2022, revenue decline, and comparatively low profitability metrics, particularly to company average. Market capitalization growth also lagged substantially behind competitors, particularly compared to NVIDIA within the semiconductor sector.

Although Intel maintains moderate leverage levels and acceptable liquidity, these strengths are overshadowed by operational underperformance and declining growth momentum.

From an investor perspective, Intel appears to represent the highest risk investment among the five companies analysed. Intel may still appeal to value oriented investors expecting a long-term turnaround, but current performance indicators suggest increasingly weakening market positioning relative to competitors.

