function[scores, L] = pranayre_final_p2()
load('CityData.mat');
ones_vector(1:250) = 1;
mean = zeros(1,9);
for i = 1:9
    mean(1,i) = sum(ratings(:,i))/250;
end
ratings_mean_subtraction = ratings - ((ones_vector')*mean);
covariance_matrix = ((ratings_mean_subtraction')*(ratings_mean_subtraction))/249;
[V,D] = eigs(covariance_matrix,9);
L = eigs(covariance_matrix,9);
scores = ratings_mean_subtraction * V;















