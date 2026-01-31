
require "language/node"

class CopilotCli < Formula
  desc "GitHub Copilot CLI"
  homepage "https://github.com/github/copilot-cli"
  url "https://registry.npmjs.org/@github/copilot/-/copilot-0.0.400.tgz"
  sha256 "7638aa7831eaa09ed4300fbf29077af49161a63ee67aa4a6cf486946b42fab39"
  version "0.0.400"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/copilot", "--version"
  end
end
