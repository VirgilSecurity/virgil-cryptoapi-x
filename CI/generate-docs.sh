gem install jazzy

jazzy \
--author "Virgil Security" \
--author_url "https://virgilsecurity.com/" \
--xcodebuild-arguments -scheme,"VirgilCryptoAPI macOS" \
--module "VirgilCryptoAPI" \
--output "${VIRGIL_SDK_HTML_PATH_DST}" \
--hide-documentation-coverage \
--theme apple
