## Installation
The installation instructions are designed for use on a single node MapR Converged Data Platform sandbox. The path names are specific to that environment, but should be easily changed.

Basic Install:
  1. Ensure that Apache Drill is installed and working
  2. Ensure that 'git' and 'jq' are installed
  3. Use Python 'pip' to install Flask and requests. *Check your Python versions! Linux has both python 2 & 3 installed with links to specific versions!* The application will run under either python 2 or 3 (pip2/pip3 & python2/python3), just make sure you're using the right version of `pip` and the same version of `python`
  4. Clone this repository
  5. Using the Apache Drill UI, create an additional workspace in the 'dfs' storage plugin. The workspace must be called 'traintime', and point to the directory where you cloned this repository
  6. Also in the Apache Drill UI, add "txt" to the 'extensions'  under the 'csv' format. Also add `"extractHeader": true` to the 'csv' format.
  7. Update the storage plugin.
  8. Download the static train scheduling information, and unzip the file in the directory where you cloned this respository. http://web.mta.info/developers/data/mnr/google_transit.zip
  9. Create an empty live feed file (`touch feed.json`) Drill will not create the view properly without the underlying data file existing.
  10. Using `sqlline`, create the views. There are three of them, all named `create-*` To do this from the command line, execute `sqlline -u jdbc:drill: -f create-....sql`
  11. Execute the `run-demo.sh` script (`bash run-demo.sh`) This starts the small Python web server and the script that retrieves the live data.
  12. Point your browser to `http://<ip_of_demo>:5000/static/mncrr.html`
  
  
