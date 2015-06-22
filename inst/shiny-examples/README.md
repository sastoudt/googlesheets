<!-- README.md is generated from README.Rmd. Please edit that file -->
Using `googlesheets` in Shiny
=============================

------------------------------------------------------------------------

There are many cool ways to feed data into a Google Sheet:

-   scrape the web
    -   built-in functions such as `importxml`, `importfeed` and `importhtml`
    -   Google Apps scripts -- possibly written by others and baked into Google Sheet "templates" you can copy then customize
-   crowdsource data via Google Forms or direct Sheet editing, on a small or large scale
-   automated data collection based on web services, such as [ifttt.com](https://ifttt.com)

Sample apps
-----------

We've built a few simple apps to get you started in some important use cases:

-   No authentication/authorization:
    -   [01\_read-public-sheet](01_read-public-sheet): simply read a public sheet
    -   *more coming*
    -   [Craigslist Lost and Found](craigslist-lost-and-found): This app reads from a public spreadsheet that utilizes the Google Sheet function `importxml` to read data from Craigslist's Lost and Found listing.
-   Credentials are baked into the app:
    -   [Tweet Collector](tweet-collector): App presents a private (not published to the web) Sheet to app user. App user is allowed to write into the Sheet through constrained input handled by the Shiny app. App user allowed to download the Sheet throught the app. Uses a third party magic Sheet template.
    -   [Embed a Google Form](gs-forms): A Google Form is embedded in the app, allowing user to enter data. App also displays the underlying Sheet, allowing user to see the just-entered data.
-   User provides credentials via the app:
    -   [My Google Sheets Explorer](gs-explorer): This app requires the user to login using their Google account. After authorization, the user is presented with a listing of their sheets, the option to view details of each spreadsheet and inspect the worksheets contained in a spreadsheet.

More inspiration for feeding Google Sheets:
-------------------------------------------

Here are examples of using Google Sheets as an online datastore from Amit Argawal's [blog](http://www.labnol.org/tag/guide/):

-   [GMail Scheduler](http://www.labnol.org/internet/schedule-gmail-send-later/24867/)

-   [Amazon Price Tracker](http://www.labnol.org/internet/amazon-price-tracker/28156/)

-   [Save Tweets for any Twitter Hashtag](http://www.labnol.org/internet/save-twitter-hashtag-tweets/6505/)

-   [Scrape Google Search results](http://www.labnol.org/internet/google-web-scraping/28450/)