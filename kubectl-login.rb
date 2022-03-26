class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  license "Apache-2.0"
  version "1.0"

  if OS.mac?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.0/kubectl-login_osx.tar.gz"
    sha256 "0991c84f3ec568e4cc3c0a648f32194685552c045c8904b04b6ea2da0a0530f2"
  elsif OS.linux?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.0/kubectl-login_linux.tar.gz"
    sha256 "d3ad9199b0eab4d05919f1d4f4809dc3b14ea3792c3b27ef3f69edb0e79738a2"
  end

  def install
    bin.install "kubectl-login"
  end

  test do
    system "kubectl-login test"
  end
end