# Retractions

## **Tópicos**

- Papers about retractions
- Retracted articles
- Citations of retracted articles
- Referee reports

## **Sub-tópicos**

*Retraction characteristics*
RWD data
- Reasons for retraction
- Who initiated retraction proceedings (if it was the author, publisher, etc.)
- Geographic differences (compare G7 w/ BRICK, north/south, etc. )
- Analysis by journal (and compare ranking)
- Analysis by scientific area
- Number of retracted articles in time, aggregated by characteristics above
- Reincidence
- Time between article being published and its retraction

WRD data + WOS data
- Difference between retracted article and "normal" article (example by title, length, keywords, etc.)
- How retraction in one article can affect other articles of same author
- How does it affect authors in the same field (or same university?)
- Was the article re-published? How many? How much time after retraction? Reason?


*Citations*
- Citations given motive, journal, etc. 
- Citations of retracted paper: positive or negative (flag them if reason of retraction invalidates finding of the paper that cited).
- Impact of retracted articles (citations, altmetrics, etc.) -> before and after retraction

*Referee reports - Publons data*
- see [The effectiveness of peer review in identifying issues leading to retractions](https://doi.org/10.1016/j.joi.2023.101423)


## Possible Exclusion Criteria

- By journal (de 1o decil segundo scimagojr)
- Published less than a year ago
- Reason for retraction being “duplicates” (clerical error and not about article itself)
- Retracted in pre-print stage
- Articles that were re-published in another journal


## **Methodology/Specific Visualizations**

### Retraction Characteristics/Comparison with Normal Articles

(Temporal trends, reasons for retraction, geographical, journal and scientific area differences)

- Stacked bar chart countries
    
    2 categories of stack are multiple countries publication and single country publication
    
- % of articles that are retracted vs published
    
    stacked bar chart
    
- Heatmap with common reasons
    
    Group reasons of retraction, then see which reasons happen in simultaneous the most
    

### Temporal Trends and Author and Institutional Impact

- Cloropeth with network
    
    map of countries with colors representing number of retractions. with flows joining countries that collaborate, with width proportional to number of retractions. 
    
    The map can be normalized by number of articles written by those countries. bc proportion wise, they might have more retractions
    
- Collaboration network
    
    Network of authors joining author collaborations.
    
- Authors vs time dot chart
    
    dot chart: author in y-axis , time in x. Dot at retracted article time. Color (and sorted) according to nº of retracted articles of author. 
    
- Did an author suffer from multiple simultaneous retractions?
    
    Verificar se foram em batch. viram um retraído, ent foram ver as outras publicações do autor. Ou dados de um artigo tiveram impacto em outros artigos que fez. 
    
    Ver também se se o mais recente foi retraído, se depois retraíram outros mais antigos, ou se é maioritariamente por ordem cronologica
    
    Heatmap maybe?
    
- Are authors cited less after retraction incidents?
    
    Regression analysis. See https://doi.org/10.1016/j.respol.2018.01.012
    

### Citations

- Comparar citações positivas/negativas em relação ao artigo retraído
    
    Text mining sentiment analysis? tenho de saber onde é citado dentro dos artigos para conseguir fazer isto.
    
    ver tanto antes como depois da retração
    
- Descriptive statistics about post-retraction citations
    
    Mean/median nº of post-retraction citations
    
    Frequency of different reasons (or by area/journal) for retraction among subset
    
    Average time between retraction and first post-retraction
    
- Compare retractions with and without post-retraction citations
    
    Statistically significant difference in factors such as:  filed, journal, reason, year, authors history
    

### Referee Reports

- Logistic regression→ probability of reviewers identifying issues leading to retraction
    
    Characteristics used in article: topic similarity (topical distance between review comment and all review comments performed by the same reviewer calculated using word2vec); avg comment length; acceptance rate; seniority; nº reviews.
    

### Impact

- Compare pre and post retraction characteristics
    
    For the first retraction of the authors. see the characteristics before and after (h index, citations, etc.). if we have panel data, we might use a regression to see the impact of a certain characteristic (like citation count)
    
- Cluster the response to retractions
    
    Group authors based on the impact they suffered in various characteristics. May help identify different patterns of impact, such as authors who recover quickly, authors who experience a long-term decline, or authors whose impact remains relatively stable.
    
    Example variables: nº of papers published per year, citation counts per publication, h-index, collaboration network, altmetrics (online mentions, social media activity, media coverage), mean ranking of journal of new publications, etc.
    
- Test statistical significance of change
    



## Important Links

- [Retraction Watch Database](http://retractiondatabase.org/RetractionSearch.aspx?AspxAutoDetectCookieSupport=1); [User Guide](https://retractionwatch.com/retraction-watch-database-user-guide/)
- [Rank revistas científicas](https://www.scimagojr.com/)
- [Altmetric explorer](https://www.altmetric.com/explorer/login), [PlumX Metrics](https://plumanalytics.com/learn/about-metrics/), [Dimensions](https://www.dimensions.ai/dimensions-data/)
