class Fhir

  # Currently errors with "415 media type not supported"
  # Posts a json message for resource ImagingStudy to the fhir server
  def self.push_imaging_study(json)
   request = RestClient.post "http://fhir.hackathon.siim.org/fhir/ImagingStudy?_format=json",json
   return request.code
  end

end
