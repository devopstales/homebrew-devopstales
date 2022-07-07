class kubent < Formula
  desc "Kube No Trouble (kubent) is a simple tool to check whether you're using any of these API versions in your cluster and therefore should upgrade your workloads first, before upgrading your Kubernetes cluster. "
  homepage "https://github.com/doitintl/kube-no-trouble"
  license "MIT"
  version "0.5.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doitintl/kube-no-trouble/releases/download/0.5.1/kubent-0.5.1-darwin-arm64.tar.gz"
      sha256 "5fc0fae3d9c693fa52234ba2a1a4cfe0871e591204bd49cf06526d0416eecd29"
    end
    if Hardware::CPU.intel?
      url "https://github.com/doitintl/kube-no-trouble/releases/download/0.5.1/kubent-0.5.1-darwin-amd64.tar.gz"
      sha256 "451ebcaa3993091629892f9f6a3d67f94d84d3eade4ae5c888735d1a66b918b1"
    end
  elsif OS.linux?
    url "https://github.com/doitintl/kube-no-trouble/releases/download/0.5.1/kubent-0.5.1-linux-amd64.tar.gz"
    sha256 "5224e608c5c65e1c852ada6e0646e7f73a9f8bcc7c13b182db735895cdfdd3dc"
  end

  def install
    bin.install "kubent"
  end

  test do
    system "kubent --help"
  end
end
