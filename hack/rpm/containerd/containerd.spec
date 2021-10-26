Name: containerd
Version: %{_version}
Release: %{_release}
Summary: An industry-standard container runtime
License: ASL 2.0
URL: https://containerd.io
Source0: %{name}-%{version}.tar.gz

Requires: container-selinux >= 2:2.74

%description
containerd is an industry-standard container runtime with an emphasis on
simplicity, robustness and portability. It is available as a daemon for Linux
and Windows, which can manage the complete container lifecycle of its host
system: image transfer and storage, container execution and supervision,
low-level storage and network attachments, etc.


%prep
%setup

install -m 755 -d %{buildroot}%{_unitdir}
install -m 755 -d %{buildroot}%{_bindir}
install -m 755 -d %{buildroot}%{_sysconfdir}/containerd/
install -p -m 755 -t %{buildroot}%{_bindir}/ ctr
install -p -m 755 -t %{buildroot}%{_bindir}/ containerd
install -p -m 755 -t %{buildroot}%{_bindir}/ containerd-shim
install -p -m 755 -t %{buildroot}%{_bindir}/ containerd-shim-runc-v1
install -p -m 755 -t %{buildroot}%{_bindir}/ containerd-shim-runc-v2
install -p -m 644 -t %{buildroot}%{_unitdir}/ containerd.service
install -p -m 644 -t %{buildroot}%{_sysconfdir}/containerd/ config.toml

%files
%{_bindir}/ctr
%{_bindir}/containerd
%{_bindir}/containerd-shim
%{_bindir}/containerd-shim-runc-v1
%{_bindir}/containerd-shim-runc-v2
%{_unitdir}/containerd.service
%config(noreplace) %{_sysconfdir}/containerd/config.toml
