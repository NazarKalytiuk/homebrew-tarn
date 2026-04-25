class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/tarn"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.6/tarn-darwin-arm64.tar.gz"
      sha256 "36d1ad6cc3bea07e1bf61a04d2d7d2b166d8dff0444810f6395772dfef4ec768"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.6/tarn-darwin-amd64.tar.gz"
      sha256 "a094caed030f9cb7e6d4967ed0a076e855d1ab0418f85772da804c990cbfa759"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.6/tarn-linux-arm64.tar.gz"
      sha256 "a4f1d97b16012c77ce70ac7fed813de132a71e47e231e7cfe8dae0bd7a17188e"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.6/tarn-linux-amd64.tar.gz"
      sha256 "1dfe4b7eb088274a1abb7bf87ab0199be6a9c2f4e0a659ce68c04cdc16c67104"
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
