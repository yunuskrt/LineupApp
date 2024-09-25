class PositionCoordinates {
  double topPercentage;
  double leftPercentage;

  PositionCoordinates({
    required this.topPercentage,
    required this.leftPercentage,
  });
}

Map<String, PositionCoordinates> positions = {
  'GK': PositionCoordinates(topPercentage: 0.59, leftPercentage: 0.40),
  'LCB': PositionCoordinates(topPercentage: 0.51, leftPercentage: 0.20),
  'RCB': PositionCoordinates(topPercentage: 0.51, leftPercentage: 0.60),
  'CB': PositionCoordinates(topPercentage: 0.51, leftPercentage: 0.40),
};

PositionCoordinates getCoordinates(String position) {
  return positions[position]!;
}

class Positions {
  Map<String, String> positions = {
    "top:80%;left:40%": "GK",
    "top:63%;left:52.5%": "RCB",
    "top:63%;left:40%": "CB",
    "top:63%;left:28%": "LCB",
    "top:62%;left:40%": "CB",
    "top:61%;left:73%": "RB",
    "top:61%;left:65%": "RQCB",
    "top:61%;left:56.5%": "RCB",
    "top:61%;left:23.5%": "LCB",
    "top:61%;left:15%": "LQCB",
    "top:61%;left:7.5%": "LB",
    "top:59%;left:73%": "RAB",
    "top:59%;left:7%": "LAB",
    "top:43%;left:52%": "RCDM",
    "top:43%;left:40%": "CDM",
    "top:43%;left:30%": "LCDM",
    "top:43%;left:28%": "LCDM",
    "top:42%;left:65%": "RQCDM",
    "top:42%;left:40%": "CDM",
    "top:42%;left:15%": "LQCDM",
    "top:39%;left:40%": "CDMA",
    "top:38%;left:55%": "RCDMA",
    "top:38%;left:25%": "LCDMA",
    "top:36%;left:40%": "ACM",
    "top:35%;left:60%": "RQACM",
    "top:35%;left:55%": "RACM",
    "top:35%;left:53%": "RACM",
    "top:35%;left:50%": "RACM",
    "top:35%;left:30%": "LACM",
    "top:35%;left:27%": "LACM",
    "top:35%;left:25%": "LACM",
    "top:35%;left:20%": "LQACM",
    "top:34%;left:65%": "RQACM",
    "top:34%;left:15%": "LQACM",
    "top:33%;left:55%": "RACM",
    "top:33%;left:40%": "ACM",
    "top:33%;left:25%": "LACM",
    "top:32%;left:68%": "RQACM",
    "top:32%;left:12%": "LQACM",
    "top:30%;left:40%": "CM",
    "top:29%;left:54%": "RCM",
    "top:29%;left:26%": "LCM",
    "top:28%;left:53%": "RCM",
    "top:28%;left:27%": "LCM",
    "top:27%;left:70%": "RQCM",
    "top:27%;left:10%": "LQCM",
    "top:25%;left:68%": "RQCMA",
    "top:25%;left:12%": "LQCMA",
    "top:23%;left:68%": "RQCMA",
    "top:23%;left:50%": "RCMA",
    "top:23%;left:40%": "CAM",
    "top:23%;left:30%": "LCMA",
    "top:23%;left:12%": "LQCMA",
    "top:22%;left:40%": "CAM",
    "top:20%;left:50%": "RCAM",
    "top:20%;left:30%": "LCAM",
    "top:18%;left:65%": "RAM",
    "top:18%;left:15%": "LAM",
    "top:10%;left:65%": "RW",
    "top:10%;left:15%": "LW",
    "top:3%;left:40%": "ST",
    "top:2%;left:50%": "RST",
    "top:2%;left:30%": "LST"
  };
}
