library(bibliometrix)
library(dplyr)
setwd('C:/Users/isabe/Desktop/Tese/Retractions')

####papers_abt_retractions####
wos_retracted_paper1 <- convert2df(file = "./papers_abt_retractions/wos_retracted_paper1.bib", dbsource = "wos", format = "bibtex")
wos_retracted_paper2 <- convert2df(file = "./papers_abt_retractions/wos_retracted_paper2.bib", dbsource = "wos", format = "bibtex")
wos_retracted_publication1 <- convert2df(file = "./papers_abt_retractions/wos_retracted_publication1.bib", dbsource = "wos", format = "bibtex")

wos_search1 <- mergeDbSources(wos_retracted_paper1, wos_retracted_paper2, wos_retracted_publication1, remove.duplicated = TRUE)
  
  
summary(wos_search1)
head(wos_search1)

wos_search1 <- dplyr::filter(wos_search1, (!grepl("RETRACTION", DT)) & (!grepl("RETRACTED PUBLICATION", DT)))

#View(wos_search)
#janitor::compare_df_cols(wos_retracted_paper1, wos_search)

write.xlsx(wos_search1, './papers_abt_retractions/wos_unido.xlsx', rowNames=FALSE)
parcial <- wos_search1[, c("DI", "AU", "TI", "SO", "DT", "DE", "TC")]

resultados <- biblioAnalysis(wos_search1)

dados_sumarizados <- summary(object = resultados, k=20) #(20) qtd de elementos em cada analise

plot(resultados)

biblioshiny()

####retractions####
wos_retracted_paper1 <- convert2df(file = "./retractions_data/retractions1.bib", dbsource = "wos", format = "bibtex")
wos_retracted_paper2 <- convert2df(file = "./retractions_data/retractions1.bib", dbsource = "wos", format = "bibtex")
wos_retracted_publication1 <- convert2df(file = "./retractions_data/retractions1.bib", dbsource = "wos", format = "bibtex")

wos_search1 <- mergeDbSources(wos_retracted_paper1, wos_retracted_paper2, wos_retracted_publication1, remove.duplicated = TRUE)


summary(wos_search1)
head(wos_search1)

#View(wos_search)
#janitor::compare_df_cols(wos_retracted_paper1, wos_search)

write.xlsx(wos_search1, './retractions_data/wos_unido.xlsx', rowNames=FALSE)
parcial <- wos_search1[, c("DI", "AU", "TI", "SO", "DT", "DE", "TC")]

resultados <- biblioAnalysis(wos_search1)

dados_sumarizados <- summary(object = resultados, k=20) #(20) qtd de elementos em cada analise

plot(resultados)

biblioshiny()




###########

wos_retractions1 <- convert2df(file = "./retractions_data/retractions1.bib", dbsource = "wos", format = "bibtex")
wos_retractions2 <- convert2df(file = "./retractions_data/retractions1.bib", dbsource = "wos", format = "bibtex")
wos_retractions3 <- convert2df(file = "./retractions_data/retractions1.bib", dbsource = "wos", format = "bibtex")

wos_search <- mergeDbSources(wos_retractions1, wos_retractions2, wos_retractions3, remove.duplicated = TRUE)
resultados <- biblioAnalysis(wos_search)

write.xlsx(wos_search, './retractions_data/wos_unido.xlsx', rowNames=FALSE)

dados_sumarizados <- summary(object = resultados, k=20) #(20) qtd de elementos em cada analise

plot(resultados)

biblioshiny()