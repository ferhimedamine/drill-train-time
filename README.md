# A Very Simple Real-Time Drill Dashboard
This demonstration uses a simple Python web service and Apache Drill to display the current train performance for the main line commuter trains into and out of Grand Central Terminal in New York. Part of the data is static: the schedules, trips, routes, and trains. This data is combined using Apache Drill views with the real time data feed from the railroad.

The demonstration uses several different open source technologies to accomplish this:
  1. Apache Drill
  2. Python and the Flask web service framework
  3. DataTables Table plug-in for jQuery for automatic update and HTML rendering


