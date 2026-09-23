#!/bin/bash

# Best Fit Memory Allocation

echo "Enter number of memory blocks:"
read nb

declare -a block
declare -a original

for (( i = 0; i < nb; i++ ))
do
    echo -n "Size of Block $((i + 1)): "
    read block[i]
    original[i]=${block[i]}
done

echo "Enter number of processes:"
read np

declare -a process
declare -a allocation

for (( i = 0; i < np; i++ ))
do
    echo -n "Size of P$((i + 1)): "
    read process[i]
    allocation[i]=-1
done

# Best Fit: allocate the SMALLEST block that is big enough
for (( i = 0; i < np; i++ ))
do
    best=-1
    for (( j = 0; j < nb; j++ ))
    do
        if (( block[j] >= process[i] ))
        then
            if (( best == -1 ))
            then
                best=$j
            elif (( block[j] < block[best] ))
            then
                best=$j
            fi
        fi
    done

    if (( best != -1 ))
    then
        allocation[i]=$best
        block[best]=$((block[best] - process[i]))
    fi
done

# Display table
echo
echo "Best Fit"
echo "-----------------------------------------------"
printf "%-10s %-15s %-10s\n" "Process" "Process Size" "Block No."
echo "-----------------------------------------------"

for (( i = 0; i < np; i++ ))
do
    if (( allocation[i] != -1 ))
    then
        printf "%-10s %-15s %-10s\n" "P$((i + 1))" "${process[i]}" "$((allocation[i] + 1))"
    else
        printf "%-10s %-15s %-10s\n" "P$((i + 1))" "${process[i]}" "Not Allocated"
    fi
done

echo "-----------------------------------------------"
echo
echo "Block    Original Size    Remaining Size"
for (( j = 0; j < nb; j++ ))
do
    printf "%-8s %-16s %-10s\n" "B$((j + 1))" "${original[j]}" "${block[j]}"
done
