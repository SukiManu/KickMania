$data remove storage snbt:data maps[{name:"$(name)"}]
$data modify storage snbt:data maps append value {x:$(x),y:$(y),z:$(z),name:"$(name)",structure_name:"$(structure_name)",place:true}