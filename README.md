# MeuLog

Nesse package temos um xcframework.

### Comando para gerar o archive (binário) para iphone
`xcodebuild archive -scheme MeuLog -configuration Release -destination 'generic/platform=iOS' -archivePath './build/MeuLog.framework-iphoneos.xcarchive' SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES`


### Comando para gerar o archive (binário) para iphone simulador
`xcodebuild archive -scheme MeuLog -configuration Release -destination 'generic/platform=iOS Simulator' -archivePath './build/MeuLog.framework-iphonesimulator.xcarchive' SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES`


### Comando para unir os dois archives gerados
`xcodebuild -create-xcframework -framework './build/MeuLog.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/MeuLog.framework' -framework './build/MeuLog.framework-iphoneos.xcarchive/Products/Library/Frameworks/MeuLog.framework' -output './MeuLog.xcframework'`


### Referência
`https://developer.apple.com/documentation/xcode/creating-a-multi-platform-binary-framework-bundle`
