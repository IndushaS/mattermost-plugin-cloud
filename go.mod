module github.com/mattermost/mattermost-plugin-starter-template

go 1.13

require (
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/heroku/docker-registry-client v0.0.0-20190909225348-afc9e1acc3d5
	github.com/mattermost/mattermost-cloud v0.18.3-0.20200515180538-72899a2283ce
	github.com/mattermost/mattermost-server v1.4.1-0.20190926112648-af3ffeed1a4a
	github.com/pkg/errors v0.9.1
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.5.1
	golang.org/x/lint v0.0.0-20200302205851-738671d3881b // indirect
	golang.org/x/tools v0.0.0-20200325203130-f53864d0dba1 // indirect
)

// Pinned to kubernetes-1.16.7
replace (
	github.com/docker/docker => github.com/moby/moby v0.7.3-0.20190826074503-38ab9da00309
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.2.0
	k8s.io/api => k8s.io/api v0.16.7
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.16.7
	k8s.io/apimachinery => k8s.io/apimachinery v0.16.8-beta.0
	k8s.io/apiserver => k8s.io/apiserver v0.16.7
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.16.7
	k8s.io/client-go => k8s.io/client-go v0.16.7
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.16.7
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.16.7
	k8s.io/code-generator => k8s.io/code-generator v0.16.8-beta.0
	k8s.io/component-base => k8s.io/component-base v0.16.7
	k8s.io/cri-api => k8s.io/cri-api v0.16.8-beta.0
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.16.7
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.16.7
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.16.7
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.16.7
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.16.7
	k8s.io/kubectl => k8s.io/kubectl v0.16.7
	k8s.io/kubelet => k8s.io/kubelet v0.16.7
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.16.7
	k8s.io/metrics => k8s.io/metrics v0.16.7
	k8s.io/node-api => k8s.io/node-api v0.16.7
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.16.7
	k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.16.7
	k8s.io/sample-controller => k8s.io/sample-controller v0.16.7
)
