if @vehicle.persisted?
  json.vehicleId @vehicle.id
else
  json.form render(partial: "vehicles/new_form", formats: :html, locals: {vehicle: @vehicle})
end
