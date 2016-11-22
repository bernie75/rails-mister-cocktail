module ApplicationHelper
  def yield_with_default(holder, default)
    if content_for?(holder)
      content_for(holder).squish
    else
      default
    end
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when :alert   then "alert-error"
    when :notice  then "alert-success"
    end
  end
end
