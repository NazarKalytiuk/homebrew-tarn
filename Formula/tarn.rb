class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/tarn"
  version "0.11.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.8/tarn-darwin-arm64.tar.gz"
      sha256 "2f7b0280057b608cb107720e38c0bb6e1df5feec06807bead424e0d9b5fa0fc1"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.8/tarn-darwin-amd64.tar.gz"
      sha256 "23c8db2c3f090acb6300d8980de081e521052e0c08a65a1151620194f6210f79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.8/tarn-linux-arm64.tar.gz"
      sha256 "e7073a82824c11a13a8470c2f873bc9a8ff0cae44688a5349cea068e3b7f2fac"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.8/tarn-linux-amd64.tar.gz"
      sha256 "06ab3537cbb91a0981df7312a61928279f0baa65d834e366a5217f78a4aaf985"
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
