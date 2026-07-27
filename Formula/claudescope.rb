class Claudescope < Formula
  desc "Local, read-only viewer for AI coding-agent transcripts"
  homepage "https://github.com/vladar107/claudescope"
  url "https://registry.npmjs.org/@vladar107/claudescope/-/claudescope-0.14.1.tgz"
  sha256 "b234681e4c7df8aec5f6c9f10e22e222e6cf65641dfef6427568a6b8fd697ef2"
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
