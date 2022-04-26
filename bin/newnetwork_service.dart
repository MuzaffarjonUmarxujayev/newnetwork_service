import 'package:newnetwork_service/model/comments_model.dart';
import 'package:newnetwork_service/services/http_service.dart';

void main() async {
  String body = await CommentService.GET(
      CommentService.apiComments, CommentService.headers);
  List comments = CommentService.parseCommentsList(body);
  print(comments);
  Comments comment = Comments(
      postId: 7,
      id: 11,
      name: 'Muzaffar',
      email: 'muzaffarumarxujayev',
      body: 'Salom');
  print(comment);
  // String response = await CommentService.POST(
  //     CommentService.apiComment, CommentService.headers, comment.toJson());
  // print(response);
  // String responds1 = await CommentService.GET(CommentService.apiComments + comment.id.toString(), CommentService.headers );
  // print("get:$responds1");
  // String result = await CommentService.PUT(CommentService.apiComments + comment.id.toString(), CommentService.headers, comment.toJson());
  // print(result);
  // String response = await CommentService.PATCH(
  //     CommentService.apiComments + comment.id.toString(),
  //     CommentService.headers,
  //     {'body': "salom"});
  // print(response);
  String responses = await CommentService.DELETE(
      CommentService.apiComment + comment.id.toString(),
      CommentService.headers);
  print("delete:$responses");
}
