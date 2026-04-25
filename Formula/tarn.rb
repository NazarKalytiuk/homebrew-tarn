class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/tarn"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.4/tarn-darwin-arm64.tar.gz"
      sha256 "5001317c91f1a4c3612d5bd653332e4f381b4b7ae90563855f755c54e9514d8d"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.4/tarn-darwin-amd64.tar.gz"
      sha256 "d3bf6f3e9cdd05d6ee9f1af589e1475d4058d8423a72952005ee924a491c7c71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.4/tarn-linux-arm64.tar.gz"
      sha256 "d033b33189ea2a2ef1f2ae0a3fce1328b54ff7540b4aa786bd32e2bb260939e6"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.4/tarn-linux-amd64.tar.gz"
      sha256 "bcc475b4b68973df4cfb9400a42b0d4ab5bbb80df7c435744dedb50b2de46aee"
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
