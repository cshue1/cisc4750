function hit = needle(needle_length,space_length)
    hit = false;
    half_length = needle_length/2;
    alpha = pi/2*rand();
    horiz_length = half_length*cos(alpha);
    distance = (space_length/2)*rand();
    if horiz_length >= distance
        hit = true;
    end
end