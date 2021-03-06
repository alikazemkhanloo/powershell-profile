function  rnla  {react-native log-android}
function  rns  {react-native start}
function  rnra  {react-native run-android}
function  air  {
	adb install -r android/app/build/outputs/apk/release/app-release.apk 
}
function  ar ($port=8081)  {
	if($port -eq 8081 ){
	  adb reverse tcp:5000 tcp:5000
	}
	adb reverse tcp:$port tcp:$port
}
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
function  aid  {adb install -r  android/app/build/outputs/apk/debug/app-debug.apk }
function  alp  {adb shell pm list packages}
function  ap ($appname)  { adb shell pm path $appname}
function  jn  {jupyter notebook}
function  rl ($package) {react-native link $package }
function  re  {cd D:\react\}
function  cham {cd D:chamber\tccim_app}
function  cm  {adb shell input keyevent 82}

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

function reload {
	adb shell input text 'RR'
}

function bsh {
  ssh app@171.22.27.116
}

function glog {
	# git log --graph --decorate --pretty=full --abbrev-commit --all
	git log --all --graph --pretty=format:'%C(auto) %h %d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

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

function fogit ($state='e') {
	if($state -eq 'e'){
		git config --global http.proxy fodev.org:8118
		git config --global https.proxy fodev.org:8118
	}
	if($state -eq 'd'){
		git config --global --unset http.proxy
		git config --global --unset https.proxy
	}
}
