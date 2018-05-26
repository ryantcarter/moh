module ApplicationHelper
  # For parsing markdown into HTML that we can play with
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      disable_indented_code_blocks: true,
      space_after_headers: true,
      footnotes: true)
    return markdown.render(text).html_safe
  end
end
