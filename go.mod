module github.com/lepingbeta/go-common-v2-dh-validator-manual

replace (
	github.com/lepingbeta/go-common-v2-dh-log => ../go-common-v2-dh-log
	github.com/lepingbeta/go-common-v2-dh-mongo => ../go-common-v2-dh-mongo
	github.com/lepingbeta/go-common-v2-dh-utils => ../go-common-v2-dh-utils
	github.com/lepingbeta/go-common-v2-dh-json => ../go-common-v2-dh-json
// github.com/lepingbeta => ../
)

go 1.22.1

require (
	github.com/go-playground/validator/v10 v10.20.0
	github.com/lepingbeta/go-common-v2-dh-log v0.0.0-20240507232657-0f30bdfd9492
	github.com/lepingbeta/go-common-v2-dh-mongo v0.0.0-00010101000000-000000000000
	go.mongodb.org/mongo-driver v1.15.0
)

require (
	github.com/gabriel-vasile/mimetype v1.4.3 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/golang/snappy v0.0.1 // indirect
	github.com/klauspost/compress v1.13.6 // indirect
	github.com/leodido/go-urn v1.4.0 // indirect
	github.com/lepingbeta/go-common-v2-dh-json v0.0.0-20240508004009-9396ce750a7f // indirect
	github.com/lepingbeta/go-common-v2-dh-utils v0.0.0-00010101000000-000000000000 // indirect
	github.com/montanaflynn/stats v0.0.0-20171201202039-1bf9dbcd8cbe // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.1.2 // indirect
	github.com/xdg-go/stringprep v1.0.4 // indirect
	github.com/youmark/pkcs8 v0.0.0-20181117223130-1be2e3e5546d // indirect
	golang.org/x/crypto v0.19.0 // indirect
	golang.org/x/net v0.21.0 // indirect
	golang.org/x/sync v0.1.0 // indirect
	golang.org/x/sys v0.17.0 // indirect
	golang.org/x/text v0.14.0 // indirect
)
