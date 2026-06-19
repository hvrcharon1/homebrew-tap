class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.4.1"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.1/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "a05c63e3e0e4db31dc8004728e8c1c44242d86fa6d73c801704e9114c97dfbf4"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.1/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "c6f3ba5ee4094f6a7bb8a1186e32e9ffb18b7be80c3ce3e4805e5f813f5e2c18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.1/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2666b00d2c53b9c38312f6a106de840b45278b1a4768ef937f09170be4e75ea2"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.1/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c0cdfe8c1d5f9aa4398eab052e2b7da28fb005be2d5db5b057c2614a01d226f"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
