module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Travel_Insight").join(" - ")
      end
    end
  end
end

