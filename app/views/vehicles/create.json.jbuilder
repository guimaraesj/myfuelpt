json.form render(partial: "vehicles/new_form", formats: :html, locals: {vehicle: @vehicle}) unless @vehicle.persisted?
