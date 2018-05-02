# R Code
# Ploting the results
# L. Garcia, A. Lorena, M. de Solto 2017
# Ploting the complexity measures

default <- function() {

  par = element_text(size=14, colour="black")

  plot = theme_bw() + 
    theme(legend.position="top", 
      text=par, axis.text=par, strip.text=par, legend.text=par
    )

  return(plot)
}

distribution <- function(data) {

  data = apply(data[CLASSIFIERS], 1, which.max)
  data = melt(table(CLASSIFIERS[data]))

  pdf("wins1.pdf", width=4, height=4)
    plot = ggplot(data, aes(x=Var1, y=value)) + 
      geom_bar(colour="black", fill="white", stat="identity", 
        position="dodge", width=0.6) + 
      geom_hline(yintercept=0) + 
      default() + ylab("Number of wins") + 
      xlab("") + guides(fill=FALSE)
    print(plot)
  dev.off()
}

histogram <- function(data) {

  table = data[CLASSIFIERS]
  table = melt(table)

  pdf("wins2.pdf", width=4, height=4)
    plot = ggplot(table, aes(x=variable, y=value)) + 
      geom_boxplot() + 
      default() + ylab("Accuracy") + 
      xlab("")
    print(plot)
  dev.off()
}

boxplot <- function(data) {

  data = data.frame(do.call("rbind", data))
  data$Classifier = rep(CLASSIFIERS, each=141)

  table = melt(data)
  table$group = c(rep("a", 1692), rep("b", 1128))

  pdf("boxplot.pdf", width=8, height=9)
    plot = ggplot(table, aes(x=variable, y=value, fill=group)) + 
      geom_boxplot() + facet_wrap( ~ Classifier, ncol=2) + 
      default() +scale_fill_manual(values=c("white", "grey")) + 
      xlab("") + ylab("MSE") + guides(fill=FALSE) + 
      ylim(0, 0.1)
    print(plot)
  dev.off()
}

performance <- function(data, aux) {

  foo = lapply(1:141, function(i) {
    tmp = do.call("rbind", lapply(aux, "[", i,))
    goo = apply(tmp, 2, which.max)
    unlist(data[i,CLASSIFIERS[goo]])
  })
  
  foo = do.call("rbind", foo)
  foo = apply(foo, 2, sum)
  foo = rbind(foo[1:3] - foo[4], foo[1:3] - foo[5])
  colnames(foo) = REGRESSORS[1:3]
  rownames(foo) = c("Random", "Default")
  foo = foo*100

  table = melt(foo)

  pdf("performance.pdf", width=6, height=4)
    plot = ggplot(table, aes(x=Var2, y=value)) + 
      geom_bar(colour="black", fill="white", stat="identity", 
        position="dodge", width=0.6) + facet_wrap( ~ Var1, ncol=4) + 
      geom_hline(yintercept=0) + default() + 
      ylab("Percentage increase of accuracy") + xlab("")
    print(plot)
  dev.off()

}

features <- function(data) {

  aux = do.call("cbind",
    lapply(CLASSIFIERS, function(c) {
      randomForest(formulae(c), data)$importance
    })
  )
  aux = rev(sort(rowMeans(aux)))[1:5]
  table = melt(aux)
  table$Var1 = factor(rownames(table), levels=rownames(table))

  pdf("features.pdf", width=5, height=5)
    plot = ggplot(table, aes(x=Var1, y=value)) + 
      geom_bar(colour="black", fill="white", stat="identity", 
        position="dodge", width=0.6) + default() + 
      theme(axis.text.x=element_text(size=14, angle=90, hjust=1, vjust=0.3)) + 
      geom_hline(yintercept=0) + 
      ylab("Measure Importance") + xlab("")
    print(plot)
  dev.off()
}
