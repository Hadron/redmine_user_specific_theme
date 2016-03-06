module RedmineUserSpecificTheme
  class Hooks < Redmine::Hook::ViewListener
    def view_my_account_preferences(context = {})
      context[:controller].send(:render_to_string, {
          :partial => 'hooks/redmine_user_specific_theme/view_my_account_preferences',
          :locals => context
        })
    end
  end
end
