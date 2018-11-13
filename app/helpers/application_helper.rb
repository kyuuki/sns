module ApplicationHelper
  # https://musicamusik.hatenablog.com/entry/2018/06/09/181439
  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      space_after_headers: true,
      with_toc_data: true
    }

    extensions = {
      autolink:           true,
      no_intra_emphasis:  true,
      fenced_code_blocks: true,
      tables:             true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end
end
