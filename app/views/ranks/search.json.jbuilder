json.array! @ranks do |rank|
  json.id rank.id
  json.title rank.title
  json.rank_1 rank.rank_1
  json.rank_2 rank.rank_2
  json.rank_3 rank.rank_3
  json.image_1 rank.image_1
  json.image_2 rank.image_2
  json.image_3 rank.image_3
  json.content_1 rank.content_1
  json.content_2 rank.content_2
  json.content_3 rank.content_3
  json.user_id rank.user_id
end