class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  license "Apache-2.0"
  version "0.1"

  if OS.mac?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v0.1/kubectl-login_osx.tar.gz"
    sha256 "7c658099fa209b738d01a0b0d466181d20729ba3511033dbf9a94e342edcb206"
  elsif OS.linux?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v0.1/kubectl-login_linux.tar.gz"
    sha256 "e33877fab8ea54626089ef37db712e92be4e0f22df23971e80321857f496ad3c"
  end

  def install
    bin.install "kubectl-login"
  end

  test do
    system "kubectl-login test"
  end
end