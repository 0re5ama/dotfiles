span_time='<span color="#ff8700">'   #colour for normal battery
span_date='<span color="#dddddd">'     #color for date
span_temp='<span color="#cc6666">'  #color for temperature
span_season='<span color="#b5bd68">'

mon=`date +%m`
temp=`sensors | grep 'Core 0' | awk '{ print substr($3, 2) }'`
#batt=`upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}'`
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

echo $span_date`LANG=ja_JP.UTF-8 date "+%Y年%b%d日(%a)"`' - </span>'$span_time`date +"%H:%M"`'</span>' $span_season$seas'</span>' $span_temp$temp'</span>'
