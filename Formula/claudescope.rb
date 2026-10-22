class Claudescope < Formula
  desc "Local, read-only viewer for AI coding-agent transcripts"
  homepage "https://github.com/vladar107/claudescope"
  url "https://registry.npmjs.org/@vladar107/claudescope/-/claudescope-0.25.0.tgz"
  sha256 "bd1892857335325a463b941c47e71724db38b1292a4adab7c5135fb6d9bf92ea"
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
