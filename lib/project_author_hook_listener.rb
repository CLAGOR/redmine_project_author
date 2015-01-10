class ProjectAuthorHookListener < Redmine::Hook::ViewListener
  def view_projects_form(context = {})    
    content_tag(:p, context[:form].select(:author_id, 
      options_for_selecting_author(context[:project].author_id), :include_blank => true))
  end

  def options_for_selecting_author(selected)
    options_for_select( 
                      User.all.map do |user|
                        [user.name(:lastname_coma_firstname), user.id]
                      end, selected
                      )
  end 
end