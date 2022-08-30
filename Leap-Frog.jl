# exec '/Users/westonpace/Desktop/Julia-1.6.app/Contents/Resources/julia/bin/julia'
using Plots
using DataFrames

 Velocity_List_1 = []
 Velocity_List_2 = []
 Velocity_List_3 = []
 Velocity_List_4 = []

 Position_List_1 = [[0,0.5]]
 Position_List_2 = [[0,-0.5]]
 Position_List_3 = [[1,0.5]]
 Position_List_4 = [[1,-0.5]]


#Check to see if the problem lies after the first pass through of the vorticies

for i in 1:4000
     Distance_1_4 = sqrt((Position_List_4[i][1]-Position_List_1[i][1])^(2)+(Position_List_4[i][2]-Position_List_1[i][2])^(2))
     Distance_1_3 = sqrt((Position_List_3[i][1]-Position_List_1[i][1])^(2)+(Position_List_3[i][2]-Position_List_1[i][2])^(2))
     Distance_1_2 = sqrt((Position_List_2[i][1]-Position_List_1[i][1])^(2)+(Position_List_2[i][2]-Position_List_1[i][2])^(2))
     Distance_3_4 = sqrt((Position_List_3[i][1]-Position_List_4[i][1])^(2)+(Position_List_3[i][2]-Position_List_4[i][2])^(2))
     Distance_2_3 = sqrt((Position_List_3[i][1]-Position_List_2[i][1])^(2)+(Position_List_3[i][2]-Position_List_2[i][2])^(2))
     Distance_2_4 = sqrt((Position_List_2[i][1]-Position_List_4[i][1])^(2)+(Position_List_2[i][2]-Position_List_4[i][2])^(2))

    if Position_List_1[i][1] != Position_List_3[i][1]
        if Position_List_1[i][1] < Position_List_3[i][1]
            if Position_List_1[i][2] > Position_List_3[i][2]
                 Velocity_1 = [(0.25/(2*pi*Distance_1_2))+(0.25/(2*pi*Distance_1_4))*sin(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_4[i][1]-Position_List_1[i][1]))) - (0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_1[i][2]
                -Position_List_3[i][2])/(Position_List_3[i][1]-Position_List_1[i][1]))),
                            (0.25/(2*pi*Distance_1_4))*cos(atan((Position_List_4[i][2]-Position_List_1[i][2])/(Position_List_4[i][1]-Position_List_1[i][1]))) -
                            (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_3[i][2]-Position_List_1[i][2])/(Position_List_3[i][1]-Position_List_1[i][1])))]
            elseif Position_List_1[i][2] <= Position_List_3[i][2]
                 Velocity_1 = [(0.25/(2*pi*Distance_1_2))+(0.25/(2*pi*Distance_1_4))*sin(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_4[i][1]-Position_List_1[i][1]))) + (0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_3[i][2]
                -Position_List_1[i][2])/(Position_List_3[i][1]-Position_List_1[i][1]))),
                            (0.25/(2*pi*Distance_1_4))*cos(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_4[i][1]-Position_List_1[i][1]))) -
                            (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_3[i][2]-Position_List_1[i][2])/(Position_List_3[i][1]-Position_List_1[i][1])))]
            end
        else 
            if Position_List_1[i][2] < Position_List_3[i][2]
                 Velocity_1 = [(0.25/(2*pi*Distance_1_2))+(0.25/(2*pi*Distance_1_4))*sin(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_1[i][1]-Position_List_4[i][1]))) + (0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_3[i][2]
                -Position_List_1[i][2])/(Position_List_1[i][1]-Position_List_3[i][1]))),
                        -(0.25/(2*pi*Distance_1_4))*cos(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_1[i][1]-Position_List_4[i][1]))) + (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_3[i][2]
                        -Position_List_1[i][2])/(Position_List_1[i][1]-Position_List_3[i][1])))]
            elseif Position_List_1[i][2] >= Position_List_3[i][2]
                 Velocity_1 = [(0.25/(2*pi*Distance_1_2))+(0.25/(2*pi*Distance_1_4))*sin(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_1[i][1]-Position_List_4[i][1]))) - (0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_1[i][2]
                -Position_List_3[i][2])/(Position_List_1[i][1]-Position_List_3[i][1]))),
                        -(0.25/(2*pi*Distance_1_4))*cos(atan((Position_List_1[i][2]-Position_List_4[i][2])/(Position_List_1[i][1]-Position_List_4[i][1]))) + (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_3[i][2]
                        -Position_List_1[i][2])/(Position_List_1[i][1]-Position_List_3[i][1])))]
            end
        end
         Velocity_2 = [Velocity_1[1], -Velocity_1[2]]
        if Position_List_3[i][1] > Position_List_1[i][1]
            if Position_List_3[i][2] >= Position_List_1[i][2]
                 Velocity_3 = [(0.25/(2*pi*Distance_3_4))-(0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_3[i][2]-Position_List_1[i][2])/(Position_List_3[i][1]-Position_List_1[i][1]))) + (0.25/(2*pi*Distance_2_3))*sin(atan((Position_List_3[i][2]
                -Position_List_2[i][2])/(Position_List_3[i][1]-Position_List_2[i][1]))),
                            -(0.25/(2*pi*Distance_2_3))*cos(atan((Position_List_3[i][2]-Position_List_2[i][2])/(Position_List_3[i][1]-Position_List_2[i][1]))) +
                            (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_3[i][2]-Position_List_1[i][2])/(Position_List_3[i][1]-Position_List_1[i][1])))]
            elseif Position_List_3[i][2] < Position_List_1[i][2]
                 Velocity_3 = [(0.25/(2*pi*Distance_3_4))+(0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_1[i][2]-Position_List_3[i][2])/(Position_List_3[i][1]-Position_List_1[i][1]))) + (0.25/(2*pi*Distance_2_3))*sin(atan((Position_List_3[i][2]
                -Position_List_2[i][2])/(Position_List_3[i][1]-Position_List_2[i][1]))),
                            -(0.25/(2*pi*Distance_2_3))*cos(atan((Position_List_3[i][2]-Position_List_2[i][2])/(Position_List_3[i][1]-Position_List_2[i][1]))) +
                            (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_1[i][2]-Position_List_3[i][2])/(Position_List_3[i][1]-Position_List_1[i][1])))]
            end
        else
            if Position_List_3[i][2] > Position_List_1[i][2]
                 Velocity_3 = [(0.25/(2*pi*Distance_3_4)) - (0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_3[i][2]-Position_List_1[i][2])/(Position_List_1[i][1]-Position_List_3[i][1]))) + (0.25/(2*pi*Distance_2_3))*sin(atan((Position_List_3[i][2]
                -Position_List_2[i][2])/(Position_List_2[i][1]-Position_List_3[i][1]))),
                        (0.25/(2*pi*Distance_2_3))*cos(atan((Position_List_3[i][2]-Position_List_2[i][2])/(Position_List_3[i][1]-Position_List_2[i][1]))) - (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_3[i][2]
                        -Position_List_1[i][2])/(Position_List_3[i][1]-Position_List_1[i][1])))]
            elseif Position_List_3[i][2] <= Position_List_1[i][2]
                 Velocity_3 = [(0.25/(2*pi*Distance_3_4)) + (0.25/(2*pi*Distance_1_3))*sin(atan((Position_List_1[i][2]-Position_List_3[i][2])/(Position_List_1[i][1]-Position_List_3[i][1]))) + (0.25/(2*pi*Distance_2_3))*sin(atan((Position_List_3[i][2]
                -Position_List_2[i][2])/(Position_List_2[i][1]-Position_List_3[i][1]))),
                        (0.25/(2*pi*Distance_2_3))*cos(atan((Position_List_3[i][2]-Position_List_2[i][2])/(Position_List_2[i][1]-Position_List_3[i][1]))) - (0.25/(2*pi*Distance_1_3))*cos(atan((Position_List_1[i][2]
                        -Position_List_3[i][2])/(Position_List_1[i][1]-Position_List_3[i][1])))]
            end
        end
         Velocity_4 = [Velocity_3[1], -Velocity_3[2]]
    else
        if Position_List_1[i][2] < Position_List_3[i][2]
             Velocity_1 = [((0.25/(2*pi*Distance_1_2)) + (0.25/(2*pi*Distance_1_3)) + (0.25/(2*pi*Distance_1_4))), 0]
             Velocity_2 = Velocity_1
             Velocity_3 = [(-(0.25/(2*pi*Distance_1_3)) + (0.25/(2*pi*Distance_2_3)) + (0.25/(2*pi*Distance_3_4))),0]
             Velocity_4 = Velocity_3
        else
             Velocity_1 = [((0.25/(2*pi*Distance_1_2)) - (0.25/(2*pi*Distance_1_3)) + (0.25/(2*pi*Distance_1_4))), 0]
             Velocity_2 = Velocity_1
             Velocity_3 = [((0.25/(2*pi*Distance_1_3)) + (0.25/(2*pi*Distance_2_3)) + (0.25/(2*pi*Distance_3_4))), 0]
             Velocity_4 = Velocity_3
        end
    end


    push!(Velocity_List_1 , Velocity_1)
    push!(Velocity_List_2 , Velocity_2)
    push!(Velocity_List_3 , Velocity_3)
    push!(Velocity_List_4 , Velocity_4)

    t = 0.01

    Position_1 = [0.01*Velocity_1[1] + Position_List_1[i][1], 0.01*Velocity_1[2] + Position_List_1[i][2]]
    Position_2 = [0.01*Velocity_2[1] + Position_List_2[i][1], 0.01*Velocity_2[2] + Position_List_2[i][2]]
    Position_3 = [0.01*Velocity_3[1] + Position_List_3[i][1], 0.01*Velocity_3[2] + Position_List_3[i][2]]
    Position_4 = [0.01*Velocity_4[1] + Position_List_4[i][1], 0.01*Velocity_4[2] + Position_List_4[i][2]]

    push!(Position_List_1 , Position_1)
    push!(Position_List_2 , Position_2)
    push!(Position_List_3 , Position_3)
    push!(Position_List_4 , Position_4)

  
