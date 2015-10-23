library(shiny)
library(dplyr)
library(ggplot2)
library(cluster)

server = (function(input, output) {
  df <- reactiveValues(myupload = NULL)
  
  observeEvent(input$vars, {
  df$myupload <- df$myupload[,input$vars]
  })

  observeEvent(input$file, {
    
        df$myupload <- read.csv(input$file$datapath,encoding="UTF-8")
    
  })
  
  observeEvent(input$sample, {
    
        df$myupload <- read.csv("data/DataScienceExampleFile.csv",encoding="UTF-8")
    
  })
  
      
  output$vars <- renderUI({
                    
        selectizeInput("vars",h4("Step 4: Select Columns to Keep"),
                        names(df$myupload),
                        names(df$myupload),
                        multiple=T)
                    
         }) 
  
  output$varsedit <- renderUI({
                    
        selectizeInput("varsedit","Choose column to Edit",
                        names(df$myupload),
                        selected="newcolumn",
                        multiple=F)
                    
         }) 
  
  observeEvent(input$lower, {

        lowercase <- df$myupload
        names(lowercase) <- tolower(names(lowercase))
        names(lowercase) <- gsub("[.]", "", names(lowercase)) 
        names(lowercase) <- gsub("[_]", "", names(lowercase))
        df$myupload <- lowercase

  })

  observeEvent(input$Go, {
      
        temp <- df$myupload[-input$Delete, ]
        df$myupload <- temp

  })
  
  
  # observeEvent(input$update, {
  #       
  #       edit <- df$myupload
  #       edit$newcolumn <- edit[,input$varsedit]
  #       edit$newcolumn <- as.character(sub(input$oldvalue,input$newvalue,edit$newcolumn))
  #       df$myupload <- edit
  #       
  # })
  
  observeEvent(input$cluster,{
      
      mydaisy <- daisy(df$myupload)
      hierClusters <- hclust(mydaisy)
      myTree <- cutree(hierClusters,input$k)
      df$myupload <- merge(df$myupload,myTree,by="row.names")
      df$myupload <- df$myupload[,-1]

  }) 
  
  output$myplot <- renderPlot({
      if(input$cluster>0){
      x <- df$myupload[,ncol(df$myupload)]
      myplot <- qplot(x, data=df$myupload, geom="histogram")
      myplot + scale_x_discrete(x)
      myplot + xlab("")
      myplot + ylab("Number")
          
      }
  })
  

  output$myupload_out <- renderDataTable(
         
        df$myupload
        #[,input$vars]
        
  )
  
      # Download File:
  output$downloaddata <- downloadHandler(
        filename = function() { 
            paste(input$downloadname, '.csv', sep='') 
        },
        content = function(file) {
            write.csv(df$myupload, file,row.names=FALSE)
            
  })
        
})