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
          xml.loc "#{root_url}#about_us"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}#contact_us"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}more_sites"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}mobile_projects"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}more_saas_projects"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}developers"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url}technologies"
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
          xml.loc "#{root_url(locale: :ru)}#about_us"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}#contact_us"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}more_sites"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}mobile_projects"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}more_saas_projects"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}developers"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        xml.url do
          xml.loc "#{root_url(locale: :ru)}technologies"
          xml.lastmod Time.now.to_date
          xml.changefreq "monthly"
          xml.priority 1.0
        end
        end
