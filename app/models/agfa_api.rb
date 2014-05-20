class AgfaApi

  # get_studies_by_patient_id("providedApiKey", "51")
  def self.get_studies_by_patient_id(apikey, patient_id )
    studies = RestClient.get( 'http://agfa.hackathon.siim.org/wado/studies',
				{:accept => 'application/json',
				:params => { :API_key => apikey, 'patient_id' => patient_id }})
    return JSON.parse(studies)
  end

end
