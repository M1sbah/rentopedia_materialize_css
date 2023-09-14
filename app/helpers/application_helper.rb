module ApplicationHelper

    def navlink
        if user_signed_in?
            content_tag(:li,(link_to "Category", categories_path ))+
            content_tag(:li,(link_to "Ads", ads_path))+

            content_tag(:li,(link_to "Signed Out", destroy_user_session_path, data: {turbo_method: :delete}))

        else
            content_tag(:li,(link_to "Sign in", new_user_session_path))+
            content_tag(:li,(link_to "Register", new_user_registration_path))
        end
    end

end
