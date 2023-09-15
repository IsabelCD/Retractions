# Retractions

## **Topics**

- Papers about retractions
- Retracted articles
- Citations of retracted articles
- Referee reports

## **Sub-topics**

*Retraction characteristics*

RWD data
- Reasons for retraction
- See who initiated retraction proceedings (if it was the author, publisher, etc.)
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

## Important Links

- [Retraction Watch Database](http://retractiondatabase.org/RetractionSearch.aspx?AspxAutoDetectCookieSupport=1); [User Guide](https://retractionwatch.com/retraction-watch-database-user-guide/)
- [Rank revistas científicas](https://www.scimagojr.com/)
- [Altmetric explorer](https://www.altmetric.com/explorer/login), [PlumX Metrics](https://plumanalytics.com/learn/about-metrics/), [Dimensions](https://www.dimensions.ai/dimensions-data/)


## Possible Exclusion Criteria

- By journal (de 1o decil segundo scimagojr)
- Published less than a year ago
- Reason for retraction being “duplicates” (clerical error and not about article itself)
- Retracted in pre-print stage
- Articles that were re-published in another journal


## **Methodologies and specific visualizations**
(not revised yet)

- Retraction rate by country

  Bar chart with retraction rate per 10000 papers by country (foto no wpp).
  And line chart for that retraction rate, by year.

- Gráfico de autores
    
    y autor, x tempo, dot chart com ponto no primeiro e último retracted article. cor representativo do nº de artigos retraídos do autor. ordenados por nº de artigos retraídos. 
    
- Collaboration network
    
    Network of authors joining author collaborations.
    
- Comparar citações positivas/negativas em relação ao artigo retraído
    
    Text mining sentiment analysis? tenho de saber onde é citado dentro dos artigos para conseguir fazer isto.
    
    ver tanto antes como depois da retração
    
- Regressão logística para avaliar características?
    
    y binário: retracted ou não.
    
- Stacked bar chart countries
    
    2 categories of stack are multiple countries publication and single country publication
    
- Comparar journals “normais” a predatory ones
    
    clustering maybe? ver se as características agrupam em clusters diferentes ou não?
    
- Verificar se as datas de retração para um autor são as mesmas
    
    Verificar se foram em batch. viram um retraído, ent foram ver as outras publicações do autor. Ou dados de um artigo tiveram impacto em outros artigos que fez. 
    
    Ver também se se o mais recente foi retraído, se depois retraíram outros mais antigos, ou se é maioritariamente por ordem cronologica
    
- Spellcheck abstract compare to retractions
    
    pip install pyspellchecker -> this package allows to see spelling. count wrong spellings and correlate
    
    not good for scientific jargon
    
- Cloropeth with network
    
    map of countries with colors representing number of retractions. with flows joining countries that collaborate, with width proportional to number of retractions. 
    
    The map can be normalized by number of articles written by those countries. bc proportion wise, they might have more retractions
    


