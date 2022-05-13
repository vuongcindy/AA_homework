require 'byebug'
# biggest fish

def sluggish_octopus(fishes)
    # O(n^2)
    longest_fish = nil
    longest_fish_length = 0
    i = 0
    while i < fishes.length - 1
        j = i + 1
        while j < fishes.length
            if !longest_fish
                longest_fish = fishes[i]
                longest_fish_length = longest_fish.length
            end
            if fishes[j].length > longest_fish_length
                longest_fish = fishes[j]
                longest_fish_length = longest_fish.length
            end
            j += 1
        end
        i += 1
    end
    longest_fish
end

def dominant_octopus(fishes)
    # O(n log n)
    fishes.sort_by{ |ele| ele.length }[-1]
end

def clever_octopus(fishes)
    # O(n)
    longest_fish = nil
    longest_fish_length = 0
    i = 0 
    while i < fishes.length - 1
        if !longest_fish
            longest_fish = fishes[i]
            longest_fish_length = longest_fish.length
        elsif
            fishes[i].length > longest_fish_length
            longest_fish = fishes[i]
            longest_fish_length = longest_fish.length
        end
        i += 1
    end
    longest_fish
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish_octopus(fishes)
# p dominant_octopus(fishes)
# p clever_octopus(fishes)

# dancing octopus

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hashes = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

def slow_dance(direction, tiles_array)
    # O(n)
    moves = 0
    tiles_array.each do |ele|
        if ele == direction
            return moves
        else
            moves += 1
        end
    end
    moves
end

p slow_dance("up", tiles_array) # => 0
p slow_dance("right-down", tiles_array) # => 3

def fast_dance(direction, tiles_hashes)
    # O(1)
    tiles_hashes.each do |k, v|
        if k == direction
            return tiles_hashes[k]
        end
    end
end

# p fast_dance("up", tiles_hashes) # => 0
# p fast_dance("right-down", tiles_hashes) # => 3

