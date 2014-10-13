% Copyright: ETH Zurich, 12/2012
% Institute for Pervasive Computing
% Distributed Systems Group
% Christian Beckel (beckel@inf.ethz.ch)

filename = 'data/issm/questionnaires/questionnaires.csv';
questionnaire_data = csvread(filename);

questionnaire_columns = { ...
    'id'; ...
    'adults'; ...
    'children'; ...
    'persons'; ...
    'employed'; ...
    'hours_at_home'; ...
    'when_cooking'; ...
    'type_house'; ...
    'age_house'; ...
    'floor_area'; ...
    'type_space_heating'; ...
    'type_water_heating'; ...
    'number_appliances'; ...
    'hours_tv'; 
    'washing_machine'; ...
    'coffee_machine'; ...
    'electrive_furnace'; ...
    'sauna'; ...
    'pool'; ...
    'aquarium'; ...
    'electric_stove'; ...
    'ratio_energy_saving_lamps'; ...
    'number_non_energy_saving_lamps' ...
};