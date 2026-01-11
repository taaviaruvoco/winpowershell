$list1 = @(1, 2, 3) #esimene numbrite list
$list2 = @(4, 5, 6) #teine numbrite list

$list3 = @() #kolmas list numbrite jaoks mis on hetkel tühi

#liidame esimese ja teise listi liikmete summad vastavalt kokku
#ja lisame need kolmandasse listi
$list3 += $list1[0] + $list2[0]
$list3 += $list1[1] + $list2[1]
$list3 += $list1[2] + $list2[2]

$list3