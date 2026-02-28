class Hosts < Formula
  url "https://github.com/devopstales/homebrew-devopstales/archive/refs/tags/hosts-1.0.tar.gz"
  sha256 "087055daf92abba00fb3bb18bfa934aad0c9845ac3673240e0f21cfcd42fc0b7"
  version "1.0"

  def install
    bin.install "hosts"
  end

  test do
    system "#{bin}/hosts", "--help"
  end
end
