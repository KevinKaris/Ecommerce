<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Serverless\V1\Service\Asset;

use Twilio\Exceptions\TwilioException;
use Twilio\InstanceContext;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
 */
class AssetVersionContext extends InstanceContext {
    /**
     * Initialize the AssetVersionContext
     *
     * @param Version $version Version that contains the resource
     * @param string $serviceSid The SID of the Service to fetch the Asset Version
     *                           resource from
     * @param string $assetSid The SID of the Asset resource that is the parent of
     *                         the Asset Version resource to fetch
     * @param string $sid The SID that identifies the Asset Version resource to
     *                    fetch
     */
    public function __construct(Version $version, $serviceSid, $assetSid, $sid) {
        parent::__construct($version);

        // Path Solution
        $this->solution = ['serviceSid' => $serviceSid, 'assetSid' => $assetSid, 'sid' => $sid, ];

        $this->uri = '/Services/' . \rawurlencode($serviceSid) . '/Assets/' . \rawurlencode($assetSid) . '/Versions/' . \rawurlencode($sid) . '';
    }

    /**
     * Fetch the AssetVersionInstance
     *
     * @return AssetVersionInstance Fetched AssetVersionInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function fetch(): AssetVersionInstance {
        $payload = $this->version->fetch('GET', $this->uri);

        return new AssetVersionInstance(
            $this->version,
            $payload,
            $this->solution['serviceSid'],
            $this->solution['assetSid'],
            $this->solution['sid']
        );
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string {
        $context = [];
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Serverless.V1.AssetVersionContext ' . \implode(' ', $context) . ']';
    }
}