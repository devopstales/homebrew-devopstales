class TmuxCssh < Formula
  url "https://github.com/devopstales/homebrew-devopstales/archive/refs/tags/tmux-cssh_1.0.tar.gz"
  sha256 "ce761f21fa0fe7050f408e687f9a4964acf95736c85678e3cc27cee88bd6ceed"
  version "1.0"

  depends_on "tmux"

  def install
    bin.install "tmux-cssh"
  end

  test do
    system "#{bin}/tmux-cssh", "--help"
  end
end
