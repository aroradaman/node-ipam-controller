// Package v1 contains API Schema definitions for the cluster CIDR v1 API group.
// +kubebuilder:object:generate=true
// +groupName=cluster.cidr.x-k8s.io
package v1

import (
	"k8s.io/apimachinery/pkg/runtime/schema"
	"sigs.k8s.io/controller-runtime/pkg/scheme"
)

var (
	// GroupVersion is group version used to register these objects.
	// todo(mneverov): group OK?
	GroupVersion = schema.GroupVersion{Group: "cluster.cidr.x-k8s.io", Version: "v1"}

	// SchemeBuilder is used to add go types to the GroupVersionKind scheme.
	SchemeBuilder = &scheme.Builder{GroupVersion: GroupVersion}

	// AddToScheme adds the types in this group-version to the given scheme.
	AddToScheme = SchemeBuilder.AddToScheme
)
