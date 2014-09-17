# Temboo makes it simpler and easier to build Ruby applications that connect to over 100 web-based resources and 
# services (e.g. Facebook, Dropbox, US Census data) by standardizing how you interact with their Application Programming
# Interfaces (APIs). Don't worry if you're not familiar with APIs – with Temboo you don't have to worry about the 
# details.

# Here we'll show you how to use Temboo by creating a simple Ruby example that retrieves the latitude and 
# longitude for a specific address from the Google Geocoding API. What makes Temboo uniquely powerful and 
# useful is that, once you know how to use one API, you know how to work with any API in our Library.

# Before we get started, make sure that you've got Ruby 1.9 (or later) and a Ruby code editor.


require "temboo"
require "Library/Google"


# Instantiate the Choreo, using a previously instantiated TembooSession object, eg:
session = TembooSession.new("anmol1771", "SF", "8896dc9a19f94248884de4369dd9b50f")
geocodeByAddressChoreo = Google::Geocoding::GeocodeByAddress.new(session)

# Get an InputSet object for the choreo
geocodeByAddressInputs = geocodeByAddressChoreo.new_input_set()

# Set inputs
geocodeByAddressInputs.set_Address("Srinagar, India")

# Execute Choreo
geocodeByAddressResults = geocodeByAddressChoreo.execute(geocodeByAddressInputs)

# Print lat/lon
printf("Latitude: %s\n", geocodeByAddressResults.get_Latitude())
printf("Longitude: %s\n", geocodeByAddressResults.get_Longitude())