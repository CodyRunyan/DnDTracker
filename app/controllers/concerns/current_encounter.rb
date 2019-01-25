module CurrentEncounter

	private

		def set_encounter
			@encounter = Encounter.find(session[:encounter_id])
		rescue ActiveRecord::RecordNotFound
			@encounter = Encounter.create
			session[:encounter_id] = @encounter.id
		end
end