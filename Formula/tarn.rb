class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/tarn"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.12.0/tarn-darwin-arm64.tar.gz"
      sha256 "27bc751fb44d46295539bb28b7c84d5378f9ac96ce907c6713da015ee55ddcf9"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.12.0/tarn-darwin-amd64.tar.gz"
      sha256 "0e0d1aeb1c9f71acba83673a017229533ba4269dcc12a86f857791411fe18c0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.12.0/tarn-linux-arm64.tar.gz"
      sha256 "850ae2b154e589ea9ad717b9b14024b18c42b214c412da4e1396ce4696982670"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.12.0/tarn-linux-amd64.tar.gz"
      sha256 "1c51a576e285649e94e168e737e00404a1ad08dd4f644b04297d4065d92a3516"
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
