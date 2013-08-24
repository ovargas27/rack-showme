require "rack/showme/options"
require "rack/showme/message_box"
require "rack/showme/breakpoints_box"

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

    def display_breakpoints?
     @display_breakpoints ||= Options.show_breakpoints
    end

    def inject_html
      body = @response.body
      body.gsub!("</body>", "#{css_line}</body>")
      body.gsub!("<body>", "<body>#{show_boxes}")
      @response.body = body

      @headers["Content-Length"] = @response.body.bytesize.to_s
    end

    def css_line
      files = ["showme.css"]
      files << "showme.breakpoints.css" if display_breakpoints?
      %Q{<style type="text/css">#{files.map{|file| read_public_file(file) }.join()}</style>\n}
    end

    def show_boxes
      html_string = MessageBox.new(Options).html
      html_string + BreakpointsBox.new(Options).html if display_breakpoints?
    end

    def read_public_file(filename)
      output = ::File.open(::File.join(::File.dirname(__FILE__), "showme", "public", filename), "r:UTF-8") do |f|
        f.read
      end
    end
  end
end
