class MckessonApi

  # get_studies_by_patient_id("providedApiKey","MRN12345")
  def self.get_studies_by_patient_id(apikey,patient_id)
    studies = RestClient.get( 'http://mckesson.hackathon.siim.org//hmirest/qido/studies',
				{:accept => 'application/json',
				"X-API-KEY" => apikey,
				:params => { 'patientid' => patient_id }})
    return JSON.parse(studies)
  end

  # get_studies_by_date("providedApiKey","20140101","20140518")
  def self.get_studies_by_date(apikey,start_date_str,stop_date_str)
    studies = RestClient.get( 'http://mckesson.hackathon.siim.org//hmirest/qido/studies',
				{:accept => 'application/json',
				"X-API-KEY" => apikey,
				:params => { 'studydate' => "#{start_date_str}-#{stop_date_str}" }})
    return JSON.parse(studies)
  end

end
