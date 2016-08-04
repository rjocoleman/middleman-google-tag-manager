require 'middleman-core'

class GoogleTagManager < ::Middleman::Extension
  option :container_id, ENV['GTM_CONTAINER_ID'], 'Google Tag Manager container ID'
  option :development, true, 'Render tag in development environment'

  def after_configuration
    unless options.container_id
      $stderr.puts 'Google Tag Manager: Please specify a container ID'
      raise ArgumentError, 'No container ID given' if display?
    end
  end

  helpers do
    def google_tag_manager
      options = extensions[:google_tag_manager].options
      return unless !legacy_development? && options.development

      @text ||= <<-END.gsub(/^ {8}/, '')
      <!-- Google Tag Manager -->
      <noscript><iframe src="//www.googletagmanager.com/ns.html?id=#{options.container_id}"
      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
      <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
      new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','#{options.container_id}');</script>
      <!-- End Google Tag Manager -->
      END
    end

    # Support for Middleman >= 3.4
    def legacy_development?
      # Middleman 3.4
      is_development = try(:development?)
      unless is_development.nil?
        return is_development
      end

      # Middleman 4.x
      app.development?
    end
  end

  private

  def display?
    app.build? || app.development? && options.development
  end

end

::Middleman::Extensions.register(:google_tag_manager, GoogleTagManager)
