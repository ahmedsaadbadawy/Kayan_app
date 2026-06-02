import 'dart:convert';

class Property {
  final String id;
  final DateTime createdAt;
  final String? title;
  final String? price;
  final String? location;
  final String? imageUrl;
  final String? badgeText;
  final String? description;
  final String? videoUrl;
  final String? mapUrl;
  final String? propertyType;
  final int? squareMeters;
  final int? rooms;
  final String? parking;
  final String? contactPhone;

  Property({
    required this.id,
    required this.createdAt,
    this.title,
    this.price,
    this.location,
    this.imageUrl,
    this.badgeText,
    this.description,
    this.videoUrl,
    this.mapUrl,
    this.propertyType,
    this.squareMeters,
    this.rooms,
    this.parking,
    this.contactPhone,
  });

  factory Property.fromMap(Map<String, dynamic> map) {
    return Property(
      id: map['id'] as String,
      createdAt: DateTime.parse(map['created_at'] as String),
      title: map['title'] as String?,
      price: map['price'] as String?,
      location: map['location'] as String?,
      imageUrl: map['image_url'] as String?,
      badgeText: map['badge_text'] as String?,
      description: map['description'] as String?,
      videoUrl: map['video_url'] as String?,
      mapUrl: map['map_url'] as String?,
      propertyType: map['property_type'] as String?,
      squareMeters: map['square_meters'] as int?,
      rooms: map['rooms'] as int?,
      parking: map['parking'] as String?,
      contactPhone: map['contact_phone'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'title': title,
      'price': price,
      'location': location,
      'image_url': imageUrl,
      'badge_text': badgeText,
      'description': description,
      'video_url': videoUrl,
      'map_url': mapUrl,
      'property_type': propertyType,
      'square_meters': squareMeters,
      'rooms': rooms,
      'parking': parking,
      'contact_phone': contactPhone,
    };
  }

  String toJson() => json.encode(toMap());
  factory Property.fromJson(String source) =>
      Property.fromMap(json.decode(source) as Map<String, dynamic>);
}
