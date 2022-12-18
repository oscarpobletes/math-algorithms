%ÓSCAR POBLETE SÁENZ
%Shortest path distance for all pair nodes
clc
clear
%Create and plot a graph
s=[1 1 1 1 2 2 3 4 4 5 6]; %Connections betwwen s and t
t=[2 3 4 5 5 6 6 5 7 7 7];
G=graph(s,t)
plot(G)

%Calculate the shortest path distance between all node pairs in the graph
d=distances(G)

%Find the shortest path distances from node 1, node 2 and node 3  to all
%other nodes in the graph
d2=distances(G,[1 2 3])

%Create and plot another graph (another example with weights)
s=[1 1 1 2 5 3 6 4 7 8 8 8];
t=[2 3 4 5 3 6 4 7 2 6 7 5];
weights=[100 10 10 10 10 20 10 30 50 10 70 10];
G=digraph(s,t,weights);
plot(G,'EdgeLabel',G.Edges.Weight)

%Calculate the shortest path distance between all node pairs in the graph
d3=distances(G)