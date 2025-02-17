// import 'package:flutter/material.dart';

// class ImageDetailScreen extends StatelessWidget {
//   final dynamic image;

//   const ImageDetailScreen({Key? key, required this.image}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('By ${image['user']}'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: InteractiveViewer(
//               minScale: 0.5,
//               maxScale: 3.0,
//               child: Image.network(
//                 image['largeImageURL'],
//                 fit: BoxFit.contain,
//                 loadingBuilder: (context, child, loadingProgress) {
//                   if (loadingProgress == null) return child;
//                   return Center(
//                     child: CircularProgressIndicator(
//                       value: loadingProgress.expectedTotalBytes != null
//                           ? loadingProgress.cumulativeBytesLoaded /
//                               loadingProgress.expectedTotalBytes!
//                           : null,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: NetworkImage(image['userImageURL']),
//                       radius: 20,
//                     ),
//                     const SizedBox(width: 8.0),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           image['user'],
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           'Tags: ${image['tags']}',
//                           style: const TextStyle(
//                             color: Colors.grey,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     _buildStat(Icons.favorite, '${image['likes']}', 'Likes'),
//                     _buildStat(Icons.remove_red_eye, '${image['views']}', 'Views'),
//                     _buildStat(Icons.download, '${image['downloads']}', 'Downloads'),
//                     _buildStat(Icons.comment, '${image['comments']}', 'Comments'),
//                   ],
//                 ),
//                 const SizedBox(height: 16.0),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: ElevatedButton.icon(
//                         onPressed: () {
//                           // Here you would implement downloading the image
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text('Download started...')),
//                           );
//                         },
//                         icon: const Icon(Icons.download),
//                         label: const Text('Download'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             color: Colors.grey[200],
//             child: Text(
//               'Image ID: ${image['id']} • Source: Pixabay',
//               style: const TextStyle(color: Colors.black54, fontSize: 12),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStat(IconData icon, String value, String label) {
//     return Column(
//       children: [
//         Icon(icon, color: Colors.blue),
//         const SizedBox(height: 4),
//         Text(
//           value,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         Text(
//           label,
//           style: const TextStyle(fontSize: 12, color: Colors.grey),
//         ),
//       ],
//     );
//   }
// }