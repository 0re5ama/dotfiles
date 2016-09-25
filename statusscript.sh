span_hi='<span color="#ff8700">'   #colour for normal battery
span_lo='<span color="#dddddd">'     #colour for normal battery
span_sep='<span color="#ff8700">'  #colour for normal battery
span_season='<span color="#b5bd68">'

mon=`date +%m`
case "$mon" in
	"09"|"10"|"11") seas="秋"
		;;
	"12"|"01"|"02") seas="冬"
		;;
	"03"|"04"|"05") seas="春"
		;;
	"06"|"07"|"08") seas="夏"
		;;
esac

echo $span_lo`LANG=ja_JP.UTF-8 date "+%Y年%b%d日(%a)"`' - </span>'$span_hi`date +"%H:%M:%S"`'</span>' $span_season$seas '</span>'
