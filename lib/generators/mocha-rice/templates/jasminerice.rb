#Use this file to set configuration options for MochaRice, all of
#these are initialized to their respective defaults, but you can change
#them here.
MochaRice.setup do |config|

  #Tell MochaRice to automatically mount itself in your application,
  #if set to false, you must manually mount the engine in order to use
  #MochaRice
  #config.mount = true

  #If automatically mounting MochaRice, specify the location that it
  #should be mounted at.  Defaults to /moca, so you could access your
  #tests at http://YOUR_SERVER_URL/mocha
  #config.mount_at = '/mocha'

  #Specify a path where your fixutures can be found.
  #Defaults to 'spec/javascripts/fixtures'
  #config.fixture_path = 'spec/javascripts/fixtures'
end
