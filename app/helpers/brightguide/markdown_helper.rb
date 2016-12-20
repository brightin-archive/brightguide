module Brightguide
  module MarkdownHelper
    def render_markdown(str)
      markdown_renderer.render(str).html_safe
    end

    private

    def markdown_renderer
      @markdown_renderer = Redcarpet::Markdown.new(StyleguideRenderer)
    end

    class StyleguideRenderer < Redcarpet::Render::HTML
      def block_code(code, _language)
        <<EOS
<div class="styleguide-example">
  <div>#{code}</div>
  <pre>#{CGI.escapeHTML(code).gsub("\n", '&#x000A;')}</pre>
</div>
EOS
      end
    end
  end
end
