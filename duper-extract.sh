#!/bin/sh
export PATH=$PATH:/Users/runner/Library/Android/sdk/build-tools/29.0.0/
sleep 120

# Install WhatsApp normally and extract Arm64 libraries
/Users/runner/Library/Android/sdk/platform-tools/adb root

# Replace libs.spo with arm64-v8a libs.spo 
#apktool d -rs WhatsApp.apk
#cp WhatsApp/assets/compressed/arm64-v8a/libs.spo WhatsApp/assets/compressed/armeabi-v7a/.
#cp WhatsApp/assets/compressed/arm64-v8a/libs.spo WhatsApp/assets/compressed/x86/.
#cp WhatsApp/assets/compressed/arm64-v8a/libs.spo WhatsApp/assets/compressed/x86_64/.
#apktool b WhatsApp
#java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk 
/Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp.apk
#rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spo/ . && zip -r libs.spo.arm64.zip libs.spo/
rm -rf ./libs.spo
/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spo with x86 libs.spo 
#apktool d -rs WhatsApp.apk
#cp WhatsApp/assets/compressed/x86/libs.spo WhatsApp/assets/compressed/arm64-v8a/.
#cp WhatsApp/assets/compressed/x86/libs.spo WhatsApp/assets/compressed/armeabi-v7a/.
#cp WhatsApp/assets/compressed/x86/libs.spo WhatsApp/assets/compressed/x86_64/.
#apktool b WhatsApp
#java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
#rm -rf ./WhatsApp
#/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
#/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spo/ . && zip -r libs.spo.x86.zip libs.spo/
#rm -rf ./libs.spo
#/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
#/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp
#
## Replace libs.spo with x86_64 libs.spo 
#apktool d -rs WhatsApp.apk
#cp WhatsApp/assets/compressed/x86_64/libs.spo WhatsApp/assets/compressed/arm64-v8a/.
#cp WhatsApp/assets/compressed/x86_64/libs.spo WhatsApp/assets/compressed/armeabi-v7a/.
#cp WhatsApp/assets/compressed/x86_64/libs.spo WhatsApp/assets/compressed/x86/.
#apktool b WhatsApp
#java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
#rm -rf ./WhatsApp
#/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
#/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spo/ . && zip -r libs.spo.x86_64.zip libs.spo/
#rm -rf ./libs.spo
#/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
#/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp
#
## Replace libs.spo with armeabi-v7a libs.spo 
#apktool d -rs WhatsApp.apk
#cp WhatsApp/assets/compressed/armeabi-v7a/libs.spo WhatsApp/assets/compressed/arm64-v8a/.
#cp WhatsApp/assets/compressed/armeabi-v7a/libs.spo WhatsApp/assets/compressed/x86/.
#cp WhatsApp/assets/compressed/armeabi-v7a/libs.spo WhatsApp/assets/compressed/x86_64/.
#apktool b WhatsApp
#java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
#rm -rf ./WhatsApp
#/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
#/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spo/ . && zip -r libs.spo.armeabi-v7a.zip libs.spo/
#rm -rf ./libs.spo
#/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
#/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp
