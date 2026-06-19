class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.4.2"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.2/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "0951d0a2241af4bb7d3b2553b8cb11ad9742afa08b76e10ff9877704263f79d9"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.2/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "3622a500e5c6411d6a8a25db5afabe96b98f6895e8eec97b0e389e557d9655c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.2/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd57eecc97115518c0f779569dd8b460d2fbc1c303a0c2e2e0806c8f1cadcfaf"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.2/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fea076c3df4d13fe03632bd0be6e56dbdbc4ec9d9e679d7838e0604eadaa9a9c"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
