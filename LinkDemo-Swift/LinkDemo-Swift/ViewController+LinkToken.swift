//
//  ViewController+LinkToken.swift
//  LinkDemo-Swift
//
//  Copyright © 2020 Plaid Inc. All rights reserved.
//

import LinkKit

extension ViewController {

    // MARK: Start Plaid Link with custom configuration using a Link token
    // For details please see https://plaid.com/docs/#create-link-token/
    func presentPlaidLinkUsingLinkToken() {

        #warning("Replace <#GENERATED_LINK_TOKEN#> below with your link_token")
        // In your production application replace the hardcoded linkToken below with code that fetches an link_token
        // from your backend server which in turn retrieves it securely from Plaid, for details please refer to
        // https://plaid.com/docs/#create-link-token/
        let linkToken = "link-sandbox-b41200fd-ca02-469e-9668-874cfd54d0b9"

        // <!-- SMARTDOWN_PRESENT_ITEMADD -->
        // With custom configuration using a link_token
        let linkConfiguration = PLKConfiguration(linkToken: linkToken)
        // from your backend server which in turn retrieves it securely from Plaid, for details please refer to
        // https://plaid.com/docs/#create-link-token/
        let linkToken = "link-sandbox-b41200fd-ca02-469e-9668-874cfd54d0b9"

        // <!-- SMARTDOWN_PRESENT_ITEMADD -->
        // With custom configuration using a link_token
        let linkConfiguration = PLKConfiguration(linkToken: linkToken)

        let linkViewDelegate = self
        let linkViewController = PLKPlaidLinkViewController(linkToken: linkToken, configuration: linkConfiguration, delegate: linkViewDelegate)
        if (UI_USER_INTERFACE_IDIOM() == .pad) {
            linkViewController.modalPresentationStyle = .formSheet
        }
        present(linkViewController, animated: true)
        // <!-- SMARTDOWN_PRESENT_ITEMADD -->
    }

}
