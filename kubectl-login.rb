class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  license "Apache-2.0"
  version "1.0"

  if OS.mac?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.0/kubectl-login_osx.tar.gz"
    sha256 "cd3f016366316622da0c264364b5ed473a880c0955dfcd8ae049c079555a91dc"
  elsif OS.linux?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.0/kubectl-login_linux.tar.gz"
    sha256 "ec644cb50645e510e639b8b54b887a090256707603579a3ccc1ae8cb795ad29c"
  end

  def install
    bin.install "kubectl-login"
  end

  test do
    system "kubectl-login test"
  end
end