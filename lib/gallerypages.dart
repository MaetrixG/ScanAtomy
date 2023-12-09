import 'package:flutter/material.dart';
import 'package:scanatomy/drawer.dart';
import 'package:scanatomy/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'ScanAtomy',
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
      useMaterial3: true,
    ),
    home: CameraEx(),
  ));
}

class Image2 extends StatefulWidget {
  const Image2({Key? key}) : super(key: key);

  @override
  _Image2State createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToPosition(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: 6080,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFEC407A),
                Color(0xFFEF9A9A),
                Color(0xFFE0F2F1),
                Color(0xFF80CBC4),
                Color(0xFF26C6DA),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 25),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HiddenDrawer()),
                    );
                  },
                  child: Image.asset(
                    'images/back.png',
                    height: 40,
                    width: 80,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        scrollToPosition(0); // Scroll to the top
                      },
                      child: Text('Face'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        scrollToPosition(2150); // Scroll to the 'Eyes' section
                      },
                      child: Text('Eyes'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        scrollToPosition(3500); // Scroll to the 'Nose' section
                      },
                      child: Text('Nose'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        scrollToPosition(4900); // Scroll to the 'Lips' section
                      },
                      child: Text('Lips'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 800,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 23,
                ),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Face',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/face.jpg',
                      height: 300,
                      width: 500,
                    ),
                    SizedBox(height: 30),
                    Text('Galea aponeurotica',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Tough fibrous sheet of connective tissue that extends over the cranium, forming the middle (third) layer of the scalp.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Frontalis',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Paired muscle extending from the supraorbital region to the level of the coronal suture. Flat and quadrilateral in shape, it is one of the facial muscles.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Corrugator',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Two small, triangular facial muscles, which contribute to movement of the eyebrows, including frowning. They are located deep to the frontal part of occipitofrontalis and orbicularis oculi muscles, with which they blend.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Temporals',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the muscles of mastication. It is responsible for both elevation and retraction of the mandible.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Depressor Supercilii',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Facial muscle found medial to the orbits and acts as a depressor of the eyebrow.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Levator labii superioris alaeque nasalis',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Traditionally thought of as a muscle of the mouth, but is also a crucial muscle of the nose, a subset of the facial muscles.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Orbicularis oculi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A muscle of facial expression, a ring-like muscle functioning in a number of eyelid movements.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Procerus',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the muscles of the nose and hence a facial muscle.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Nasalis',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the muscles of the nose, a subset of the facial muscles, consisting of two main parts: ompressor naris, and dilator naris.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Levator superioris',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the elevators of the upper lip, a subset of the facial muscles.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Zygomaticus minor',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A member of the buccolabial muscle group of the facial muscles. It produces the facial expressions of smugness, smiling and expressing contempt or disdain.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Zygomaticus major',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' It joins with the muscle fibers of levator anguli oris, orbicularis oris and the more deeply placed muscular bands to move the side of the mouth upwards and sideways during facial movements such as laughing.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Depressor septi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Paired muscles of the nose, a subset of the facial muscles, which depress the nose.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Orbicularis oris',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A complex, multi-layered muscle which attaches through a thin, superficial musculoaponeurotic system to the dermis of the upper lip and lower lip and serves as an attachment site for many other facial muscles around the oral region.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Masseter',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the muscles of mastication. It is rectangular in shape and consists of three layers of inferoposteriorly oriented fibers that blend anteriorly.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Risorius',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the muscles of the mouth, a subset of the facial muscles. It is often absent and has been described as an accessory muscle.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Depressor anguli oris',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' One of the facial muscles. It depresses the angle of the mouth, e.g. frowning.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Mentalis',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Paired muscles, one on each side of the mouth, important as elevators of the chin and lower lip; the muscles are one of the facial muscles. ',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Platysma',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A broad superficial fascial sheet of thin muscle covering the superior anterior chest, anterior and anterolateral neck and anterolateral mandibular region.',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 800,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 23,
                ),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Eyes', style: TextStyle(fontSize: 24)),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/eye.jpg',
                      height: 400,
                      width: 400,
                    ),
                    SizedBox(height: 30),
                    Text('Eyelid',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A thin, movable skin fold that covers and protects the eye, capable of closing and opening to regulate light exposure and maintain eye moisture.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Pupil',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The adjustable, typically circular opening in the center of the iris of the eye, through which light enters and is regulated to control the amount of light reaching the retina.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Sclera',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The tough, white outer layer of the eyeball that, along with the cornea, provides structural support and protection to the inner components of the eye.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Iris',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The colored, muscular ring surrounding the pupil of the eye, regulating the amount of light entering the eye by adjusting the size of the pupil.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Ciliary body',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The transparent, front part of the eye that covers the iris, pupil, and anterior chamber, playing a crucial role in focusing light onto the retina for vision.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Lens',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A transparent, flexible structure in the eye that helps focus light onto the retina, allowing for clear vision, and it adjusts its shape to facilitate accommodation for different distances.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Retina',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The light-sensitive layer at the back of the eye containing photoreceptor cells, like rods and cones, which convert light signals into neural impulses for transmission to the brain via the optic nerve.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Choroid',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A vascular layer beneath the sclera that provides blood supply to the retina and helps regulate light entering the eye.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Optic Nerve',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A bundle of nerve fibers that transmits visual information from the retina to the brain, enabling the perception of sight.',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 800,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 23,
                ),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Nose', style: TextStyle(fontSize: 24)),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/nose.jpg',
                      height: 400,
                      width: 400,
                    ),
                    SizedBox(height: 30),
                    Text('Frontal Sinus',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' An air-filled cavity within the frontal bone of the skull, contributing to the nasal air space and affecting the resonance of the voice.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Nasal Bone',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A paired set of facial bones forming the bridge of the nose, providing structural support and contributing to the overall facial anatomy.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Ethmoid Sinus',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Consists of air cells within the ethmoid bone, located between the eyes, and plays a role in humidifying and filtering air as well as contributing to the resonance of the voice.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Maxillary Sinus',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The largest of the paranasal sinuses, located in the maxillary bone, and functions in reducing the weight of the skull, insulating dental roots, and humidifying inhaled air.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Cartilage',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A flexible connective tissue found in the nose, providing structural support and maintaining the shape of the nasal passages.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Fibrofatty Tissue',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' In the nasal region provides insulation, support, and cushioning, contributing to the overall structure and function of the nose.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Nostril',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The external opening of the nasal cavity, allowing air to enter and exit the respiratory system.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Sphenoid Sinus',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A cavity within the sphenoid bone, aiding in reducing skull weight, resonating sound, and participating in air filtration.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Nasal Cavity',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' A large, air-filled space behind the nose that filters, warms, and moistens inhaled air, playing a crucial role in the respiratory process.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Conchae',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Bony projections in the nasal cavity that increase the surface area, helping to filter, humidify, and warm inhaled air.',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 800,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 23,
                ),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Lips', style: TextStyle(fontSize: 24)),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/lips.jpg',
                      height: 300,
                      width: 400,
                    ),
                    SizedBox(height: 30),
                    Text('Philtrum',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The vertical groove or depression in the midline of the upper lip, extending from the nasal septum to the upper lip, and is a feature formed during fetal development.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text("Cupid's Bow",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        " The distinct double curve or arch shape of the upper lip, resembling the bow of Cupid, and is a characteristic feature of the lip's appearance.",
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Vermilion Border',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The demarcation between the red-colored part of the lips (vermilion) and the adjacent normal skin, contributing to the visual definition and contour of the lips.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Tubercle',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' Specifically the tubercle of the upper lip, is a small, rounded, prominent projection in the center of the upper lip, enhancing the natural contour and aesthetics of the lips.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Vermilion',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The red-colored portion of the lips, representing the exposed, vascularized mucous membrane, and contributing to the color contrast of the lips.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Lower Vermilion Border',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The line separating the red-colored part of the lower lip from the surrounding skin, contributing to the distinct appearance of the lower lip.',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text('Labial Commissure',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                        ' The corners or junctions of the lips, where the upper and lower lips meet at both sides of the mouth.',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 23,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    scrollToPosition(0); // Scroll to the 'Nose' section
                  },
                  child: Image.asset(
                    'images/up.png',
                    height: 20,
                    width: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Image5 extends StatefulWidget {
  const Image5({Key? key}) : super(key: key);

  @override
  _Image5State createState() => _Image5State();
}

class _Image5State extends State<Image5> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToPosition(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: 2400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFEC407A),
                Color(0xFFEF9A9A),
                Color(0xFFE0F2F1),
                Color(0xFF80CBC4),
                Color(0xFF26C6DA),
              ],
            ),
          ),
          child: Column(children: [
            SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HiddenDrawer()),
                  );
                },
                child: Image.asset(
                  'images/back.png',
                  height: 40,
                  width: 80,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 800,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 23,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text('Foot',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 10),
                      Image.asset(
                        'images/feet.jpg',
                        height: 300,
                        width: 500,
                      ),
                      SizedBox(height: 30),
                      Text('Plantar Metatarsal Arteries',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' Four in number, and run forward between the metatarsal bones and in contact with the Interossei. Each divides into a pair of plantar digital arteries which supply the adjacent sides of the toes.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Lateral plantar nerve',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' An important motor nerve in the foot as it innervates all the intrinsic muscles in the sole, except for the muscles supplied by the medial plantar nerve.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Sesamoid',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' Focal areas of ossification within tendons as they pass over joints. Their function is purported to be to alter the direction of the tendon and modify pressure, thereby reducing friction.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Intrinsic muscle',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' They have two main actions. The first is to stabilise the foot and support the arches to maintain foot structure. The second is to aid the actions of the muscles of the lower leg to produce fine movements of the toes.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Fat pad',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' A thick collection of connective tissue that runs underneath the ball of the foot and the heel.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Medial calcaneal nerve',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' A terminal branch of the tibial nerve along with the medial and lateral plantar nerves in the tarsal tunnel at the level of the medial malleolus.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Plantar fascia',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' A dense collection of collagen fibers on the sole (plantar surface) of the foot. These fibers are mostly longitudinal but also transverse.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Lateral plantar nerve',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The other terminal branch of the tibial nerve. It arises from below the flexor retinaculum and passes anterior, deep to the abductor hallucis and flexor digitorum brevis.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Tibia',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The largest bone of the leg and contributes to the knee and ankle joints. It is medial to and much stronger than the fibula, exceeded in length only by the femur.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Anterior tibial tendon',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' Travels across the anterior ankle and dorsum of the foot to insert vertically on the medial cuneiform and the base of the first metatarsal. It is the most medial tendon of the ankle and foot.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Achilles tendon',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' A thick tendon located in the back of the leg. It connects the gastrocnemius and soleus muscles in the calf to an insertion point at the calcaneus.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Fibula',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The smaller of the two bones of the leg. It is not directly involved in the transmission of weight but is important for ankle stability and acts as a source for numerous muscle attachments.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Extensor retinaculum',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The broad ligamentous sheet located at the dorsal aspect of the foot and consists of the superior and inferior extensor retinacula.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Calcaneus',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The largest tarsal bone and the major bone in the hindfoot. It articulates with the talus superiorly and the cuboid anteriorly and shares a joint space with the talonavicular joint, appropriately called the talocalcaneonavicular joint.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Extensor tendons',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' Connects the bones of your toes to the muscles on the front part of your leg that cross over the ankle joint as tendons.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Peroneus longus',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' Muscles which begin high on the outer aspect of the lower leg (near the knee) and become tendons as they approach the ankle.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Sural nerve',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' A sensory nerve of the lower limb formed by the union of sural branch of the tibial nerve and the communicating sural branch of the common fibular nerve supplying sensation to the lower lateral aspect of the calf and foot.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Peoneus Brevis Tendon',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' Located directly behind the fibula bone and in general is more prone to injury. It serves to evert the foot, meaning to move it outwardly away from the rest of the leg.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('5th metatarsal',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The long bone on the outside of the foot that connects to the small toe.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Phalanges',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          ' The tubular bones of the toes. The second to fifth toes each contain a proximal, middle and distal phalanx whereas the great toe (hallux) only contains a proximal and distal phalanx.',
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 23,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      scrollToPosition(0); // Scroll to the 'Nose' section
                    },
                    child: Image.asset(
                      'images/up.png',
                      height: 20,
                      width: 80,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class CameraEx extends StatefulWidget {
  const CameraEx({Key? key}) : super(key: key);

  @override
  _CameraExState createState() => _CameraExState();
}

class _CameraExState extends State<CameraEx> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToPosition(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: 1650,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFEC407A),
                Color(0xFFEF9A9A),
                Color(0xFFE0F2F1),
                Color(0xFF80CBC4),
                Color(0xFF26C6DA),
              ],
            ),
          ),
          child: Column(children: [
            SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HiddenDrawer()),
                  );
                },
                child: Image.asset(
                  'images/back.png',
                  height: 40,
                  width: 80,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 800,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 23,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text('Hand',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 10),
                      Image.asset(
                        'images/hand.jpg',
                        height: 300,
                        width: 500,
                      ),
                      SizedBox(height: 30),
                      Text('Ligament',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'Connective tissue structures that arch over joints connecting one bone to another bone with primary functions as stabilizers of articulations.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Bone',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'A single section of a skeleton, made of very hard tissue.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Blood vessel',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'Channels that carry blood throughout your body. They form a closed loop, like a circuit, that begins and ends at your heart.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Muscle',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'The skeletal muscles responsible for the movement of the hand and fingers.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Phalange',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'The tubular bones of the fingers and thumb. The second to fifth fingers each contain a proximal, middle and distal phalanx whereas the thumb only contains a proximal and distal phalanx.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Metacarpal',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'Five long bones of the hand between the carpal bones and the proximal phalanges of the hand that make up most of the palm.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Carpals',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'Also known as the carpus (plural: carpi), are the eight bones of the wrist that form the articulation of the forearm with the hand.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Nerve',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'Provides motor (movement) functions to the forearm, wrist and hand. It also sends touch, pain and temperature sensations from the lower arm and hand to the brain.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Sheath',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'A covering structure of connective tissue, usually of an elongated part, such as the membrane covering a muscle.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Radius',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'One of the two long bones present in the forearm, located laterally in the supinated anatomical position. It has a smaller proximal end and enlarges to a larger distal end.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Ulna',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'One of the two long bones of the forearm, located medially in the supinated anatomic position. It has a larger proximal end and tapers to a smaller distal end.',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Text('Tendon',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                          'Flexible and inelastic bands of strong fibrous connective tissue that transmit force from muscle to bone and form an integral part of the musculoskeletal system.',
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 23,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      scrollToPosition(0); // Scroll to the 'Nose' section
                    },
                    child: Image.asset(
                      'images/up.png',
                      height: 20,
                      width: 80,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
