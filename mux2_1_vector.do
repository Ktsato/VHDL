transcript off

echo "------- START OF SCRIPT -------" 
onerror { abort }
restart -force
noview *
add wave *

#optional
#view signals
#add list *
#view wave
#view list
#configure list -delta collapse

;# ======= start of stimulus section =======

force sel 0
force i0 1100
force i1 1010
run 100 ns

force sel 1
force i0 1111
force i1 0001
run 100 ns

force sel 1
force i0 0010
force i1 0011
run 100 ns

force sel 0
force i0 1000
force i1 1001
run 100 ns

force sel 0
force i0 0000
force i1 1110
run 100 ns

;# ======= end of stimulus section =======

puts "choosing a zoom-full timing range:"
wave zoomfull
#.wave.tree zoomfull ;# with some versions of modelsim
echo "------- END OF SCRIPT -------"
echo "The time now is $now [string trim $resolution 01]"