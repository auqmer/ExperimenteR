#************************************************************************
# Title: centralTendency.R
# Author: William Murrah
# Description: Demonstrating Central Tendency
# Created: Monday, 07 September 2020
# R version: R version 4.0.2 (2020-06-22)
# Project(working) directory: /home/wmmurrah/Projects/QMER/ExperimenteR
#************************************************************************

# Sample scores
scores <- c(1,1,2,2,2,2,3,3)

# Calculare mean by "hand"
sum(scores)/length(scores)

# Using built-in function
mean(scores)

table(scores)

barplot(table(scores))

mean(scores + 2)

c_scores <- scores - mean(scores)

cbind(scores, c_scores)

sum(c_scores)

sort(scores)
median(scores)

table(scores)


normal_salaries <- c(40000, 45000, 50000)
mean(normal_salaries)
median(normal_salaries)

billGates_salary <- 3.71e9

awkward_conversation <- c(normal_salaries, billGates_salary)
awkward_conversation

mean(awkward_conversation)
median(awkward_conversation)
