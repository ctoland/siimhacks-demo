class SiimhacksController < ApplicationController

  def index
    @vendor = params[:vendor] == "agfa" ? "agfa" : "mckesson"
    @apikey = params[:apikey]
    @studies = {}

    if !@apikey.nil?
      if @vendor == "agfa"
	@studies = AgfaApi.get_studies_by_patient_id(@apikey,"51")
      else
    	@studies = MckessonApi.get_studies_by_date(@apikey,"20140101","20141231")
      end
    end
  end

  def fhir
  end

  def send_fhir
    json = params[:json]
    response = Fhir.push_imaging_study(json)
    render :text => response
  end

end
