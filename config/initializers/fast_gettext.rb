FastGettext.add_text_domain 'app', :path => 'locale', :type => :po
FastGettext.default_available_locales = ['en', 'ru', 'ky']
FastGettext.default_text_domain = 'app'
FastGettext.reload!