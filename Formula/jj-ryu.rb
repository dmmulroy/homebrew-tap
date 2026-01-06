class JjRyu < Formula
  desc "Stacked PRs for Jujutsu with GitHub/GitLab support"
  homepage "https://github.com/dmmulroy/jj-ryu"
  url "https://github.com/dmmulroy/jj-ryu/archive/refs/tags/v0.0.1-alpha.7.tar.gz"
  sha256 "28fa01312febc837920429d257dc18dde72b6814fe810ee8091170bd02c276f2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ryu", shell_output("#{bin}/ryu --help")
  end
end
