library(shiny)

shinyUI(
    sidebarLayout(
        sidebarPanel(h3("External Lead Transform App (ELTA)"),width=3,

                fileInput("file", h4("Step 1: Choose a CSV file to Upload.")),
                actionButton("sample","Upload Sample File"),

                br(),
                br(),
                
                h4("Step 2: Format Column Headers"),
                helpText('Click "Update Columns" to change columns
                          to lowercase and remove "." and "_" characters.'),

                actionButton("lower","Update Columns"),
                
                br(),
                br(),
                
                numericInput("Delete", h4("Step 3: Choose Row Numbers to Remove"), 1, step = 1),
                actionButton("Go", "Remove Rows"),
                
                br(),
                br(),
                
                htmlOutput("vars"),
                
                br(),
                
                # h4("Step 5: Select a Column to Edit Values"),
                # htmlOutput("varsedit"),
                # #textInput("editcolumn","Column to Edit"),
                # textInput("oldvalue","Enter Value to Change"),
                # textInput("newvalue","Enter New Value"),
                # #textInput("renamecolumn","Enter New Column Name"),
                # actionButton("update","Update"),
                # 
                # br(),
                # br(),

                h4("Step 5: Download File to CSV"),
                textInput("downloadname","Dataset name:","mydata"),
                downloadButton('downloaddata', 'Download File to CSV')

        ),

        mainPanel(
            fluidPage(
                h2("View, Clean, and Cluster"),
                
                br(),
                br(),
                
                h4("Step 6: Create Cluster"),
                actionButton("cluster","Create Clusters"),
                br(),
                br(),
                numericInput("k","Number of Clusters",10,step=1),
                plotOutput("myplot"),
                div(dataTableOutput('myupload_out'),style="font-size:78%")
            )
        )
    )
)