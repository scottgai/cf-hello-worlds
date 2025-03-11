for (i in 1:120) {
  # Make an API request
  print(paste("Request", i))

  # Pause for 5 seconds between requests
  Sys.sleep(5)
}
