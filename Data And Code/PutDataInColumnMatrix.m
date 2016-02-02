load HousingData

for i = 1:length(Data.AGE1)
    HousingData(i).ABLMED = Data.ABLMED(i);
    HousingData(i).AGE1 = Data.AGE1(i);
    HousingData(i).BEDRooms = Data.BEDRooms(i);
    HousingData(i).YearBuilt = Data.YearBuilt(i);
    HousingData(i).BURDEN = Data.BURDEN(i);
    HousingData(i).FMR = Data.FMR(i);
    HousingData(i).LM30 = Data.L30(i);
    HousingData(i).LMED = Data.LMED(i);
    HousingData(i).Metro3 = Data.METRO3(i);
    HousingData(i).OtherCost = Data.OtherCost(i);
    HousingData(i).OwnRent = Data.OwnRent(i);
    HousingData(i).Region = Data.Region(i);
    HousingData(i).Rooms = Data.Rooms(i);
    HousingData(i).Status = Data.Status(i);
    HousingData(i).Type = Data.Type(i);
    HousingData(i).Utility = Data.Utility(i);
    HousingData(i).Vacancy = Data.Vacancy(i);
    HousingData(i).Value = Data.Value(i);
end

save HousingDataMatrix HousingData