# Containerd LTS(long term support)

The current state is available in the following tables:

| Release                                                              | Status        | Start              | End of Life                                             |
| ---------                                                            | ------------- | ------------------ | -------------------                                     |
| [0.0](https://github.com/containerd/containerd/releases/tag/0.0.5)   | End of Life   | Dec 4, 2015        | -                                                       |
| [0.1](https://github.com/containerd/containerd/releases/tag/v0.1.0)  | End of Life   | Mar 21, 2016       | -                                                       |
| [0.2](https://github.com/containerd/containerd/tree/v0.2.x)          | End of Life   | Apr 21, 2016       | December 5, 2017                                        |
| [1.0](https://github.com/containerd/containerd/releases/tag/v1.0.3)  | End of Life   | December 5, 2017   | December 5, 2018                                        |
| [1.1](https://github.com/containerd/containerd/releases/tag/v1.1.8)  | End of Life   | April 23, 2018     | October 23, 2019                                        |
| [1.2](https://github.com/containerd/containerd/releases/tag/v1.2.13) | End of Life   | October 24, 2018   | October 15, 2020                                        |
| [1.3](https://github.com/containerd/containerd/releases/tag/v1.3.10) | End of Life   | September 26, 2019 | March 4, 2021                                           |
| [1.4](https://github.com/containerd/containerd/releases/tag/v1.4.13) | End of Life   | August 17, 2020    | March 3, 2022                                           |
| [1.5](https://github.com/containerd/containerd/releases/tag/v1.5.18) | End of Life   | May 3, 2021        | February 28, 2023                                       |
| [1.6](https://github.com/containerd/containerd/releases/tag/v1.6.36) | LTS           | February 15, 2022  | next LTS + 6 months                                     |
| [1.7](https://github.com/containerd/containerd/releases/tag/v1.7.23) | Active        | March 10, 2023     | active(May 5, 2025), extended(EOL of 1.6)               |
| [2.0](https://github.com/containerd/containerd/releases/tag/v2.0.0)  | Active        | November 5, 2024   | max(November 5, 2025 or release of 2.1 + 6 months)      |
| [2.1](https://github.com/containerd/containerd/milestone/48)         | Next          | TBD                | TBD                                                     |

> **_NOTE_** containerd v1.7 will end of life at the same time as v1.6 LTS. Due to
> [Minimal Version Selection](https://go.dev/ref/mod#minimal-version-selection) used
> by Go modules, 1.7 must be supported until EOL of all 1.x releases. Once 1.7 is in
> extended support, it will continue to accept security patches in addition to client
> changes relevant for package importers using the 1.6 LTS daemon.

https://github.com/containerd/containerd/blob/main/RELEASES.md

### Kubernetes Support

The Kubernetes version matrix represents the versions of containerd which are
recommended for a Kubernetes release. Any actively supported version of
containerd may receive patches to fix bugs encountered in any version of
Kubernetes, however, our recommendation is based on which versions have been
the most thoroughly tested. See the [Kubernetes test grid](https://testgrid.k8s.io/sig-node-containerd)
for the list of actively tested versions. Kubernetes only supports n-3 minor
release versions and containerd will ensure there is always a supported version
of containerd for every supported version of Kubernetes.


| Kubernetes Version | containerd Version            | CRI Version     |
|--------------------|-------------------------------|-----------------|
| 1.20               | 1.5.0+                        | v1alpha2        |
| 1.21               | 1.5.0+                        | v1alpha2        |
| 1.22               | 1.5.5+                        | v1alpha2        |
| 1.23               | 1.6.0+, 1,5.8+                | v1, v1alpha2    |
| 1.24               | 1.6.4+, 1.5.11+               | v1, v1alpha2    |
| 1.25               | 1.6.4+, 1.5.11+               | v1, v1alpha2    |
| 1.26               | 1.7.0+, 1.6.15+               | v1, v1alpha2 ** |
| 1.27               | 1.7.0+, 1.6.15+               | v1              |
| 1.28               | 1.7.0+, 1.6.15+               | v1              |
| 1.29               | 1.7.11+, 1.6.27+              | v1              |
| 1.29               | 1.7.11+, 1.6.27+              | v1              |
| 1.30               | 2.0.0+, 1.7.13+, 1.6.28+      | v1              |
| 1.31               | 2.0.0+, 1.7.20+, 1.6.34+      | v1              |

Deprecated containerd and kubernetes versions

| Containerd Version       | Kubernetes Version | CRI Version                          |
|--------------------------|--------------------|--------------------------------------|
| v1.0 (w/ cri-containerd) | 1.7, 1.8, 1.9      | v1alpha1                             |
| v1.1(End-Of-Life)        | 1.10+              | v1alpha2                             |
| v1.2(End-Of-Life)        | 1.10+              | v1alpha2                             |
| v1.3(End-Of-Life)        | 1.12+              | v1alpha2                             |
| v1.4(End-Of-Life)        | 1.19+              | v1alpha2                             |
| v1.5(End-Of-Life)        | 1.20+              | v1 (1.23+), v1alpha2 (until 1.25) ** |
| v1.6.15+, v1.7.0+        | 1.26+              | v1                                   |

** Note: containerd v1.6.*, and v1.7.* support CRI v1 and v1alpha2 through EOL as those releases continue to support older versions of k8s, cloud providers, and other clients using CRI v1alpha2. CRI v1alpha2 is deprecated in v1.7 and will be removed in containerd v2.0.


[Docker Release](https://docs.docker.com/engine/release-notes/)  
[Containerd Release](https://containerd.io/releases/)  
[endoflife.date](https://endoflife.date/containerd)
