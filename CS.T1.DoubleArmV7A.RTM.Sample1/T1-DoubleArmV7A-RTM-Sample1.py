import WRSUtil
WRSUtil.loadProject(
    "SingleSceneView", "T1", "AGXSimulator", "DoubleArmV7A",
    enableVisionSimulation = True, targetVisionSensors = "FRAME_FRONT_CAMERA, WORK_RIGHT_VIEW, WORK_LEFT_VIEW, UF_BOTTOM_CAMERA, UF_TOP_CAMERA, UF_FRONT_CAMERA", remoteType = "RTM")
