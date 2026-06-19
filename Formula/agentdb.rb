class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.4.3"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.3/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "703ed1016b6ae81a7323e1670490cafe318e0a3490643110cadb1f949618f521"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.3/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "44f1af6b883343a7fe5a0e2a0e32e960dbe9344f1de1a32e6df1a91679a5bfb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.3/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ea3fdf0b90b3b8f80b3908f4fb2c6ebcfd3b5004d470b82b0f119fa5e013706"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.3/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "458be8a23d2a8e8d443cd89b2f8bd96b978186619229aa7693512f8f32c1fcb4"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
