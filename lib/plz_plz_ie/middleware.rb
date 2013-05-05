module PlzPlzIE
  class Middleware
    IEVR = /(?:MSIE)[\/ ]?([0-9.]+)/i

    def initialize(app,options={})
      @app = app
      @lastest = options[:lastest] || 9
      @template = options[:path] || File.expand_path("../templates/plz_plz_ie.html", __FILE__)
    end

    def call(env)
      ua = env['HTTP_USER_AGENT'].to_s
      if has_seat?(ua)
        @app.call env
      else
        [500,{ "Content-Type" => "text/html; charset=utf-8" },[File.read(@template)]]
      end
    end

    private
      def has_seat? ua
        !ua.empty? && (ua.match(IEVR).nil? || $1.split('.').first.to_i >= @lastest)
      end
  end
end