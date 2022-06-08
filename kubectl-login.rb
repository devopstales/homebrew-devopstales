class KubectlLogin < Formula
  desc "An application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster. "
  homepage "https://github.com/devopstales/kube-openid-connect/"
  license "Apache-2.0"
  version "1.1"

  if OS.mac?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.1/kubectl-login_osx.tar.gz"
    sha256 "13e738b0d8b6c47d879be91d5dd80ccee18f1fbe27912682dcf7df250a143183"
  elsif OS.linux?
    url "https://github.com/devopstales/kube-openid-connect/releases/download/client_v1.1/kubectl-login_linux.tar.gz"
    sha256 "3c3fc2e33130e8dedfbb4083a3418fad5b74fda13e6352971edd6dfd6586787f"
  end

  def install
    bin.install "kubectl-login"
  end

  test do
    system "kubectl-login test"
  end
end
