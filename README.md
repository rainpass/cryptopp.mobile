# cryptopp.mobile
이 프로젝트는 cryptopp 6.1.0 버전을 android와 ios 환경에서 사용하 수 있도록 빌드하는 것이다.

android
-. android ndk r17c 버전이 필요하다.
-. ndk 다운로드 한 후 압축을 풀고 환경변수 ANDROID_NDK_ROOT 를 압축해제한 폴더로 지정한다.
-. 6.1.0 폴더안에서 ./build-all-android.sh 를 실행하여 빌드를 수행한다.
-. 컴파일 결과는 output/android 에 각 cpu 아키텍쳐별로 생성된다.
-. 생성된 라이브러리를 안드로이드 프로젝트에서 사용하면 된다.

ios
-. Xcode 와 command line tools 가 설치되어 있는 환경에서
-. 6.1.0 폴더안에서 ./build-all-ios.sh 를 실행항 빌드를 수행한다.
-. 컴파일 결과는 output/ios 에 각 cpu 아키텍쳐별로 생성된다.
