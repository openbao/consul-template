package main

import (
	"bytes"
	"io/ioutil"

	"github.com/hashicorp/go-syslog"
	"github.com/hashicorp/logutils"
)

// Levels are the log levels we respond to=o.
var Levels = []logutils.LogLevel{"DEBUG", "INFO", "WARN", "ERR"}

// NewLogFilter returns a LevelFilter that is configured with the log levels that
// we use.
func NewLogFilter() *logutils.LevelFilter {
	return &logutils.LevelFilter{
		Levels:   Levels,
		MinLevel: "WARN",
		Writer:   ioutil.Discard,
	}
}

// ValidateLevelFilter verifies that the log levels within the filter are valid.
func ValidateLevelFilter(min logutils.LogLevel, filter *logutils.LevelFilter) bool {
	for _, level := range filter.Levels {
		if level == min {
			return true
		}
	}
	return false
}

/// ------------------------- ///

// syslogPriorityMap is used to map a log level to a syslog priority level.
var syslogPriorityMap = map[string]gsyslog.Priority{
	"DEBUG": gsyslog.LOG_INFO,
	"INFO":  gsyslog.LOG_NOTICE,
	"WARN":  gsyslog.LOG_WARNING,
	"ERR":   gsyslog.LOG_ERR,
}

// SyslogWrapper is used to cleaup log messages before writing them to a
// Syslogger. Implements the io.Writer interface.
type SyslogWrapper struct {
	l    gsyslog.Syslogger
	filt *logutils.LevelFilter
}

// Write is used to implement io.Writer.
func (s *SyslogWrapper) Write(p []byte) (int, error) {
	// Skip syslog if the log level doesn't apply
	if !s.filt.Check(p) {
		return 0, nil
	}

	// Extract log level
	var level string
	afterLevel := p
	x := bytes.IndexByte(p, '[')
	if x >= 0 {
		y := bytes.IndexByte(p[x:], ']')
		if y >= 0 {
			level = string(p[x+1 : x+y])
			afterLevel = p[x+y+2:]
		}
	}

	// Each log level will be handled by a specific syslog priority.
	priority, ok := syslogPriorityMap[level]
	if !ok {
		priority = gsyslog.LOG_NOTICE
	}

	// Attempt the write
	err := s.l.WriteLevel(priority, afterLevel)
	return len(p), err
}
