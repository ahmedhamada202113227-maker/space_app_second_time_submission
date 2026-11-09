class PlanetsModel {
  final String planetImg;
  final String planetName;
  final String planetTitle;
  final String planetDesc;
  final PlanetsInfo planetsInfo;

  PlanetsModel({
    required this.planetImg,
    required this.planetName,
    required this.planetTitle,
    required this.planetDesc,
    required this.planetsInfo,
  });
}

// ----------------------------------

class PlanetsInfo {
  final String planetDistancefromSun;
  final String planetLengthOfDay;
  final String planetOrbitalPeriod;
  final String planetRadius;
  final String planetMass;
  final String planetGravity;
  final String planetSurfaceArea;

  PlanetsInfo({
    required this.planetDistancefromSun,
    required this.planetLengthOfDay,
    required this.planetOrbitalPeriod,
    required this.planetRadius,
    required this.planetMass,
    required this.planetGravity,
    required this.planetSurfaceArea,
  });
}
