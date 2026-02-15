SitemapGenerator::Sitemap.default_host = "https://www.tousbienintegres.eu"

SitemapGenerator::Sitemap.create do
  add root_path, priority: 1.0, changefreq: 'daily'
  add about_path
  add proposals_path
  add how_to_vote_path
  add legal_path
  add privacy_path
  add cookies_path
  add accessibility_path

  # Articles
  Article.find_each do |article|
    add article_path(article), lastmod: article.updated_at
  end
end
