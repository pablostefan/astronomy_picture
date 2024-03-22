#! /bin/bash

rm -rf  ../base_app/ios/Pods
rm -rf  ../base_app/ios/Podfile.lock

arch -x86_64 pod repo update

for d in ../*/
do
	if [ "${d%/}" != "../script" ] && [ "${d%/}" != "../keys" ]
		then
		echo "Entrando na pasta ${d%/}";
		cd "${d%/}" || exit;
		echo "Limpando ... ";
		rm -rf .ios
		rm -rf .android
		rm pubspec.lock
		rm .dart_tool
		flutter clean;
		echo "Executando pub get ... ";
		flutter pub get;
	fi
done
exit 0;
		

