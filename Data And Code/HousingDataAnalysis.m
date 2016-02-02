% a function that does some pelinemary analysis on the Housing data
% gathered from https://www.huduser.gov/portal/datasets/hads/hads.html. 
% all the related data and code are available on github at:
% https://github.com/saraaamin/Data-Incubator---Housing-data/tree/master/Data%20And%20Code
function analyzeData()

% load a small version of the dataset, no rows were truncated, however i
% selected some columns from the overall data set. This is housing data for
% year 2013
load HousingDataMatrix

roomsNum = [];
utility = [];
age = [];
fareMarketRent= [];
adjustedMedianIncome = [];


for i = 1:length(HousingData)
    roomsNum(i) = HousingData(i).Rooms;
    age(i) = HousingData(i).AGE1;
    utility(i) = HousingData(i).Utility;
    fareMarketRent(i) = HousingData(i).FMR;
    adjustedMedianIncome(i) = HousingData(i).ABLMED;
    
end

% Plotting several figures to look at data relationships
figure()
plot(roomsNum, age, '.')
xlabel('Rooms#')
ylabel('Owner Age')
title('Age of hourse owner vs the number of rooms in the house')

figure()
plot(roomsNum, utility,'.')
xlabel('Rooms #')
ylabel('Utility cost')
title('Comparision of utility amount vs number of rooms in a house')

% use the built in fit function in matlab to find a line that fits the
% relationship between the market rent and income median
linearFit=fit(fareMarketRent',adjustedMedianIncome','poly1');

figure()
plot(linearFit, fareMarketRent, adjustedMedianIncome, '.')
xlabel('Rent')
ylabel('adjusted income for # of bedrooms')
title('Relationship between Market rent and Adjusted income for # of rooms')
end