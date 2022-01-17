export CFLAGS="-arch arm64 -miphoneos-version-min=11.0 -isysroot "$(xcrun -sdk iphoneos --show-sdk-path)
CGO_LDFLAGS="-arch arm64 -miphoneos-version-min=11.0 -isysroot "$(xcrun -sdk iphoneos --show-sdk-path)
env CGO_ENABLED=1 GOARCH=arm64 GOOS=darwin CC="clang $CFLAGS" go build -tags ios -v -x -buildmode=c-archive -o libFrpc.a ./cmd/frpc