end

"""
dim1 = length(Velocity_List_1)
dim2 = length(Velocity_List_1[1])
Velocity_Matrix_1 = zeros(dim1, dim2)

for i in 1:dim1
    for j in 1:dim2
        Velocity_Matrix_1[i,j] = Velocity_List_1[i][j]
    end
end
plot(Velocity_Matrix_1[:,1] , Velocity_Matrix_1[:,2])
"""

dim1 = length(Position_List_1)
dim2 = length(Position_List_1[1])
Position_Matrix_1 = zeros(dim1, dim2)

for i in 1:dim1
    for j in 1:dim2
        Position_Matrix_1[i,j] = Position_List_1[i][j]
    end
end

dim3 = length(Position_List_2)
dim4 = length(Position_List_2[1])
Position_Matrix_2 = zeros(dim3, dim4)

for i in 1:dim3
    for j in 1:dim4
        Position_Matrix_2[i,j] = Position_List_2[i][j]
    end
end

dim5 = length(Position_List_3)
dim6 = length(Position_List_3[1])
Position_Matrix_3 = zeros(dim5, dim6)

for i in 1:dim5
    for j in 1:dim6
        Position_Matrix_3[i,j] = Position_List_3[i][j]
    end
end

dim7 = length(Position_List_4)
dim8 = length(Position_List_4[1])
Position_Matrix_4= zeros(dim7, dim8)

for i in 1:dim7
    for j in 1:dim8
        Position_Matrix_4[i,j] = Position_List_4[i][j]
    end
end




plot(Position_Matrix_1[:,1] , Position_Matrix_1[:,2])
plot!(Position_Matrix_2[:,1] , Position_Matrix_2[:,2])
plot!(Position_Matrix_3[:,1] , Position_Matrix_3[:,2])
plot!(Position_Matrix_4[:,1] , Position_Matrix_4[:,2])
plot!(xlabel = "X-Position(m)", ylabel = "Y-Position(m)")



