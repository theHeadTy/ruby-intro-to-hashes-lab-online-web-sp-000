def new_hash
  {}
end

def actor
  {:name => 'Dwayne The Rock Johnson'}
end

def monopoly
  { :railroads => {} }
end

def monopoly_with_second_tier
  mon = monopoly
  mon[:railroads].merge!({ 
    :pieces => 4,
    :names => {}, 
    :rent_in_dollars => {}
  })
  mon
end

def monopoly_with_third_tier
  mon = monopoly_with_second_tier
  mon[:railroads][:rent_in_dollars].update({
    :one_piece_owned => 25,
    :two_pieces_owned => 50,
    :three_pieces_owned => 100,
    :four_pieces_owned => 200,
  })
  mon[:railroads][:names].update({ 
    :reading_railroad => {},
    :pennsylvania_railroad => {},
    :b_and_o_railroad => {},
    :shortline => {}
  })
  mon
end

def monopoly_with_fourth_tier
  mon = monopoly_with_third_tier
  mon[:railroads][:names][:reading_railroad].update({ 'mortgage_value' => '$100' })
  mon[:railroads][:names][:pennsylvania_railroad].update({ 'mortgage_value' => '$200' })
  mon[:railroads][:names][:b_and_o_railroad].update({ 'mortgage_value' => '$400' })
  mon[:railroads][:names][:shortline].update({ 'mortgage_value' => '$800' })
  mon
end

monopoly_with_fourth_tier