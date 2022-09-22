class GitUser < Formula
  url "https://github.com/devopstales/homebrew-devopstales/archive/refs/tags/git-user_1.0.tar.gz"
  sha256 "73f1d1da878d2c648c6ad4b068f38e0ced7688c6fda4d44eef385146f5de6c4b"
  version "1.0"

  depends_on "git"

  def install
    bin.install "git-user"
  end

  test do
    system "#{bin}/git-user", "--help"
  end
end
