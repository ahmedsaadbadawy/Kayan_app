
class FinishesModel {
  final String id;
  final DateTime createdAt;
  final String? title;
  final String? imageUrl;
  final String? videoUrl;
  final String? about;
  final String propertyType;
  final int? squareMeters;
  final int? rooms;
  final String? parking;

  FinishesModel({
    required this.id,
    required this.createdAt,
    this.title,
    this.imageUrl,
    this.videoUrl,
    this.about,
    required this.propertyType,
    this.squareMeters,
    this.rooms,
    this.parking,
  });

  FinishesModel copyWith({
    String? id,
    DateTime? createdAt,
    String? title,
    String? imageUrl,
    String? videoUrl,
    String? about,
    String? propertyType,
    int? squareMeters,
    int? rooms,
    String? parking,
  }) {
    return FinishesModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      videoUrl: videoUrl ?? this.videoUrl,
      about: about ?? this.about,
      propertyType: propertyType ?? this.propertyType,
      squareMeters: squareMeters ?? this.squareMeters,
      rooms: rooms ?? this.rooms,
      parking: parking ?? this.parking,
    );
  }

  factory FinishesModel.fromJson(Map<String, dynamic> map) {
    return FinishesModel(
      id: map['id'] as String,
      createdAt: DateTime.parse(map['created_at'] as String),
      title: map['title'] as String?,
      imageUrl: map['image_url'] as String?,
      videoUrl: map['video_url'] as String?,
      about: map['about'] as String?,
      propertyType: map['property_type'] as String? ?? 'Modern Luxury',
      squareMeters: map['square_meters'] as int?,
      rooms: map['rooms'] as int?,
      parking: map['parking'] as String?, 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'title': title,
      'image_url': imageUrl,
      'video_url': videoUrl,
      'about': about,
      'property_type': propertyType,
      'square_meters': squareMeters,
      'rooms': rooms,
      'parking': parking,
    };
  }
}