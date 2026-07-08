class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.7.0"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.7.0/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "1c3b5376d296d118b0081c10b71aa8cf2beb434c554f50204229d8a6d6618e29"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.7.0/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "07db01c7f4c0323d5e6b0263ec7ea8af8ac1c970ea3327eaed2e97875965e4d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.7.0/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cff33dd74da62f839ffefa3d7c02ce50be4b0072fd2f8c8c000797fd4811ad21"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.7.0/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bf6b0203be9c1d39022b5b657b8c695df0078dc12100eeff4300c0baac60732"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
