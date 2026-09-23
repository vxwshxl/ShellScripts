#!/bin/zsh

echo "Enter number of processes:"
read n

declare -a bt
declare -a wt
declare -a tat

echo "Enter burst time for each process:"

for (( i = 0; i < n; i++ ))
do
    echo -n "Burst time for P$((i + 1)): "
    read bt[i]
done

# Waiting time for first process
wt[0]=0

# Calculate waiting time
for (( i = 1; i < n; i++ ))
do
    wt[i]=$((wt[i - 1] + bt[i - 1]))
done

# Calculate turnaround time
for (( i = 0; i < n; i++ ))
do
    tat[i]=$((wt[i] + bt[i]))
done

# Calculate averages
total_wt=0
total_tat=0

for (( i = 0; i < n; i++ ))
do
    total_wt=$((total_wt + wt[i]))
    total_tat=$((total_tat + tat[i]))
done

avg_wt=$(echo "scale=2; $total_wt / $n" | bc -l)
avg_tat=$(echo "scale=2; $total_tat / $n" | bc -l)

# Display table
echo
echo "---------------------------------------------"
echo "Process    Burst Time    Waiting Time    Turnaround Time"
echo "---------------------------------------------"

for (( i = 0; i < n; i++ ))
do
    echo "P$((i + 1))          ${bt[i]}             ${wt[i]}              ${tat[i]}"
done

echo "---------------------------------------------"
echo "Average Waiting Time    = $avg_wt"
echo "Average Turnaround Time = $avg_tat"
