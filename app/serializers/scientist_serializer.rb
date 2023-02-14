class ScientistSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_of_study, :avatar, :planets

  def planets
    self.object.planets
  end


end
