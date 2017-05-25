# \<cfspreadsheet /> for Lucee 4.x

###Link to cfspreadsheet for Lucee 5.x:
[https://github.com/Leftbower/cfspreadsheet-lucee-5](https://github.com/Leftbower/cfspreadsheet-lucee-5 "cfspreadsheet-lucee 5.x")

This is a fork of the Team CFAdvance cfspreadsheet-railo extension, modified to work with the Lucee fork of Railo. Please refer to that site for more details.

##Update:
This extension can now be installed into either the Server or Web context.
I've also included a hosted URL for convenience.

##Installation: via Lucee Admin GUI

Install via URL (easiest):

1. Lucee Admin > Extensions > Providers: Add:  `http://cfspreadsheet.leftbower.com/ExtensionProvider.cfc`
1. Lucee Admin > Extensions > Applications:  Click on `<cfspreadhsheet />` icon.
1. Click "Install" Button
1. If installing into the Server context, you may need to add a mapping as follows: Lucee Server Admin > Archives & Resources > Components: Go to "Create new Additional Resource" and add a name and under resource put "{lucee-server}/components/". Save with default settings.
1. Restart Lucee or Tomcat (depending on installation type)

To install it manually, you will create your own temporary extension provider:

1. Download cfspreadsheet-lucee.zip
1. Extract into `/path/to/your/wwwroot` (you should then have 2 files in that folder: cfpoi.zip and ExtensionProvider.cfc)
1. Lucee Admin > Extensions > Providers: Add:  `http://your_local_site_host/ExtensionProvider.cfc` (ensure you are using the correct port in your setup)
1. Lucee Admin > Extensions > Applications:  Click on `<cfspreadhsheet />` icon.
1. Click "Install" Button
1. If installing into the Server context, you may need to add a mapping as follows: Lucee Server Admin > Archives & Resources > Components: Go to "Create new Additional Resource" and add a name and under resource put "{lucee-server}/components/". Save with default settings.
1. Restart Lucee or Tomcat (depending on installation type)