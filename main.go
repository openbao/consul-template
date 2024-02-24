// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: MPL-2.0

package main // import "github.com/openbao/consul-template"

import "os"

func main() {
	cli := NewCLI(os.Stdout, os.Stderr)
	os.Exit(cli.Run(os.Args))
}
