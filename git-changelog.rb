class GitChangelog < Formula
  url "https://github.com/devopstales/homebrew-devopstales/archive/refs/tags/git-changelog-1.0.tar.gz"
  sha256 "e7cd4d00943f5f4cd7bedd40ccf989639fc23a9cc0fff1fc5c8535bab66523a1"
  version "1.0"

  depends_on "git"

  def install
    bin.install "git-changelog"
  end

  test do
    system "#{bin}/git-changelog", "--help"
  end
end
