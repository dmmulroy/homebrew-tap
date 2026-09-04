class JjRyu < Formula
  desc "Stacked PRs for Jujutsu with GitHub/GitLab support"
  homepage "https://github.com/dmmulroy/jj-ryu"
  url "https://github.com/dmmulroy/jj-ryu/archive/refs/tags/v0.0.1-alpha.12.tar.gz"
  sha256 "b8294c60c2f1a487a32b1193f6a582c9533f29c45a284ae3dfcf799ebddb46de"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ryu", shell_output("#{bin}/ryu --help")
  end
end
