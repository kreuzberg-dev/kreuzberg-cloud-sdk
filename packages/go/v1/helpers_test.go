package xberg_test

import (
	"errors"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go/v1"
)

// mustClient builds a Client with the given options, failing the test on
// configuration errors. Used to keep test bodies focused on assertions.
func mustClient(t *testing.T, opts ...xberg.Option) *xberg.Client {
	t.Helper()
	client, err := xberg.New(opts...)
	if err != nil {
		t.Fatalf("xberg.New: %v", err)
	}
	return client
}

// asError is a generic wrapper around errors.As that returns a bool, so test
// bodies can write `if !asError(err, &target)` without juggling pointer types.
func asError[T error](err error, target *T) bool {
	return errors.As(err, target)
}
