class RlCli < Formula
  include Language::Python::Virtualenv

  desc "RunLoop AI Command-Line Interface"
  homepage "https://github.com/runloopai/rl-cli"
  url "https://github.com/runloopai/rl-cli/archive/refs/tags/0.1.0.tar.gz"
  sha256 "f5c3139fedbdb5d9204cd097a60a5c663d97bb7df58731ccf1a43eba6de8ecb2"
  license "MIT"

  depends_on "python@3.12"


  # For 'runloop-api-client', please provide the URL and SHA256 if it's hosted on PyPI or another source.
  resource "runloop-api-client" do
    url "https://files.pythonhosted.org/packages/ea/cd/9db6d02626d4244258bf4368a979335ef8b9ab4df4b6725d00f0e855c345/runloop_api_client-0.1.0a20.tar.gz"
    sha256 "21f830549ce8ab090ac73a5fe17e2f0635bd5717849334164e26daa3b54ba628"
  end
  
  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/source/a/annotated-types/annotated-types-0.7.0.tar.gz"
    sha256 "19d2cf6db31ab72d819e5dc0bfe703d195a375192d52175d171485834c75e9d8"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/source/a/anyio/anyio-4.4.0.tar.gz"
    sha256 "a0b119f31fa5005e7fe8802d50a65c7b1dd3a89a01520a46a64e9318c4d436c0"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2024.7.4.tar.gz"
    sha256 "6f1d4ac62fd5f27ff3f17132a9770d14dc002c2f42cf6a81ab2601b5c2c1a4d7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset-normalizer-3.3.2.tar.gz"
    sha256 "e4d76b50e768d51e5ed9cd90940df77798b5b2c84f15d77b92b395aa6460de09"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/source/d/distro/distro-1.9.0.tar.gz"
    sha256 "b5b2f18d8bbcd1e0421451591d60c6d42e35909643d7d1d652e2285b0b5a7df9"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/source/h/h11/h11-0.14.0.tar.gz"
    sha256 "b419572d8f6cc6ac3dbd26e7cc40091232a16d6f5b135caa616edeb83d93685b"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/source/h/httpcore/httpcore-1.0.5.tar.gz"
    sha256 "c8341dc5e5b5d1a3ec3d7df6b4d2a2d8a9c7b88089e96d7ac0ef797cebc3bb4c"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.27.0.tar.gz"
    sha256 "76682c7bc01642e3bdc84d25279a0cf766763f6e61f2eb115ee26cc8c2af24d5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.8.tar.gz"
    sha256 "c8d96fb5e7a08a73f403f50d4de67458d427236d15d1e0e69c8c191b054f073f"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/source/p/pydantic/pydantic-2.8.2.tar.gz"
    sha256 "d6e5b11f0a771f7f621b64445d2f715aa4f583f16670b93c3ce7e90335cbe282"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/source/p/pydantic-core/pydantic_core-2.20.1.tar.gz"
    sha256 "e2dfbdc5e2c7988e05e5fe0a7a1f5d85aabb9b9961a97b601c0de44b8a8b25a0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.32.3.tar.gz"
    sha256 "09b758ab54173aa1d341eb4c5d2ab7d816bc43d2e227b3da9b6c55d1be02d333"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/source/s/sniffio/sniffio-1.3.1.tar.gz"
    sha256 "4f175e1471100ca7c1b57f1ce26ac1f54c2cae1ca8a4d1de60e9b63d7000be5c"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/source/t/typing_extensions/typing_extensions-4.12.2.tar.gz"
    sha256 "2308870b91206f04cfbd73a5a0f16d38cc41da54d76e59e8a045c0d3f7287e33"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.2.2.tar.gz"
    sha256 "74cdcc3e976dfe92d0a7be6a8ec9e019c5d2c0e99e8bf4fa4a8d1b6ac22f19c5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rl-cli --help")
  end
end
