class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Application Developer',
    organization: 'SkillIQ',
    date: 'DEC 2022',
    skills: 'Flutter . Dart',
    credential:  'https://drive.google.com/file/d/1xGmqygDKDEkcTgZq5gj34d6J_z96Xkdn/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Android Application Developer',
    organization: 'Software Education',
    date: 'JUN 2022',
    skills: 'Android Development',
    credential:  'https://drive.google.com/file/d/1xGOiDcOh5BIbAe-vyUtHhU-XiaeIXb4D/view?usp=sharing',
  ),
  CertificateModel(
    name: 'TECHATHON, CYBER SHADEZ',
    organization: 'GLS University',
    date: '2021',
    skills: '',
    credential:  'https://drive.google.com/file/d/1uGhI-3zYLuMT5eVlqei8suETHCe2BFfQ/view?usp=sharing',
  ),
  // CertificateModel(
  //   name: 'Flutter REST Movie App',
  //   organization: 'Udemy',
  //   date: 'AUG 2023',
  //   skills: 'Flutter . Rest API\'s . Cloud',
  //   credential:  'https://www.udemy.com/certificate/UC-22efc7ca-3df5-4f26-8025-4a1bd2672f19/',
  // ),
  // CertificateModel(
  //   name: 'Modularizing and Organizing Flutter Code',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Clean Architecture',
  //   credential:  'https://www.linkedin.com/learning/certificates/686276fa42629d4f1291da79ea46bfde0222954b60297a2e728c770768f23407',
  // ),
  // CertificateModel(
  //   name: 'Powering Your App with Live Web Data',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . API\'s',
  //   credential:  'https://www.linkedin.com/learning/certificates/643f05463ae529f24bd9ea66a6ead9a20469bdb875a9ddda048c698eda3ee7c1',
  // ),
  // CertificateModel(
  //   name: 'Firebase Cloud Firestore',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . FireStore',
  //   credential:  'https://www.linkedin.com/learning/certificates/8f8be25531d2bcdbab1972482150277f9a239a13ba4d314c0574638bf28d07d2',
  // ),
  // CertificateModel(
  //   name: 'Android App Security',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Pentesting . Android App',
  //   credential:  'https://www.linkedin.com/learning/certificates/1c6581b35d06edfbd6275d09e84b068e813880bf7d217b703716962d7aca3518',
  // ),
  // CertificateModel(
  //   name: 'Foundations of Cybersecurity',
  //   organization: 'Grow with Google on Coursera',
  //   date: 'JUL 2023',
  //   skills: 'Ethical Hacking . Linux . Cyber Security ',
  //   credential:  'https://coursera.org/share/67e5cb0dd7c478f1d7ec81079c3a40b8',
  // ),
  // CertificateModel(
  //   name: 'HTML, CSS, and Javascript for Web Developers',
  //   organization: 'JUL Coursera',
  //   date: 'JUL 2023',
  //   skills: 'HTML . CSS . JS . Web Development',
  //   credential:  'https://coursera.org/share/67e5cb0dd7c478f1d7ec81079c3a40b8',
  // ),
  // CertificateModel(
  //   name: 'Network Defense Essentials (NDE)',
  //   organization: 'EC-Council',
  //   date: 'JUL 2023',
  //   skills: 'Cyber Security . Networking ',
  //   credential:  'https://codered.eccouncil.org/certificate/43a2d2a7-40ed-4230-9e65-a9aa0935e651?logged=false',
  // ),
];
