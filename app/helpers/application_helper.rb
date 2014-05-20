module ApplicationHelper

  def get_dicom(study,name)
    begin
      tag = Dicom.name_to_tag(name)
	return study[tag]["Value"]
    rescue
	return ""
    end
  end

  def get_dicom_by_tag(study,tag)
    if !tag.nil?
	return study[tag]["Value"]
    else
	return ""
    end
  end

end
