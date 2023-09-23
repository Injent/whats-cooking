data merge storage shared:db {ItemWeight:[Bread,Carrot,Potato,Chicken,Chicken,Potato]}
data remove storage shared:db args

execute store result storage shared:db args.size int 1 run data get storage shared:db ItemWeight
function shared:data/set_random_index with storage shared:db args
function shared:data/select_item with storage shared:db args