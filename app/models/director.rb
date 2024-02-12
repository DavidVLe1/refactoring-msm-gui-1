# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    my_id = self.id
    matching_movies=Movie.where({:director_id => my_id})

    return matching_movies
  end

  #three 1-n associations:
  # -Director => Movie
  # -Movie => Character
  # -Actor =>Character

  #Try define: 6 methods
  # x Director#filmography
  # - Movie#director
  # - Movie#chracters
  # - Character#movie
  # - Actor#characters
  # - Character#actor
end
