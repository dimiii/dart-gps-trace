part of gps_trace;

class TraceRawData{
  List<TracePoint> points = new List<TracePoint>();
}

class TracePoint{

  int    index = 0;
  double latitude = 0.0;
  double longitude= 0.0;
  double elevetion= 0.0; // in meters
  double distance = 0.0; // in meters
  
  TracePoint();
  
  TracePoint.basic(this.latitude,this.longitude);
  
  String toString(){
    return latitude.toString() +"/"+longitude.toString() + " e:"+elevetion.toString()+"m d:"+ distance.toString()+"km";
  }
  
}

class DistanceInclinationElevetion{
  
  num _inclination; // in %
  num _distance; // in meters
  num _elevetion; 
  
  DistanceInclinationElevetion(this._inclination,this._distance,this._elevetion);
  
  void incDistance(currentDistance) {
    _distance+= currentDistance ;
  }
  
  num get inclination => _inclination.round() ;
  num get distance => _distance.round() ;
  num get elevetion => _elevetion.round() ;
 
  String toString(){
    return inclination.toString() +"% on "+distance.toString() + "m";
  }
 
  
}