class GitChangelog < Formula
  url "https://github.com/devopstales/homebrew-devopstales/archive/refs/tags/git-changelog-1.0.tar.gz"
  sha256 "7742c29038118f959c8207657b9327d7cd5a63eaa50c03d6d34c83a388f2e31f"
  version "1.0"

  depends_on "git"

  def install
    bin.install "git-changelog"
  end

  test do
    system "#{bin}/git-changelog", "--help"
  end
end
