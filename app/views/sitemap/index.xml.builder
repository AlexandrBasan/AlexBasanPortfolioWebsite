xml.instruct!
        xml.urlset(
        'xmlns'.to_sym => "http://www.sitemaps.org/schemas/sitemap/0.9",
        'xmlns:image'.to_sym => "http://www.google.com/schemas/sitemap-image/1.1"
        ) do
        @static_pages.each do |page|
        xml.url do
        xml.loc "#{page}"
        xml.changefreq("monthly")
        xml.priority(1)
        end
        end

        @users.each do |user|
        xml.url do
        xml.loc "#{user_url(user)}"
        xml.changefreq("monthly")
        end
        end
        @blogs.each do |blog|
        xml.url do
        xml.loc "#{blog_url(blog)}"
        xml.lastmod blog.updated_at.strftime("%F")
        xml.changefreq("monthly")
        xml.priority(0.8)
        
        end
        end

        # Name links
        xml.url do
          xml.loc "#{root_url}"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}#about"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}#contact"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}#skills"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}#cv"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}#portfolio"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        # Name links

        # ru locales
        xml.url do
          xml.loc "#{root_url(locale: :ru)}"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}#about"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}#contact"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}#skills"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}#cv"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}#portfolio"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        end
