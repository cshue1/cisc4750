count_hits = 0;
threshold = 1000;
length_of_needle = 2;
space_btw_lines = 2;

for i = 1:threshold
    if needle(length_of_needle,space_btw_lines)
        count_hits = count_hits + 1;
    end
    count_hits
    hit_rate = count_hits/threshold
end