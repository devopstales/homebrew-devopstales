class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  license "Apache-2.0"
  version "1.0"

  if OS.mac?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.0/kubectl-login_osx.tar.gz"
    sha256 "9ba1a56c77d5c2326debe270f2946886e1ae7c2013545f6be4ab2db2f783a651"
  elsif OS.linux?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.0/kubectl-login_linux.tar.gz"
    sha256 "071d7a8bba992dc07214b28a9f842e47e9a153796976ff0cac83064b80c89a7e"
  end

  def install
    bin.install "kubectl-login"
  end

  test do
    system "kubectl-login test"
  end
end
