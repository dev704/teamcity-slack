package com.fpd.teamcity.slack

object Strings {
  lazy val logCategory = "Slack Integration"
  def label: String = "Slack"
  def tabId: String = "Slack"
  lazy val channelMessageOwner = "TeamCity"

  object MessageBuilder {
    lazy val unknownBranch = "Unknown"
    lazy val unknownReason = "Unknown"
    lazy val statusSucceeded = "succeeded"
    lazy val statusFailed = "failed"
    lazy val statusCanceled = "canceled"
  }

  object BuildSettingsController {
    lazy val channelOrNotifyCommitterError = "Either specify Slack channel name or check Notify committer flag"
    lazy val compileBranchMaskError = "Unable to compile branch mask"
    lazy val compileArtifactsMaskError = "Unable to compile artifacts mask"
    lazy val sessionByConfigError = "Unable to create session by config"
    def channelNotFoundError(channel: String): String = s"Unable to find channel with name $channel"
    lazy val emptyConfigError = "Config is empty"
    lazy val requirementsError = "One or more required params are missing"
  }
}
