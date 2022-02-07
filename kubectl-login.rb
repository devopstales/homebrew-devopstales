class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v0.1/kubectl-login_linux.tar.gz"
  sha256 "da922b3c845af81105c2ecf6b9109ef942d0d1616bba88d00272f9657a620d65"
  license "Apache-2.0"
  version: "0.1"

  def install
    bin.install "kubectl-login"
  end
end
