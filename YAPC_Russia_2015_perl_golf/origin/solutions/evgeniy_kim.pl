#!/usr/bin/perl
($w,$h)=@ARGV;$x=1;@r=([1,0],[0,1],[-1,0],[0,-1]);for(1..$w*$h){$a[$j][$i]=$_;$l[$j][$i]=length $_;$u=$j+$y;$k=$i+$x;($x,$y)=@{$r[++$d%4]} if $a[$u][$k]||$k>=$w||$u>=$h;$i+=$x;$j+=$y}for $i(0..$w-2){$m=1;$m=$l[$_][$i]>$m?$l[$_][$i]:$m for(0..$h-1);for(0..$h-1){$a[$_][$i].=' 'x($m-$l[$_][$i]+1)}}print @$_,"\n" for grep{@$_}@a
