class WaistFit < ActiveEnum::Base
  value :id => 1, 
        :name => 'Loose', 
        :desc => "Will fall right off without a belt"

  value :id => 2, 
        :name => 'Bit Loose', 
        :desc => "Only a little baggy"

  value :id => 3, 
        :name => 'Close Fit', 
        :desc => "Average Fit"

  value :id => 4, 
        :name => 'Tight', 
        :desc => "Snug around the butt"

  value :id => 5, 
        :name => 'Can\'t button', 
        :desc => "Uncomfortably tight through the butt"
end