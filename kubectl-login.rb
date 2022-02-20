class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  license "Apache-2.0"
  version "0.2"

  if OS.mac?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v0.2/kubectl-login_osx.tar.gz"
    sha256 "6f6f64c90fc1359508cf9c1429788ecf6f75ee5127bd9020c250043787b87afc"
  elsif OS.linux?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v0.2/kubectl-login_linux.tar.gz"
    sha256 "dd01b92f1f33194359d1c5b172adcd7ac938609028fc449dd4c84c9f93a3e4b9"
  end

  def install
    bin.install "kubectl-login"
  end

  test do
    system "kubectl-login test"
  end
end