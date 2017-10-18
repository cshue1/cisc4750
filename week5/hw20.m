% CHRISTINE SHUE
% DUE: AUGUST 3, 2017
% HW 20: Buffon's Needle Problem
% /u/erdos/students/cshue1/cisc4750/week5/hw20.m

threshold = 1000;
length_of_needle = 2;
for space_btw_lines = 2:12
    hit_rate = 0;
    count_hits = 0;
    for i = 1:threshold
        if needle(length_of_needle,space_btw_lines)
            count_hits = count_hits + 1;
        end
    end
    hit_rate = count_hits/threshold;
    plot(space_btw_lines,hit_rate,'o r');
    hold on;
    fprintf('%4.0f\t%10.4f\n',space_btw_lines,hit_rate)
end