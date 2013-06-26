require "rack/showme/options"
require "rack/showme/message_box"

module Rack
  class Showme
    def initialize(app)
      @app = app
    end

    def call(env)
      @env = env
      @status, @headers, @response = @app.call(env)

      inject_html if initial_page_request?

      [@status, @headers, @response]
    end

    private
    def ajax_request?
      @env["HTTP_X_REQUESTED_WITH"] == "XMLHttpRequest"
    end

    def response_compatible?
      @response.respond_to?(:body)
    end

    def initial_page_request?
      !ajax_request? && html_response? && response_compatible?
    end

    def html_response?
      @headers && @headers["Content-Type"] && @headers["Content-Type"].include?("text/html")
    end

    def inject_html
      css_line = %Q{<style type="text/css">#{read_public_file("showme.css")}</style>\n}
      message_box = MessageBox.new(Options).html

      body = @response.body
      body.gsub!("</body>", "#{css_line}</body>")
      body.gsub!("<body>", "<body>#{message_box}")
      @response.body = body

      @headers["Content-Length"] = @response.body.bytesize.to_s
    end

    def read_public_file(filename)
      output = ::File.open(::File.join(::File.dirname(__FILE__), "showme", "public", filename), "r:UTF-8") do |f|
        f.read
      end
    end
  end
end
