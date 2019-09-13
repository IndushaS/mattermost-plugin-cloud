package main

import (
	"encoding/json"
	"net/http"

	"github.com/mattermost/mattermost-server/plugin"
)

// ServeHTTP handles HTTP requests to the plugin.
func (p *Plugin) ServeHTTP(c *plugin.Context, w http.ResponseWriter, r *http.Request) {
	config := p.getConfiguration()

	if err := config.IsValid(); err != nil {
		http.Error(w, "This plugin is not configured.", http.StatusNotImplemented)
		return
	}

	w.Header().Set("Content-Type", "application/json")

	switch path := r.URL.Path; path {
	case "/webhook":
		p.handleWebhook(w, r)
	case "/profile.png":
		p.handleProfileImage(w, r)
	case "/api/v1/userinstalls":
		p.handleUserInstalls(w, r)
	default:
		http.NotFound(w, r)
	}
}

func (p *Plugin) handleUserInstalls(w http.ResponseWriter, r *http.Request) {
	userID := r.Header.Get("Mattermost-User-ID")
	if userID == "" {
		http.Error(w, "Not authorized", http.StatusUnauthorized)
		return
	}

	installsForUser, err := p.getUpdatedInstallsForUser(userID)
	if err != nil {
		http.Error(w, "Internal server error", http.StatusInternalServerError)
		return
	}

	data, err := json.Marshal(installsForUser)
	if err != nil {
		http.Error(w, "Internal server error", http.StatusInternalServerError)
		return
	}

	w.Write(data)
}
