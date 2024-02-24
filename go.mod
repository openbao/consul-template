module github.com/openbao/consul-template

go 1.21

// Use a temporary hack to pull in the latest API version via commit hash
// until we've tagged a new API version in openbao's repo.
replace github.com/openbao/openbao/api v1.9.2 => github.com/openbao/openbao/api v0.0.0-20231222185543-009633ab13d1

replace github.com/openbao/openbao/api/auth/kubernetes v0.0.0-00010101000000-000000000000 => github.com/openbao/openbao/api/auth/kubernetes v0.0.0-20231222185543-009633ab13d1

require (
	github.com/BurntSushi/toml v1.3.2
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc
	github.com/fatih/color v1.15.0 // indirect
	github.com/go-jose/go-jose/v3 v3.0.1 // indirect
	github.com/go-test/deep v1.1.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	github.com/hashicorp/go-gatedio v0.5.0
	github.com/hashicorp/go-hclog v1.5.0
	github.com/hashicorp/go-multierror v1.1.1
	github.com/hashicorp/go-rootcerts v1.0.2
	github.com/hashicorp/go-sockaddr v1.0.6
	github.com/hashicorp/go-syslog v1.0.0
	github.com/hashicorp/hcl v1.0.1-vault-5
	github.com/hashicorp/logutils v1.0.0
	github.com/imdario/mergo v0.3.15
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.19 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/mapstructure v1.5.0
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/openbao/openbao/api v1.9.2
	github.com/openbao/openbao/api/auth/kubernetes v0.0.0-00010101000000-000000000000
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.8.4
	golang.org/x/crypto v0.17.0 // indirect
	golang.org/x/sys v0.15.0
	gopkg.in/yaml.v2 v2.4.0
)

require (
	github.com/Masterminds/sprig/v3 v3.2.1
	golang.org/x/exp v0.0.0-20230321023759-10a507213a29
	golang.org/x/text v0.14.0
)

require (
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/semver/v3 v3.2.1 // indirect
	github.com/cenkalti/backoff/v3 v3.0.0 // indirect
	github.com/google/uuid v1.3.1 // indirect
	github.com/hashicorp/go-retryablehttp v0.6.6 // indirect
	github.com/hashicorp/go-secure-stdlib/parseutil v0.1.6 // indirect
	github.com/hashicorp/go-secure-stdlib/strutil v0.1.2 // indirect
	github.com/huandu/xstrings v1.4.0 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/rogpeppe/go-internal v1.11.0 // indirect
	github.com/ryanuber/go-glob v1.0.0 // indirect
	github.com/shopspring/decimal v1.3.1 // indirect
	github.com/spf13/cast v1.5.1 // indirect
	golang.org/x/net v0.17.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
