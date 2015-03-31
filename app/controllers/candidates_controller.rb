class CandidatesController < ApplicationController
	def show
		request = "http://api.followthemoney.org/?f-core=1&c-t-eid=#{params[:id]}&gro=c-t-id,c-r-ot,d-eid,d-cci,d-ad-st,d-ad-zip,d-empl&APIKey=23c245f6811ed56512f4908201c7e398&mode=json"
		response = HTTParty.get(request)
	    results = JSON.parse(response.body)
	    @last_updated = results['metaInfo']['completeness']['lastUpdated']
	    @records = results['records']

	 end

end

