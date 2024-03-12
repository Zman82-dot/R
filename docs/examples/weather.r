library(shiny)
library(httr)

ui <- fluidPage(
  titlePanel("Weather Forecast for Philadelphia, PA"),
  sidebarLayout(
    sidebarPanel(
      # Input: API Key
      textInput("api_key", "Enter API Key:", placeholder = "API Key...")
    ),
    mainPanel(
      # Output: Weather Forecast
      textOutput("weather_output")
    )
  )
)

server <- function(input, output, session) {
  
  # Function to retrieve weather forecast
  get_weather_forecast <- function(api_key) {
    url <- paste0("https://api.openweathermap.org/data/2.5/weather?q=Philadelphia,US&appid=", api_key)
    response <- GET(url)
    if (http_status(response)$category == "Success") {
      weather_data <- content(response, as = "parsed")
      return(weather_data)
    } else {
      return(NULL)
    }
  }
  
  # Render weather forecast
  output$weather_output <- renderText({
    req(input$api_key)
    weather_data <- get_weather_forecast(input$api_key)
    if (!is.null(weather_data)) {
      weather_desc <- weather_data$weather[[1]]$description
      temp <- weather_data$main$temp
      return(paste("Weather Forecast:", weather_desc, "| Temperature:", temp, "°F"))
    } else {
      return("Error: Unable to retrieve weather data. Please check your API key.")
    }
  })
}

shinyApp(ui, server)
