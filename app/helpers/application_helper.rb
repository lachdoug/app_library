module ApplicationHelper


  def markdown_text(text)
    Markdown.new(
      text,
      :hard_wrap, :filter_html, :autolink,
      :no_intra_emphasis, :fenced_code_blocks ).
      to_html.html_safe
  end



end
