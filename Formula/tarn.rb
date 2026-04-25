class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/tarn"
  version "0.11.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.7/tarn-darwin-arm64.tar.gz"
      sha256 "74e505add6de977e7fc5748b221fb9a22cf9c387352547d11e70556871e16e63"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.7/tarn-darwin-amd64.tar.gz"
      sha256 "2631d76fc802f91ae3279ca56dc9435c9ee0d3ce596242e3792cc18eec01064e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.7/tarn-linux-arm64.tar.gz"
      sha256 "c7f8b0d8d5b1642296cac99cb36fb22ed640820446e41da993ccbafd37781b9c"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.7/tarn-linux-amd64.tar.gz"
      sha256 "b4a58efe79c56c8462307913324caa51c3e32e33f57eedf4650e6299db5f6a35"
    end
  end

  def install
    bin.install "tarn"
    bin.install "tarn-mcp"
    bin.install "tarn-lsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tarn --version")
  end
end
