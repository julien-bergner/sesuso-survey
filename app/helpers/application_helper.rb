module ApplicationHelper

  def backToRootLink
    link_to t('.back', :default => t("helpers.links.back")), session["user_root_return_to"], :class => 'btn'
  end
end
