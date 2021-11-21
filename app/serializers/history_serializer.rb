class HistorySerializer < ActiveModel::Serializer
  attributes :id, :player1_id, :player2_id

  belongs_to :player1, serializer: PlayerSerializer
  belongs_to :player2, serializer: PlayerSerializer

end
