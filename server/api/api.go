package api

import (
	"github.com/dave/protod/pmsg"
)

const (
	DEV_ENV = true
)

func Err(response *pmsg.Bundle, message string) {
	response.MustSet(&Error{
		Type:    Error_ERROR,
		Message: message,
	})
}

func AuthError(response *pmsg.Bundle, message string) {
	response.MustSet(&Error{
		Type:    Error_AUTH,
		Message: message,
	})
}

func ExpiredError(response *pmsg.Bundle, message string) {
	response.MustSet(&Error{
		Type:    Error_EXPIRED,
		Message: message,
	})
}
