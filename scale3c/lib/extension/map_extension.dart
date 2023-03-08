extension MapExtension on Map<String, dynamic> {
  Map<String, dynamic> encodeQueryParameters() {
    final Map<String, dynamic> encodedParams = <String, dynamic>{};
    forEach((String key, dynamic value) {
      encodedParams.addAll(<String, dynamic>{
        Uri.encodeFull(key): Uri.encodeFull(
          value.toString(),
        )
      });
    });
    return encodedParams;
  }
}
