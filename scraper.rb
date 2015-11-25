# This is a template for a Ruby scraper on morph.io (https://morph.io)
# including some code snippets below that you should find helpful

require 'scraperwiki'
require 'mechanize'

agent = Mechanize.new

# Read in a page
page = agent.get("http://foo.com")

# Find somehing on the page using css selectors
p page.at('div.content')

# Write out to the sqlite database using scraperwiki library
ScraperWiki.save_sqlite(["name"], {"name" => "susan", "occupation" => "software developer"})
