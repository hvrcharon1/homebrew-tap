class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.4.5"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.5/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "481e546fd63f9c68112476ae4323e2189f379929a88d78938bd08bad68669010"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.5/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "b76ec0568945e997721d3b32116b99ee404b4b647d3daf358a07d08e9581122a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.5/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "daee763f6d8ce6a1b6394b498321fa1c46250398111c94388765fb461a7f33ba"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.5/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "644a36a6f31af1192df27c451eb89cc34e667336c8b8d3d7009dc025299a7b8c"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
