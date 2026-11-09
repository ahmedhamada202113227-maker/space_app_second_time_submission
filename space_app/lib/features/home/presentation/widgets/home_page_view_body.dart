import 'package:flutter/material.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/features/home/presentation/widgets/page_view_builder.dart';
import 'package:space_app/shared/bg_shadow_container.dart';
import 'package:space_app/utils/app_assets.dart';
import 'package:space_app/utils/app_styles.dart';

class HomePageViewBody extends StatefulWidget {
  const HomePageViewBody({super.key});

  @override
  State<HomePageViewBody> createState() => _HomePageViewBodyState();
}

class _HomePageViewBodyState extends State<HomePageViewBody> {
  late PageController _pageController;
  int _currentIndex = 0;

  final List<PlanetsModel> _list = [
    PlanetsModel(
      planetImg: Assets.assetsImagesSun,
      planetName: 'Sun',
      planetTitle: 'Our Solar Systems Star',
      planetDesc: 'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Suns magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '0',
        planetLengthOfDay: '0',
        planetOrbitalPeriod: '0',
        planetRadius: '695700',
        planetMass: '1.989 × 10³⁰',
        planetGravity: '274',
        planetSurfaceArea: '6.09 × 10¹²',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesMercury,
      planetName: 'Mercury',
      planetTitle: 'The Closest Planet',
      planetDesc: 'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Suns magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '57909227',
        planetLengthOfDay: '1407.6',
        planetOrbitalPeriod: '0.24',
        planetRadius: '2439.7',
        planetMass: '3.301 × 10²³',
        planetGravity: '3.7',
        planetSurfaceArea: '7.48 × 10⁷',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesVenus,
      planetName: 'Venus',
      planetTitle: 'Earths Toxic Twin',
      planetDesc: 'Venus is often referred to as Earths twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '108209072',
        planetLengthOfDay: '5832.2',
        planetOrbitalPeriod: '0.62',
        planetRadius: '6051.8',
        planetMass: '4.867 × 10²⁴',
        planetGravity: '8.87',
        planetSurfaceArea: '4.60 × 10⁸',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesEarth,
      planetName: 'Earth',
      planetTitle: 'Our Blue Marble',
      planetDesc: 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earths magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '149598026',
        planetLengthOfDay: '23.93',
        planetOrbitalPeriod: '1',
        planetRadius: '6371',
        planetMass: '5.972 × 10²⁴',
        planetGravity: '9.81',
        planetSurfaceArea: '5.10 × 10⁸',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesMars,
      planetName: 'Mars',
      planetTitle: 'The Red Planet',
      planetDesc: 'Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASAs Perseverance rover is currently searching for signs of ancient microbial life on the planets surface.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '227943824',
        planetLengthOfDay: '24.62',
        planetOrbitalPeriod: '1.88',
        planetRadius: '3389.5',
        planetMass: '6.39 × 10²³',
        planetGravity: '3.71',
        planetSurfaceArea: '1.45 × 10⁸',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesJupiter,
      planetName: 'Jupiter',
      planetTitle: 'The Gas Giant',
      planetDesc: 'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '778547669',
        planetLengthOfDay: '9.92',
        planetOrbitalPeriod: '11.86',
        planetRadius: '69911',
        planetMass: '1.898 × 10²⁷',
        planetGravity: '24.79',
        planetSurfaceArea: '6.21 × 10¹⁵',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesSaturn,
      planetName: 'Saturn',
      planetTitle: 'The Ringed Planet',
      planetDesc: 'Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturns largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '1426666422',
        planetLengthOfDay: '10.66',
        planetOrbitalPeriod: '29.46',
        planetRadius: '58232',
        planetMass: '5.683 × 10²⁶',
        planetGravity: '10.44',
        planetSurfaceArea: '4.27 × 10¹⁵',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesUranus,
      planetName: 'Uranus',
      planetTitle: 'The Tilted Planet',
      planetDesc: 'Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranuss atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '2870990000',
        planetLengthOfDay: '17.24',
        planetOrbitalPeriod: '84.01',
        planetRadius: '25362',
        planetMass: '8.681 × 10²⁵',
        planetGravity: '8.69',
        planetSurfaceArea: '8.1 × 10¹⁵',
      ),
    ),

    PlanetsModel(
      planetImg: Assets.assetsImagesNeptune,
      planetName: 'Neptune',
      planetTitle: 'The Distant World',
      planetDesc: 'Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.',
      planetsInfo: PlanetsInfo(
        planetDistancefromSun: '4498252900',
        planetLengthOfDay: '16.11',
        planetOrbitalPeriod: '164.8',
        planetRadius: '24622',
        planetMass: '1.024 × 10²⁶',
        planetGravity: '11.15',
        planetSurfaceArea: '7.65 × 10¹⁵',
      ),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);
    _pageController.addListener(() {
      _currentIndex = _pageController.page!.toInt();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(Assets.assetsImagesFrame2),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BGShadowContainer(height: height),
          ),
          Positioned(
            top: height * 0.03,
            left: 0,
            right: 0,
            child: Text(
              'Explore',
              style: AppStyles.semiBold24,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: height * 0.23,
            left: width * 0.02,
            right: 0,
            child: Text(
              'Which planet\nwould you like to explore?',
              style: AppStyles.semiBold24,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            left: 10,
            child: SizedBox(
              height: height * 0.6,
              child: PageViewBuilder(
                pageController: _pageController,
                list: _list,
                height: height,
                width: width,
                currentIndex: _currentIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


