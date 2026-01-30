class JjRyu < Formula
  desc "Stacked PRs for Jujutsu with GitHub/GitLab support"
  homepage "https://github.com/dmmulroy/jj-ryu"
  url "https://github.com/dmmulroy/jj-ryu/archive/refs/tags/v0.0.1-alpha.10.tar.gz"
  sha256 "42221dc6480f08f1df491d224c8359bff8a43d428a25b33a95f149642d18dcfd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ryu", shell_output("#{bin}/ryu --help")
  end
end
