class NewsController < ApplicationController

  def articles
    #@news = New.all
    require 'rss'
    require 'open-uri'
    rss_results = []
    rss = RSS::Parser.parse(open('http://feeds.feedburner.com/CoinDesk?format=xml').read, false).items[0..5]

    rss.each do |result|
      result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
      rss_results.push(result)
    end
      return rss_results
  end
end
