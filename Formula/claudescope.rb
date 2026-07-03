class Claudescope < Formula
  desc "Local, read-only viewer for AI coding-agent transcripts"
  homepage "https://github.com/vladar107/claudescope"
  url "https://registry.npmjs.org/@vladar107/claudescope/-/claudescope-0.10.0.tgz"
  sha256 "a37132001aa4bb5133ca7c89b7e43c4a5b1669a42b9e9cd2f7c434d0a575e08c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claudescope version")
  end
end
