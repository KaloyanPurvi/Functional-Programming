--A task I did for my friend
-- Its about a plant which grows with X inches every day and decreases with Y inches every night
--The question is how many days will it take for the plant to reach a certain height

main::IO()
main=do
    print (growingPlant 5 2 5==1)
    print (growingPlant 5 2 6==2)
    print (growingPlant 10 9 4==1)
    print (growingPlant 100 10 910==10)
    



growingPlant::Int->Int->Int->Int
growingPlant day night reach=
    growingPlantHelp 0 day reach (day-night)
    
growingPlantHelp::Int->Int->Int->Int->Int
growingPlantHelp countDay myReach seekedReach myUpdate=
    if(myReach>=seekedReach) then countDay+1;
    else growingPlantHelp (countDay+1) (myReach+myUpdate) seekedReach myUpdate


