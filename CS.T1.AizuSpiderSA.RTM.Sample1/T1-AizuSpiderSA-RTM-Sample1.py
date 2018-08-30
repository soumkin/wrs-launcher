import WRSUtil
WRSUtil.loadProject(
    "SingleSceneView", "T1", "AGXSimulator", "AizuSpiderSA",
    enableVisionSimulation = True, targetVisionSensors = "FRONT_CAMERA, ARM_CAMERA, BACK_CAMERA, LEFT_CAMERA, RIGHT_CAMERA", remoteType = "RTM")
