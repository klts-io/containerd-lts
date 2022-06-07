# Containerd LTS(long term support)

| Release | Status      | Start            | End of Life       |
|---------|-------------|------------------|-------------------|
| [0.0](https://github.com/containerd/containerd/releases/tag/0.0.5)   | End of Life | Dec 4, 2015  | - |
| [0.1](https://github.com/containerd/containerd/releases/tag/v0.1.0)  | End of Life | Mar 21, 2016 | - |
| [0.2](https://github.com/containerd/containerd/tree/v0.2.x)          | End of Life | Apr 21, 2016      | December 5, 2017 |
| [1.0](https://github.com/containerd/containerd/releases/tag/v1.0.3)  | End of Life | December 5, 2017  | December 5, 2018 |
| [1.1](https://github.com/containerd/containerd/releases/tag/v1.1.8)  | End of Life | April 23, 2018  | October 23, 2019 |
| [1.2](https://github.com/containerd/containerd/releases/tag/v1.2.13) | End of Life | October 24, 2018 | October 15, 2020 |
| [1.3](https://github.com/containerd/containerd/releases/tag/v1.3.10) | End of Life | September 26, 2019  | March 4, 2021 |
| [1.4](https://github.com/containerd/containerd/releases/tag/v1.4.13) | End of Life | August 17, 2020 | March 3, 2022 |
| [1.5](https://github.com/containerd/containerd/releases/tag/v1.5.11) | Active   | May 3, 2021  | October 28, 2022 |
| [1.6](https://github.com/containerd/containerd/releases/tag/v1.6.4)  | Active   | February 15, 2022  | max(February 15, 2023 or release of 1.7.0 + 6 months) |
| [1.7](https://github.com/containerd/containerd/milestone/42)         | Next   | TBD  | TBD |


### Kubernetes Support

The Kubernetes version matrix represents the versions of containerd which are
recommended for a Kubernetes release. Any actively supported version of
containerd may receive patches to fix bugs encountered in any version of
Kubernetes, however, our recommendation is based on which versions have been
the most thoroughly tested. See the [Kubernetes test grid](https://testgrid.k8s.io/sig-node-containerd)
for the list of actively tested versions. Kubernetes only supports n-3 minor
release versions and containerd will ensure there is always a supported version
of containerd for every supported version of Kubernetes.

| Kubernetes Version | containerd Version | CRI Version  |
|--------------------|--------------------|--------------|
| 1.20               | 1.5                | v1alpha2     |
| 1.21               | 1.5                | v1alpha2     |
| 1.22               | 1.5.5+             | v1alpha2     |
| 1.23               | 1.6.0+, 1,5.8+     | v1, v1alpha2 |
| 1.24               | 1.6.4+, 1.5.11+    | v1, v1alpha2 |

Deprecated containerd and kubernetes versions

| CRI-Containerd Version | Containerd Version | Kubernetes Version | CRI Version  |
|------------------------|--------------------|--------------------|--------------|
| v1.0.0-alpha.x         |                    | 1.7, 1.8           | v1alpha1     |
| v1.0.0-beta.x          |                    | 1.9                | v1alpha1     |
| End-Of-Life            | v1.1 (End-Of-Life) | 1.10+              | v1alpha2     |
|                        | v1.2 (End-Of-Life) | 1.10+              | v1alpha2     |
|                        | v1.3 (End-Of-Life) | 1.12+              | v1alpha2     |
|                        | v1.4 (End-of-Life) | 1.19+              | v1alpha2     |


[Docker Release](https://docs.docker.com/engine/release-notes/)  
[Containerd Release](https://containerd.io/releases/)  
