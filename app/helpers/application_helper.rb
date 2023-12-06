module ApplicationHelper
  def show_svg(path)
    File.open("app/assets/images/svg/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def current_page?(page)
    page == controller_name
  end

end
