function  rnla  {react-native log-android}
function  rns  {react-native start}
function  rnra  {react-native run-android}
function  air  {
	adb install -r android/app/build/outputs/apk/release/app-release.apk 
}
function  ar ($port=8081)  {adb reverse tcp:$port tcp:$port}
function  arr  {adb reverse tcp:9090 tcp:9090}
function  cskd  {ssh prds@95.211.219.103}
function  gra  {
	cd android
	./gradlew assembleRelease
	cd .. }
function  gras  {
	cd android
	./gradlew assembleReleaseStaging
	cd .. }
function  grc  {
	cd android
	./gradlew clean
	cd ..} 
function  as  {adb shell am start -n com.abrapp.chandkhat/com.abrapp.chandkhat.MainActivity}
function  aid  {adb install -r  android/app/build/outputs/apk/debug/app-debug.apk }
function  alp  {adb shell pm list packages}
function  ap ($appname)  { adb shell pm path $appname}
function  pd  {python downloader.py}
function  jn  {jupyter notebook}
function  rl ($package) {react-native link $package }
function  re  {cd D:\react\new-app}
function  cham {cd D:chamber\tccim_app}
function  chs  {ssh chandkhat@94.130.240.18}
function  ck  {ssh root@95.211.219.103}
function  cm  {adb shell input keyevent 82}
function  purchase  {
	adb shell am start -W -a android.intent.action.VIEW -d "chandkhat://chandkhat/home/purchase/OK/HiMehdi" com.abrapp.chandkhat
}
function  reset  {
	adb shell am start -W -a android.intent.action.VIEW -d "chandkhat://chandkhat/resetpass/HiMehdi" com.abrapp.chandkhat
}
function  detail ($id) {
	adb shell am start -W -a android.intent.action.VIEW -d "chandkhat://chandkhat/home/detail?id=$id" com.abrapp.chandkhat
}
Set-Alias -Name open -Value explorer
Set-Alias -Name rn -Value react-native
function screenshot {
 adb shell screencap -p /sdcard/sc.jpg
 adb pull /sdcard/sc.jpg
}

function rdt {
	adb reverse tcp:8097 tcp:8097
	react-devtools
}

function arp ($port=8081) {
	adb reverse tcp:$port tcp:$port
}

function tsh () {
	ssh app@84.241.52.110 -p 2222
}

function reload {
	adb shell input text 'RR'
}

function glog {
	# git log --graph --decorate --pretty=oneline --abbrev-commit --all
	git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

}

function adbwifi {
	$ip = adb shell "ifconfig | grep -A 1 wlan0 | tail -n 1 | cut -f2 -d: | cut -f1 -d' '"
	adb tcpip 5555
	echo 'disconnect the phone and'
	pause
	adb connect $ip
}

function pipstart {
	pipenv run python app.py
}