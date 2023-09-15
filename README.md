# Retractions

## **Tópicos**

- Estudos sobre artigos retraídos
- Estudos retraídos
- Citações dos artigos retraídos

## **Sub-tópicos**

- Motivos das retrações: erros científicos, má conduta, ambos ou nenhum
- Diferença entre um retracted article e um “normal” (p.ex. título, len, len título, keywords, etc.)
- See who initiated retraction proceedings (if it was the author, publisher, etc.)
- Dinâmicas regionais (norte vs sul global) das retrações
- Compara G7 aos BRICK
- Análise por journal, área científica
- Comparar retrações ao ranking da revista
- how retraction in one article can affect other articles of same author
- how does it affect authors in the same field
- Re-incidência
- Tempo entre artigo ser publicado e a sua retração
- Nº de retracted ao longo do tempo, comparado ao nº total de publicações (agregado por journal, área, etc.)

*Citações*

- citações tendo em conta motivo
- citations of retracted paper see if positive or negative, flag them if reason of retraction invalidates finding.
- citações given journal (forma de mostrar que foi retracted pode ser impactante).
- Impacto dos retracted articles (citações, Altmetrics, Plumx, etc.) → antes e depois da retração

## **Metodologias/Visualizações Específicas**
    
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
    

## Questões/Pesquisa

- Para as altmetrics qual é a melhor plataforma de se usar
- Como devo filtrar os nossos artigos retraídos
- Como agrupar motivos
- ~~É possível medir o impacto que tem num autor a, se ele colaborou com um autor b que teve uma retração por academic misconduct (num artigo que não tenha sido a colaboração)?~~

## Links Importantes

- [Retraction Watch Database](http://retractiondatabase.org/RetractionSearch.aspx?AspxAutoDetectCookieSupport=1); [User Guide](https://retractionwatch.com/retraction-watch-database-user-guide/)
- [Rank revistas científicas](https://www.scimagojr.com/)
- [Altmetric explorer](https://www.altmetric.com/explorer/login), [PlumX Metrics](https://plumanalytics.com/learn/about-metrics/), [Dimensions](https://www.dimensions.ai/dimensions-data/)

## Possible Exclusion Criteria

- by journal (de 1o decil segundo scimagojr)
- published less than a year ago
- reason for retraction being “duplicates” (clerical error and not about article itself)
