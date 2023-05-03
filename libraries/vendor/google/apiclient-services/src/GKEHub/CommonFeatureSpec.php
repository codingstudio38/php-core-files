<?php
/*
 * Copyright 2014 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

namespace Google\Service\GKEHub;

class CommonFeatureSpec extends \Google\Model
{
  protected $appdevexperienceType = AppDevExperienceFeatureSpec::class;
  protected $appdevexperienceDataType = '';
  public $appdevexperience;
  protected $fleetobservabilityType = FleetObservabilityFeatureSpec::class;
  protected $fleetobservabilityDataType = '';
  public $fleetobservability;
  protected $multiclusteringressType = MultiClusterIngressFeatureSpec::class;
  protected $multiclusteringressDataType = '';
  public $multiclusteringress;

  /**
   * @param AppDevExperienceFeatureSpec
   */
  public function setAppdevexperience(AppDevExperienceFeatureSpec $appdevexperience)
  {
    $this->appdevexperience = $appdevexperience;
  }
  /**
   * @return AppDevExperienceFeatureSpec
   */
  public function getAppdevexperience()
  {
    return $this->appdevexperience;
  }
  /**
   * @param FleetObservabilityFeatureSpec
   */
  public function setFleetobservability(FleetObservabilityFeatureSpec $fleetobservability)
  {
    $this->fleetobservability = $fleetobservability;
  }
  /**
   * @return FleetObservabilityFeatureSpec
   */
  public function getFleetobservability()
  {
    return $this->fleetobservability;
  }
  /**
   * @param MultiClusterIngressFeatureSpec
   */
  public function setMulticlusteringress(MultiClusterIngressFeatureSpec $multiclusteringress)
  {
    $this->multiclusteringress = $multiclusteringress;
  }
  /**
   * @return MultiClusterIngressFeatureSpec
   */
  public function getMulticlusteringress()
  {
    return $this->multiclusteringress;
  }
}

// Adding a class alias for backwards compatibility with the previous class name.
class_alias(CommonFeatureSpec::class, 'Google_Service_GKEHub_CommonFeatureSpec');
